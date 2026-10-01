import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../../../../custom_pagination_widget.dart';
import '../../../ads/ad_banner_widget.dart';
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

class _ShopsBodyState extends State<ShopsBody> {
  bool _isMapVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaginationWidget(
      bottomReachedCallback: () {
        getIt<ShopsBloc>().state.mapOrNull(
          loaded: (st) {
            if (st.shopsRes.meta.hasNextPage) {
              getIt<ShopsBloc>().add(const .fetchNext());
            }
          },
        );
      },
      slivers: [
        BlocBuilder<ShopsBloc, ShopsState>(
          bloc: getIt<ShopsBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              loaded: (st) {
                return SliverToBoxAdapter(
                  child: Column(
                    spacing: 4.h,
                    children: [
                      ShopsHeaderWidget(
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
                          getIt<ShopsBloc>().add(.search(query: v));
                        },
                      ),
                      ShopsStatsHeaderWidget(shopsResEntity: st.shopsRes),
                      st.isSearching
                          ? CustomCircularProgress()
                          : st.shopsRes.shops.isEmpty
                          ? CustomEmptyWidget(
                              icon: Icon(
                                Icons.store,
                                size: 48.r,
                                color: context.colorScheme.onSurfaceVariant,
                              ),
                              title: 'لا توجد متاجر',
                              subtitle: 'لا توجد متاجر',
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: st.shopsRes.meta.hasNextPage
                                  ? st.shopsRes.shops.length + 1
                                  : st.shopsRes.shops.length,
                              separatorBuilder: (context, index) {
                                return Gap(4.h);
                              },
                              itemBuilder: (context, index) {
                                if (index == st.shopsRes.shops.length) {
                                  return Skeletonizer(
                                    enabled: true,
                                    child: ShopCardWidget(shop: ShopEntity()),
                                  );
                                }
                                if ((index + 1) % 5 == 0) {
                                  return const AdBannerWidget();
                                }
                                return ShopCardWidget(
                                  shop: st.shopsRes.shops[index],
                                );
                              },
                            ),
                    ],
                  ),
                );
              },
              orElse: () {
                return const SliverFillRemaining(
                  hasScrollBody: false,
                  child: CustomCircularProgress(),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
