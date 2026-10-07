import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import '../../../../../../core/constants/api_constants.dart';
import 'hero_download_button.dart';
import 'hero_logo_widget.dart';

import 'package:http/http.dart' as http;

import 'dart:async';

import 'package:flutter/foundation.dart';

import 'dart:convert';

import 'package:web/web.dart' as web;

class AppInstallHeroSection extends StatelessWidget {
  const AppInstallHeroSection({super.key});
  Future<String> detectDeviceArchitecture() async {
    if (!kIsWeb) return 'unknown';

    final window = web.window;
    final navigator = window.navigator;
    try {
      final uaData = (navigator as dynamic).userAgentData;
      if (uaData != null) {
        final highEntropyValues = await (uaData.getHighEntropyValues([
          'architecture',
          'bitness',
        ]) as Future);
        final arch =
            highEntropyValues['architecture']?.toString().toLowerCase() ?? '';
        final bitness = highEntropyValues['bitness']?.toString() ?? '';

        if (arch.contains('arm')) {
          return bitness == '64' ? 'arm64-v8a' : 'armeabi-v7a';
        } else if (arch.contains('x86')) {
          return bitness == '64' ? 'x86_64' : 'x86';
        }
      }
    } catch (e) {
      debugPrint('UserAgentData error: $e');
    }
    final userAgent = navigator.userAgent.toLowerCase();

    if (userAgent.contains('aarch64') || userAgent.contains('arm64')) {
      return 'arm64-v8a';
    } else if (userAgent.contains('armv7') || userAgent.contains('armeabi')) {
      return 'armeabi-v7a';
    }

    // افتراضياً لغالبية أجهزة أندرويد الحديثة (64-bit)
    return 'arm64-v8a';
  }

  Future<Map<String, dynamic>?> _fetchReleaseData() async {
    try {
      final response = await http.get(
        Uri.parse(
          'https://api.github.com/repos/HishamKoptaN/green-souq-flutter/releases/latest',
        ),
        headers: {'User-Agent': 'GreenSouqApp'},
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      }
    } catch (e) {}
    return null;
  }

  Future<String> fetchLatestReleaseVersion() async {
    try {
      final data = await _fetchReleaseData();
      if (data != null) {
        final String tagName = data['tag_name'] ?? '';
        if (tagName.contains('+')) {
          final parts = tagName.split('+');
          return 'الإصدار الرسمي ${parts[0]} (${parts[1]})';
        } else if (tagName.isNotEmpty) {
          return 'الإصدار الرسمي $tagName';
        }
      }
    } catch (e) {}

    return '';
  }

  Future<String?> getFileSizeFromUrl(String url) async {
    try {
      final data = await _fetchReleaseData();
      if (data != null && data['assets'] != null) {
        final assets = data['assets'] as List;
        for (var asset in assets) {
          final name = asset['name']?.toString() ?? '';
          if (name.endsWith('.apk')) {
            final int bytes = asset['size'] ?? 0;
            if (bytes > 0) {
              double sizeInMB = bytes / (1024 * 1024);
              return '${sizeInMB.toStringAsFixed(2)} ميجابايت';
            }
          }
        }
      }
    } catch (e) {}

    try {
      final response = await http.Client().send(
        http.Request('HEAD', Uri.parse(url)),
      );
      final contentLength = response.headers['content-length'];
      if (contentLength != null) {
        int bytes = int.parse(contentLength);
        double sizeInMB = bytes / (1024 * 1024);
        return '${sizeInMB.toStringAsFixed(2)} ميجابايت';
      }
    } catch (e) {}
    return '';
  }

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        children: [
          FutureBuilder<String>(
            future: detectDeviceArchitecture(),
            builder: (context, snapshot) {
              final displayText = snapshot.data ?? ' ';
              return Text(
                displayText,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: .bold,
                  color: context.colorScheme.onSurface,
                ),
              );
            },
          ),
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
              'الشبكة الزراعية المتكاملة التي تجمع بين مهندسين المبيعات , المحلات , المزارع، تجار، وسلاسل الإمداد',
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
                    FutureBuilder<String>(
                      future: fetchLatestReleaseVersion(),
                      builder: (context, snapshot) {
                        final displayText = snapshot.data ?? ' ';
                        return Text(
                          displayText,
                          style: context.textTheme.labelMedium?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                            fontWeight: .w500,
                          ),
                        );
                      },
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
                      future: getFileSizeFromUrl(ApiConstants.appDownloadUrl),
                      builder: (context, snapshot) {
                        final sizeText = snapshot.data ?? ' ';
                        return Text(
                          'حجم الملف: $sizeText',
                          style: context.textTheme.labelMedium?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                            fontWeight: .w500,
                          ),
                        );
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
            width: .infinity,
            padding: .symmetric(vertical: 6.h, horizontal: 12.w),
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerLow,
              borderRadius: .circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: .start,
              children: [
                Icon(
                  LucideIcons.shield,
                  size: 20.r,
                  color: context.colorScheme.primary,
                ),
                SizedBox(width: 6.w),
                Text(
                  'فحص أمني معتمد • خالي من أي برمجيات ضارة •',
                  style: context.textTheme.titleSmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                    fontWeight: .w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
