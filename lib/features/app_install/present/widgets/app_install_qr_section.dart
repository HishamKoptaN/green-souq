import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInstallQrSection extends StatelessWidget {
  const AppInstallQrSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Card(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: .circular(12.r),
        ),
        child: Padding(
          padding: .all(16.r),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code_scanner,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'التثبيت عبر مسح الكاميرا',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                width: 140.w,
                height: 140.h,
                padding: .all(12.r),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: .circular(12.r),
                ),
                child: Icon(
                  Icons.qr_code_2,
                  size: 110.sp,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'امسح الكود بكاميرا هاتفك لبدء التثبيت فوراً',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4.h),
              Text(
                'يتم التوجيه تلقائياً إلى الرابط المباشر الأنسب لجهازك الذكي',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }
  }
}
