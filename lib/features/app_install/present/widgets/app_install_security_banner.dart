import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant.withOpacity(0.5),
          ),
          borderRadius: .circular(12.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 36.w,
              height: 36.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(
                LucideIcons.shieldCheck,
                size: 20.sp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'حماية وضمان سلامة الملفات',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'نسخة رسمية مشفرة وموقعة برمجياً عبر سيرفرات النشر والتحقق الآلي DevOps Core Pipeline لضمان خلوها من أي برمجيات ضارة.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          height: 1.5.h,
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
