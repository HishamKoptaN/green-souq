import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/present/view/details/widgets/rating/shop_overall_stars.dart';
import 'package:green/features/shops/present/view/details/widgets/rating/shop_rating_header.dart';

import '../../../../../domain/entities/shop_entity.dart';

class ShopRatingCard extends StatelessWidget {
  const ShopRatingCard({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          borderRadius: .circular(16.r),
          border: Border.all(
            color: context.colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.shadow.withValues(alpha: 0.04),
              blurRadius: 12.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16.h,
          children: [
            const ShopRatingHeader(),
            ShopOverallStars(shop: shop),
          ],
        ),
      );
    }
  }
}
