import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/extensions/theme_ext.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLow.withValues(alpha: 0.8),
          border: Border(
            top: BorderSide(
              color: context.colorScheme.outlineVariant.withValues(alpha: 0.3),
              width: 1.r,
            ),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.close,
                color: context.colorScheme.onSurfaceVariant,
                size: 20.r,
              ),
              style: IconButton.styleFrom(
                backgroundColor: context.colorScheme.surfaceContainerLowest,
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(12.r),
                  side: BorderSide(
                    color: context.colorScheme.outlineVariant.withValues(
                      alpha: 0.6,
                    ),
                  ),
                ),
              ),
              tooltip: 'إغلاق الدرج',
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: context.colorScheme.surfaceContainerLowest,
                  side: BorderSide(
                    color: context.colorScheme.error.withValues(alpha: 0.5),
                  ),
                  shape: RoundedRectangleBorder(borderRadius: .circular(16.r)),
                  padding: .symmetric(vertical: 12.h),
                ),
                icon: Icon(
                  Icons.logout,
                  color: context.colorScheme.error,
                  size: 18.r,
                ),
                label: Text(
                  'تسجيل الخروج',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.error,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
