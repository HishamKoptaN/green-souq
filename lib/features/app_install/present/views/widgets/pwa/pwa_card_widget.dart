import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';

class PwaCardWidget extends StatelessWidget {
  const PwaCardWidget({super.key});

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
          crossAxisAlignment: .start,
          children: [
            Row(
              crossAxisAlignment: .start,
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: context.colorScheme.surfaceContainerLow,
                    borderRadius: .circular(8.r),
                  ),
                  child: Icon(
                    LucideIcons.globe,
                    size: 22.r,
                    color: context.colorScheme.primary,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'نسخة الويب وتطبيقات المتصفح (PWA)',
                              style: context.textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: context.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          Container(
                            padding: .symmetric(horizontal: 8.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: context.colorScheme.secondaryContainer,
                              borderRadius: .circular(9999.r),
                            ),
                            child: Text(
                              'فوري',
                              style: context.textTheme.labelSmall?.copyWith(
                                color: context.colorScheme.onSecondaryContainer,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'فتح المنصة من خلال المتصفح',
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                          height: 1.5.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: .infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.surfaceContainerHigh,
                  foregroundColor: context.colorScheme.onSurface,
                  elevation: 0,
                  padding: .symmetric(vertical: 10.h),
                  shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(
                      LucideIcons.externalLink,
                      size: 16.sp,
                      color: context.colorScheme.primary,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      'فتح المنصة علي المتصفح',
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
