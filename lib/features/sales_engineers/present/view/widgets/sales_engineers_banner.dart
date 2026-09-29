import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:green/core/theme/extensions/theme_ext.dart';

class SalesEngineersBanner extends StatelessWidget {
  const SalesEngineersBanner({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLow,
          borderRadius: .circular(16.r),
          border: Border.all(color: context.colorScheme.outlineVariant),
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'شبكة التوريد والاستشارات',
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.primary,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'مهندسين ومندوبين المبيعات و التوزيع',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'تواصل مباشر لطلب عينات، استشارات، ومتابعة التوريد',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: context.colorScheme.primary.withValues(alpha: 0.1),
                borderRadius: .circular(12.r),
              ),
              child: Icon(
                Icons.engineering,
                color: context.colorScheme.primary,
                size: 28.r,
              ),
            ),
          ],
        ),
      );
    }
  }
}
