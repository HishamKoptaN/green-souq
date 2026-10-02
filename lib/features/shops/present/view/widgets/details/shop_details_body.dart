import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_hero_card.dart';
import 'package:green/features/shops/present/view/widgets/details/rating/shop_rating_card.dart';
import 'package:green/features/shops/present/view/widgets/details/rating/shop_reputation_card.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class ShopDetailsBody extends StatelessWidget {
  const ShopDetailsBody({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        spacing: 8.h,
        children: [
          ShopHeroCard(shop: shop),
          ShopReputationCard(shop: shop),
          ShopRatingCard(shop: shop),
          Row(
            mainAxisAlignment: .center,
            spacing: 2.w,
            children: [
              Icon(
                Icons.verified,
                size: 16.r,
                color: context.colorScheme.primary,
              ),
              Text(
                'يظهر التقييم بهويتك المهنية المعتمدة لتعزيز أمان وموثوقية السوق',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
