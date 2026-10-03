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
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                width: 96.w,
                height: 96.h,
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(24.r),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.08),
                      blurRadius: 8.r,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(
                    'assets/logos/logo_solid.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: -4.h,
                left: -4.w,
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.1),
                        blurRadius: 4.r,
                      ),
                    ],
                  ),
                  child: Icon(
                    LucideIcons.check,
                    size: 14.sp,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'الشبكة الزراعية المتكاملة لربط مهندسين المبيعات , المحلات , المزارع، تجار، وسلاسل الإمداد',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    height: 1.5,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16.h),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(LucideIcons.tag, size: 15.sp, color: Theme.of(context).colorScheme.primary),
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
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(LucideIcons.fileArchive, size: 15.sp, color: Theme.of(context).colorScheme.tertiary),
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
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                elevation: 4,
                shadowColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
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
                          color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(
                          LucideIcons.smartphone,
                          size: 24.sp,
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
                                  height: 1.2,
                                ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'رابط آمن ومباشر',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer.withValues(alpha: 0.9),
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
                      color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.15),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      LucideIcons.download,
                      size: 20.sp,
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
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.shield,
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
