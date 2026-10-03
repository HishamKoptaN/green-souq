import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import 'hero_download_button.dart';
import 'hero_logo_widget.dart';

import 'package:http/http.dart' as http;

class AppInstallHeroSection extends StatelessWidget {
  const AppInstallHeroSection({super.key});
  Future<String?> getFileSizeFromUrl(String url) async {
    try {
      final response = await http.Client().send(
        http.Request('HEAD', Uri.parse(url)),
      );
      final contentLength = response.headers['content-length'];
      if (contentLength != null) {
        int bytes = int.parse(contentLength);
        double sizeInMB = bytes / (1024 * 1024);
        return '${sizeInMB.toStringAsFixed(2)} MB';
      }
    } catch (e) {
      print('خطأ: $e');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        children: [
          SizedBox(height: 12.h),
          const HeroLogoWidget(),
          SizedBox(height: 16.h),
          Text(
            'السوق الأخضر - Green Souq',
            style: context.textTheme.headlineMedium?.copyWith(
              fontWeight: .bold,
              color: context.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: .symmetric(horizontal: 16.w),
            child: Text(
              'الشبكة الزراعية المتكاملة لربط مهندسين المبيعات , المحلات , المزارع، تجار، وسلاسل الإمداد',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
              textAlign: .center,
            ),
          ),
          SizedBox(height: 16.h),
          Wrap(
            alignment: .center,
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              Container(
                padding: .symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainer,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: .min,
                  children: [
                    Icon(
                      LucideIcons.tag,
                      size: 15.sp,
                      color: context.colorScheme.primary,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'الإصدار الرسمي v1.0.0 (Build 1)',
                      style: context.textTheme.labelMedium?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: .w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: .symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerLow,
                  borderRadius: .circular(9999.r),
                ),
                child: Row(
                  mainAxisSize: .min,
                  children: [
                    Icon(
                      LucideIcons.fileArchive,
                      size: 15.sp,
                      color: context.colorScheme.tertiary,
                    ),
                    SizedBox(width: 4.w),
                    FutureBuilder<String?>(
                      future: getFileSizeFromUrl(
                        'https://github.com/HishamKoptaN/flutter-devops-core/releases/download/v1.0.0%2B1/app-prod-release.apk',
                      ),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == .waiting) {
                          return SizedBox.shrink();
                        } else if (snapshot.hasError) {
                          return Text(
                            'حجم الملف: خطأ في التحميل',
                            style: context.textTheme.labelMedium?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                              fontWeight: .w500,
                            ),
                          );
                        } else if (snapshot.hasData) {
                          return Text(
                            'حجم الملف: ${snapshot.data}',
                            style: context.textTheme.labelMedium?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                              fontWeight: .w500,
                            ),
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          const HeroDownloadButton(),
          SizedBox(height: 10.h),
          Container(
            width: double.infinity,
            padding: .symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerLow,
              borderRadius: .circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Icon(
                  LucideIcons.shield,
                  size: 16.sp,
                  color: context.colorScheme.primary,
                ),
                SizedBox(width: 6.w),
                Text(
                  'فحص أمني معتمد • خالي من أي برمجيات ضارة • Android 7.0+',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                    fontWeight: .w500,
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
