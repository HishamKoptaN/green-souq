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
        padding: EdgeInsets.all(16.r),
        margin: EdgeInsets.only(bottom: 24.h),
        decoration: BoxDecoration(
          color: const Color(0xFFF0FDF4)
              .withValues(alpha: 0.8), // bg-emerald-50/80
          border: Border.all(
            color: const Color(0xFFBBF7D0)
                .withValues(alpha: 0.7), // border-emerald-200/70
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 32.w,
              height: 32.h,
              decoration: const BoxDecoration(
                color: Color(0xFFDCFCE7), // bg-emerald-100
                shape: BoxShape.circle,
              ),
              child: Icon(
                LucideIcons.shieldCheck,
                size: 20.sp,
                color: const Color(0xFF15803D), // text-emerald-700
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'حماية وضمان سلامة الملفات',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF022C22), // text-emerald-950
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'نسخة رسمية مشفرة وموقعة برمجياً عبر سيرفرات النشر والتحقق الآلي DevOps Core Pipeline لضمان خلوها من أي برمجيات ضارة.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xFF166534)
                          .withValues(alpha: 0.9), // text-emerald-800/90
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
