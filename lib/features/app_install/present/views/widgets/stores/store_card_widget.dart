import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';

class StoreCardWidget extends StatelessWidget {
  const StoreCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.statusText,
    required this.buttonText,
    required this.isNotified,
    required this.onNotify,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final String statusText;
  final String buttonText;
  final bool isNotified;
  final VoidCallback onNotify;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        width: .infinity,
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          borderRadius: .circular(12.r),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.shadow.withValues(alpha: 0.04),
              blurRadius: 4.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: .all(10.r),
                      decoration: BoxDecoration(
                        color: context.colorScheme.surfaceContainerLow,
                        borderRadius: .circular(8.r),
                      ),
                      child: Center(child: icon),
                    ),
                    SizedBox(width: 6.w),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          title,
                          style: context.textTheme.labelMedium?.copyWith(
                            fontWeight: .bold,
                            color: context.colorScheme.onSurface,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          subtitle,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surfaceContainer,
                    borderRadius: .circular(9999.r),
                  ),
                  child: Text(
                    statusText,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            SizedBox(
              width: .infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isNotified
                      ? context.colorScheme.secondaryContainer
                      : context.colorScheme.surfaceContainerHigh,
                  foregroundColor: isNotified
                      ? context.colorScheme.onSecondaryContainer
                      : context.colorScheme.onSurface,
                  elevation: 0,
                  padding: .symmetric(vertical: 10.h),
                  shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
                ),
                onPressed: onNotify,
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(
                      isNotified ? LucideIcons.check : LucideIcons.bell,
                      size: 16.r,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      buttonText,
                      style: context.textTheme.labelMedium?.copyWith(
                        fontWeight: .w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
