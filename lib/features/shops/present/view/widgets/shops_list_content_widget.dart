import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../../../../../core/widgets/forms/custom_search_widget.dart';
import '../../../../ads/ad_banner_widget.dart';
import '../../../domain/entities/shop_entity.dart';
import '../../../domain/entities/shops_res_entity.dart';
import '../../bloc/shops_bloc.dart';
import 'card/shop_card_widget.dart';
import 'header/shops_category_pills_widget.dart';
import 'header/shops_header_widget.dart';
import 'header/shops_stats_header_widget.dart';
import 'map/shops_map_widget.dart';

class ShopsListContentWidget extends StatefulWidget {
  const ShopsListContentWidget({super.key, required this.shopsRes});
  final ShopsResEntity shopsRes;

  @override
  State<ShopsListContentWidget> createState() {
    return _ShopsListContentWidgetState();
  }
}

class _ShopsListContentWidgetState extends State<ShopsListContentWidget> {
  bool _isMapVisible = false;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        spacing: 12.h,
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
            hintText: 'ابحث عن محل أدوية زراعية، مخصبات أو مزرعة...',
            onChanged: (v) {
              getIt<ShopsBloc>().add(.search(query: v));
            },
          ),
          const ShopsCategoryPillsWidget(),
          ShopsStatsHeaderWidget(shopsResEntity: widget.shopsRes),
          widget.shopsRes.shops.isEmpty
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
                  itemCount: widget.shopsRes.meta.hasNextPage
                      ? widget.shopsRes.shops.length + 1
                      : widget.shopsRes.shops.length,
                  separatorBuilder: (context, index) {
                    return Gap(12.h);
                  },
                  itemBuilder: (context, index) {
                    if (index == widget.shopsRes.shops.length) {
                      return Skeletonizer(
                        enabled: true,
                        child: ShopCardWidget(shop: ShopEntity()),
                      );
                    }
                    if ((index + 1) % 5 == 0) {
                      return const AdBannerWidget();
                    }
                    return ShopCardWidget(shop: widget.shopsRes.shops[index]);
                  },
                ),
        ],
      );
    }
  }
}
