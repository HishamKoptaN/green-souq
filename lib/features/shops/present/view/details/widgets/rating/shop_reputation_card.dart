import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';

class ShopReputationCard extends StatelessWidget {
  const ShopReputationCard({super.key, required this.shop});

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
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  spacing: 8.w,
                  children: [
                    Container(
                      padding: .all(6.r),
                      decoration: BoxDecoration(
                        color: context.colorScheme.primaryContainer.withValues(
                          alpha: 0.15,
                        ),
                        borderRadius: .circular(8.r),
                      ),
                      child: Icon(
                        Icons.workspace_premium,
                        color: context.colorScheme.primary,
                        size: 18.r,
                      ),
                    ),
                    Text(
                      'مؤشر تقييمات مهندسي التوزيع',
                      style: context.textTheme.titleSmall?.copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer.withValues(
                      alpha: 0.1,
                    ),
                    borderRadius: .circular(20.r),
                    border: Border.all(
                      color: context.colorScheme.primaryContainer.withValues(
                        alpha: 0.3,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: .min,
                    spacing: 4.w,
                    children: [
                      Icon(
                        Icons.check,
                        size: 12.r,
                        color: context.colorScheme.primary,
                      ),
                      Text(
                        '${shop.ratingsCount} تقييم معتمد',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: context.colorScheme.primary,
                          fontWeight: .bold,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .baseline,
                  textBaseline: TextBaseline.alphabetic,
                  spacing: 4.w,
                  children: [
                    Text(
                      shop.ratingAverage.toStringAsFixed(1),
                      style: context.textTheme.headlineMedium?.copyWith(
                        fontWeight: .w900,
                        color: context.colorScheme.onSurface,
                        height: 1.0,
                      ),
                    ),
                    Text(
                      '/ 5.0',
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: .center,
                  spacing: 4.w,
                  children: List.generate(5, (index) {
                    final starVal = index + 1;
                    return Icon(
                      starVal <= shop.ratingAverage
                          ? Icons.star
                          : Icons.star_border,
                      size: 24.r,
                      color: starVal <= shop.ratingAverage
                          ? Colors.amber.shade600
                          : context.colorScheme.outlineVariant,
                    );
                  }),
                ),
                SizedBox(height: 12.h),
                Container(
                  padding: .symmetric(horizontal: 12.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer.withValues(
                      alpha: 0.08,
                    ),
                    borderRadius: .circular(20.r),
                  ),
                  child: Row(
                    mainAxisSize: .min,
                    spacing: 6.w,
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 14.r,
                        color: context.colorScheme.primary,
                      ),
                      Text(
                        'جيد جداً - ننصح بالتوريد والتعامل التجاري',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: context.colorScheme.primary,
                          fontWeight: .bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
