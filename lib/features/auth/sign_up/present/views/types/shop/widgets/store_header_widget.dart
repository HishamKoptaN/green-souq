import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../../core/theme/extensions/theme_ext.dart';

class StoreHeaderWidget extends StatelessWidget {
  const StoreHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: context.colorScheme.surfaceContainerLowest,
      shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
      child: Padding(
        padding: .all(12.r),
        child: Row(
          crossAxisAlignment: .start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      Text(
                        'تسجيل محل أدوية زراعية',
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: .bold,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      Gap(8.w),
                      Container(
                        padding: .symmetric(horizontal: 8.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: context.colorScheme.secondaryContainer,
                          borderRadius: .circular(12.r),
                        ),
                        child: Text(
                          'B2B',
                          style: context.textTheme.labelSmall?.copyWith(
                            fontWeight: .bold,
                            color: context.colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(6.h),
                  Text(
                    'أدخل بيانات محلك لتتمكن من الشراء بأسعار الجملة ، والتواصل مع مهندسي المبيعات في السوق الأخضر.',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            Gap(12.w),
            Container(
              padding: .all(4.r),
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerLow,
                borderRadius: .circular(12.r),
              ),
              child: Icon(
                Icons.storefront,
                color: context.colorScheme.primary,
                size: 28.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
