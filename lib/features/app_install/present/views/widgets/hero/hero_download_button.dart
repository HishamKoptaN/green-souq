import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../config/env_config.dart';

class HeroDownloadButton extends StatelessWidget {
  const HeroDownloadButton({super.key});
  Future<void> downloadApkDirectly(BuildContext context) async {
    try {
      final response = await http.get(
        Uri.parse('${EnvConfig.config.userBaseUrl}get-apk-link'),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final String? downloadUrl = data['download_url'];

        if (downloadUrl != null) {
          final Uri url = Uri.parse(downloadUrl);
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: .externalApplication);
          }
        }
      } else {
        throw Exception('فشل الحصول على رابط التنزيل');
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('حدث خطأ أثناء جلب الرابط: $e')));
    }
  }

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
            downloadApkDirectly(context);
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
                      child: Icon(
                        Icons.android,
                        size: 30.r,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'تحميل التطبيق مباشرة',
                        style: context.textTheme.labelLarge?.copyWith(
                          color: context.colorScheme.onPrimary,
                          fontWeight: .bold,
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
                padding: .all(10.r),
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimary.withValues(alpha: 0.15),
                  shape: .circle,
                ),
                child: Icon(
                  LucideIcons.download,
                  size: 20.r,
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
