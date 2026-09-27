import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import '../../../../domain/entities/shop_entity.dart';

class ShopReputationCard extends StatelessWidget {
  const ShopReputationCard({super.key, required this.shop});
  final ShopEntity shop;
  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(8.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          borderRadius: .circular(12.r),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.shadow.withValues(alpha: 0.04),
              blurRadius: 4.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          spacing: 16.h,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  spacing: 4.w,
                  children: [
                    Icon(
                      Icons.workspace_premium,
                      color: context.colorScheme.primary,
                      size: 20.r,
                    ),
                    Text(
                      'مؤشر تقييمات مهندسين التوزيع الاخرين له',
                      style: context.textTheme.titleSmall?.copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: .w300,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 4.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primary.withValues(alpha: 0.1),
                    borderRadius: .circular(20.r),
                  ),
                  child: Text(
                    '${shop.ratingsCount} تقييم معتمد',
                    style: context.textTheme.labelSmall?.copyWith(
                      color: context.colorScheme.primary,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: .all(8.r),
              decoration: BoxDecoration(
                // color: context.colorScheme.surfaceContainerLow,
                borderRadius: .circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    shop.ratingAverage.toString(),
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: .bold,
                      color: context.colorScheme.onSurface,
                      height: 1.0,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisSize: .min,
                    children: List.generate(5, (index) {
                      IconData iconData;
                      if (index < shop.ratingAverage.floor()) {
                        iconData = Icons.star;
                      } else if (index < shop.ratingAverage &&
                          (shop.ratingAverage - index) >= 0.5) {
                        iconData = Icons.star_half;
                      } else {
                        iconData = Icons.star_border;
                      }
                      return Icon(
                        iconData,
                        size: 22.r,
                        color: (index < shop.ratingAverage)
                            ? Colors.amber
                            : Colors.grey.shade400,
                      );
                    }),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'من 5.0',
                    style: context.textTheme.labelSmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    getRatingLabel(shop.ratingAverage.toInt()),
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF006837),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  String getRatingLabel(int rating) {
    switch (rating) {
      case 1:
        return 'ضعيف ولا ينصح بالتعامل معه';
      case 2:
        return 'أقل من المتوسط - يحتاج حذر';
      case 3:
        return 'متوسط - مقبول';
      case 4:
        return 'جيد جداً - ننصح به';
      case 5:
        return 'ممتاز - موثوق للغاية';
      default:
        return 'قم باختيار التقييم';
    }
  }
}
