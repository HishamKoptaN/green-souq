import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/extensions/distance_formatter.dart';

class ShopCardHeader extends StatelessWidget {
  const ShopCardHeader({super.key, required this.shop});

  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: .spaceBetween,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12.w,
              children: [
                Container(
                  width: 48.r,
                  height: 48.r,
                  decoration: BoxDecoration(
                    color: context.colorScheme.secondaryContainer.withValues(
                      alpha: 0.4,
                    ),
                    borderRadius: .circular(12.r),
                  ),
                  child: Icon(
                    LucideIcons.store,
                    color: context.colorScheme.primary,
                    size: 26.r,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 2.h,
                    children: [
                      Row(
                        spacing: 6.w,
                        children: [
                          Flexible(
                            child: Text(
                              shop.name,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: .bold,
                                color: context.colorScheme.onSurface,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Icon(
                            LucideIcons.badgeCheck,
                            size: 18.r,
                            color: context.colorScheme.primary,
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8.w,
                        children: [
                          Row(
                            spacing: 4.w,
                            children: [
                              Icon(
                                LucideIcons.star,
                                size: 16.r,
                                color: context.colorScheme.tertiaryFixedDim,
                              ),
                              Text(
                                '${shop.rating}',
                                style: context.textTheme.labelMedium?.copyWith(
                                  fontWeight: .bold,
                                  color: context.colorScheme.onSurface,
                                ),
                              ),
                              Text(
                                '(12 تقييم)',
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: context.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '•',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colorScheme.outlineVariant,
                            ),
                          ),
                          Text(
                            'مفتوح الآن',
                            style: context.textTheme.labelSmall?.copyWith(
                              fontWeight: .w500,
                              color: context.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: .symmetric(vertical: 4.h, horizontal: 10.w),
            decoration: BoxDecoration(
              color: context.colorScheme.secondaryContainer.withValues(
                alpha: 0.3,
              ),
              borderRadius: .circular(9999.r),
            ),
            child: Row(
              spacing: 4.w,
              children: [
                Icon(
                  LucideIcons.navigation,
                  size: 14.r,
                  color: context.colorScheme.secondary,
                ),
                Text(
                  'على بعد ${shop.distance.toFormattedDistance()}',
                  style: context.textTheme.labelSmall?.copyWith(
                    fontWeight: .w500,
                    color: context.colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
