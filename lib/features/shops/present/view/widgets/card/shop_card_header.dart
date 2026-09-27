import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class ShopCardHeader extends StatelessWidget {
  const ShopCardHeader({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        spacing: 4.w,
        children: [
          Container(
            padding: .all(6.r),
            decoration: BoxDecoration(
              color: context.colorScheme.primaryContainer,
              borderRadius: .circular(12.r),
            ),
            child: Icon(
              Icons.storefront,
              color: context.colorScheme.primary,
              size: 24.r,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  shop.name,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: .bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
                Row(
                  spacing: 1.w,
                  children: [
                    Icon(Icons.star, size: 14.r, color: Colors.amber),
                    Text(
                      '${shop.rating}',
                      style: context.textTheme.bodySmall?.copyWith(
                        fontWeight: .bold,
                        color: context.colorScheme.tertiary,
                      ),
                    ),
                    Text(
                      '•',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: .symmetric(vertical: 4.h, horizontal: 30.w),
            decoration: BoxDecoration(
              color: context.colorScheme.primaryFixedDim,
              borderRadius: .circular(20.r),
            ),
            child: Text(
              shop.distance,
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: .bold,
                color: context.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      );
    }
  }
}
