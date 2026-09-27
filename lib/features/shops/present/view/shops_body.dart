import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/feedback/custom_empty_widget.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/shops/data/datasources/shops_api.dart';
import 'package:green/features/shops/data/mappers/shop_mapper.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:green/features/ads/ad_banner_widget.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import '../bloc/shops_bloc.dart';
import 'widgets/card/shop_card_widget.dart';
import 'widgets/header/shops_header_widget.dart';
import '../../../../core/widgets/forms/custom_search_widget.dart';
import 'widgets/header/shops_stats_header_widget.dart';
import 'widgets/map/shops_map_widget.dart';

class ShopsBody extends StatefulWidget {
  const ShopsBody({super.key});
  static const String routeName = 'shops';

  @override
  State<ShopsBody> createState() {
    return _ShopsBodyState();
  }
}

class AdBannerPlaceholder {
  const AdBannerPlaceholder();
}

class _ShopsBodyState extends State<ShopsBody> {
  bool _isMapVisible = false;
  int _totalShopsCount = 0;
  late final PagingController<int, Object> _pagingController = PagingController(
    fetchPage: (pageKey) async {
      if (pageKey == 1) {
        _totalShopsCount = 0;
      }
      final res = await getIt<ShopsApi>().getShops(page: pageKey);
      final shops =
          res.shops?.map((e) {
            return e.toEntity();
          }).toList() ??
          [];

      List<Object> pageItems = [];
      for (var shop in shops) {
        _totalShopsCount++;
        pageItems.add(shop);
        if (_totalShopsCount % 2 == 0) {
          pageItems.add(const AdBannerPlaceholder());
        }
      }
      return pageItems;
    },
    getNextPageKey: (state) {
      if (state.lastPageIsEmpty) return null;
      return (state.keys?.last ?? 0) + 1;
    },
  );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopsBloc, ShopsState>(
      bloc: getIt<ShopsBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (st) {
            return Column(
              spacing: 4.h,
              children: [
                ShopsHeaderWidget(
                  shop: ShopEntity(),
                  onToggle: (isMap) {
                    setState(() {
                      _isMapVisible = isMap;
                    });
                  },
                ),
                if (_isMapVisible)
                  ShopsMapWidget(
                    onShowToast: (msg) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(msg)));
                    },
                  ),
                CustomSearchWidget(
                  initialValue: '',
                  hintText: 'ابحث عن محل أدوية زراعية أو مزرعة...',
                  onChanged: (v) {
                    getIt<ShopsBloc>().add(.getShops(query: v));
                    _pagingController.refresh();
                  },
                ),
                ShopsStatsHeaderWidget(shopsResEntity: st.shopsRes),
                Center(
                  child: PagedListView<int, Object>(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    state: _pagingController.value,
                    fetchNextPage: _pagingController.fetchNextPage,
                    builderDelegate: PagedChildBuilderDelegate<Object>(
                      itemBuilder: (context, item, index) {
                        if (item is AdBannerPlaceholder) {
                          return const AdBannerWidget();
                        }
                        if (item is ShopEntity) {
                          return ShopCardWidget(shop: item);
                        }
                        return const SizedBox.shrink();
                      },
                      firstPageErrorIndicatorBuilder: (context) {
                        return const Center(child: Text('حدث خطأ'));
                      },
                      noItemsFoundIndicatorBuilder: (context) {
                        return CustomEmptyWidget(
                          icon: Icon(
                            Icons.store,
                            size: 48.r,
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                          title: 'لا توجد متاجر',
                          subtitle: 'لا توجد متاجر',
                        );
                      },
                      firstPageProgressIndicatorBuilder: (context) {
                        return SizedBox(
                          height: 200.h,
                          child: CustomCircularProgress(),
                        );
                      },
                      newPageProgressIndicatorBuilder: (context) {
                        return CustomCircularProgress();
                      },
                    ),
                  ),
                ),
              ],
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
