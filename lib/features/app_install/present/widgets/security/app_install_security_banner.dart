import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

class AppInstallSecurityBanner extends StatelessWidget {
  const AppInstallSecurityBanner({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        width: double.infinity,
        padding: .all(16.r),
        margin: .only(bottom: 24.h),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          border: Border.all(
            color: context.colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
          borderRadius: .circular(12.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: context.colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                LucideIcons.shieldCheck,
                size: 20.sp,
                color: context.colorScheme.primary,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'حماية وضمان سلامة الملفات',
                    style: context.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.onSurface,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'نسخة رسمية مشفرة وموقعة برمجياً عبر سيرفرات النشر والتحقق الآلي DevOps Core Pipeline لضمان خلوها من أي برمجيات ضارة.',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
