import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';

class HeroDownloadButton extends StatelessWidget {
  const HeroDownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return SizedBox(
        width: .infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
            foregroundColor: context.colorScheme.onPrimary,
            padding: .symmetric(horizontal: 16.w, vertical: 14.h),
            shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
            elevation: 4,
            shadowColor: context.colorScheme.primary.withValues(alpha: 0.2),
          ),
          onPressed: () async {
            final uri = Uri.parse(
              'https://github.com/HishamKoptaN/flutter-devops-core/releases/download/v1.0.0%2B1/app-prod-release.apk',
            );
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    padding: .all(6.r),
                    decoration: BoxDecoration(
                      color: context.colorScheme.onPrimary.withValues(
                        alpha: 0.1,
                      ),
                      borderRadius: .circular(8.r),
                    ),
                    child: Center(
                      //child: Brand(Brands.android_os, size: 48),
                      //Icon(
                      //  Icons.android,
                      //  size: 40.r,
                      //  color: context.colorScheme.primary,
                      //),
                    ),
                    // Icon(
                    //                     LucideIcons.android2,
                    //                     size: 24.sp,
                    //                     color: context.colorScheme.onPrimary,
                    //                   ),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'تحميل التطبيق مباشرة',
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: .bold,
                          color: context.colorScheme.onPrimary,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'رابط آمن ومباشر',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: context.colorScheme.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimary.withValues(alpha: 0.15),
                  shape: .circle,
                ),
                child: Icon(
                  LucideIcons.download,
                  size: 20.sp,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
