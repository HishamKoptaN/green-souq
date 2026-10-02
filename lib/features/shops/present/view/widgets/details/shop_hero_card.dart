import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_hero_header.dart';

class ShopHeroCard extends StatelessWidget {
  const ShopHeroCard({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
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
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 6.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      context.colorScheme.primary,
                      context.colorScheme.tertiary,
                      context.colorScheme.primaryContainer,
                    ],
                  ),
                ),
              ),
            ),
            ShopHeroHeader(shop: shop),
          ],
        ),
      );
    }
  }
}
