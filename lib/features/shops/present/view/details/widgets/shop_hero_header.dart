import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:green/features/shops/present/view/details/widgets/shop_hero_info.dart';
import 'package:green/features/shops/present/view/details/widgets/shop_quick_actions.dart';

class ShopHeroHeader extends StatelessWidget {
  const ShopHeroHeader({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Padding(
        padding: .all(16.r),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 4.h),
            ShopHeroInfo(shop: shop),
            SizedBox(height: 14.h),
            ShopQuickActions(shop: shop),
          ],
        ),
      );
    }
  }
}
