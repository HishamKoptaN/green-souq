import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import '../../../../../../core/widgets/forms/translated_text.dart';

class ShopRatingHeader extends StatelessWidget {
  const ShopRatingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: .start,
        spacing: 16.h,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Row(
                    spacing: 2.w,
                    children: [
                      Icon(
                        Icons.rate_review,
                        color: context.colorScheme.primary,
                        size: 22.r,
                      ),
                      TrText(
                        'تقييمك المهني للمحل',
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: .w200,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: .symmetric(horizontal: 6.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: context.colorScheme.secondaryContainer,
                      borderRadius: .circular(20.r),
                    ),
                    child: Text(
                      'مهندس مبيعات معتمد',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: context.colorScheme.onSecondaryFixed,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              TrText(
                'آخر تحديث لتقييمك:منذ أسبوعين (متاح للتعديل)',
                overflow: .visible,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          Container(
            padding: .all(8.r),
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerLow,
              borderRadius: .circular(12.r),
            ),
            child: Row(
              crossAxisAlignment: .start,
              spacing: 4.w,
              children: [
                Icon(
                  Icons.info,
                  color: context.colorScheme.primary,
                  size: 16.r,
                ),
                Expanded(
                  child: TrText(
                    'تقييمك المستقل يعكس تجربتك المباشرة، ويساعد شبكة مهندسين المبيعات على معرفة طبيعة المحل وسرعة السداد .',
                    overflow: .visible,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.2,
                    ),
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
