import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInstallHeroSection extends StatelessWidget {
  const AppInstallHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        children: [
          SizedBox(height: 8.h),
          Stack(
            alignment: .bottomLeft,
            children: [
              Container(
                width: 96.w,
                height: 96.h,
                padding: .all(8.r),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  borderRadius: .circular(24.r),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.shadow.withOpacity(0.08),
                      blurRadius: 8.r,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/logos/logo_solid.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: 28.w,
                height: 28.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
                      blurRadius: 4.r,
                    ),
                  ],
                ),
                child: Icon(
                  LucideIcons.check,
                  size: 16.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'السوق الأخضر - Green Souq',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 6.h),
          Text(
            'الشبكة الزراعية المتكاملة لربط مهندسين المبيعات , المحلات , المزارع، تجار، وسلاسل الإمداد',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  height: 1.5.h,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              Container(
                padding: .symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(LucideIcons.tag, size: 14.sp, color: Theme.of(context).colorScheme.primary),
                    SizedBox(width: 4.w),
                    Text(
                      'الإصدار الرسمي v1.0.0 (Build 1)',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: .symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(LucideIcons.fileArchive, size: 14.sp, color: Theme.of(context).colorScheme.tertiary),
                    SizedBox(width: 4.w),
                    Text(
                      'حجم الملف: 24.8 ميجابايت',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                padding: .symmetric(horizontal: 16.w, vertical: 14.h),
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(12.r),
                ),
                elevation: 4,
                shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
              onPressed: () async {
                final uri = Uri.parse('https://github.com/HishamKoptaN/flutter-devops-core/releases/download/v1.0.0%2B1/app-prod-release.apk');
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                          borderRadius: .circular(8.r),
                        ),
                        child: Icon(
                          LucideIcons.smartphone,
                          size: 22.sp,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'تحميل التطبيق مباشرة',
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'رابط آمن ومباشر',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.9),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      LucideIcons.download,
                      size: 18.sp,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            padding: .symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: .circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.shieldCheck,
                  size: 16.sp,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 6.w),
                Text(
                  'فحص أمني معتمد • خالي من أي برمجيات ضارة • Android 7.0+',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
        ],
      );
    }
  }
}
