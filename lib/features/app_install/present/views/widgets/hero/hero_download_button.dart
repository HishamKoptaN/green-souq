import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';

class HeroDownloadButton extends StatelessWidget {
  const HeroDownloadButton({super.key});
  final String _githubToken = "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";
  final String _repo = "HishamKoptaN/green-souq-flutter";

  Future<void> _downloadLatestApk(BuildContext context) async {
    try {
      final releaseResponse = await http.get(
        Uri.parse('https://api.github.com/repos/$_repo/releases/latest'),
        headers: {
          'Authorization': 'Bearer $_githubToken',
          'Accept': 'application/vnd.github+json',
        },
      );
      if (releaseResponse.statusCode != 200) {
        throw Exception('فشل الجلب من GitHub: ${releaseResponse.statusCode}');
      }
      final releaseData = jsonDecode(releaseResponse.body);
      final List assets = releaseData['assets'] ?? [];
      final apkAsset = assets.firstWhere((asset) {
        return asset['name'].toString().endsWith('.apk');
      }, orElse: () => null);

      if (apkAsset == null) {
        throw Exception('لم يتم العثور على ملف APK في أحدث Release');
      }
      final assetApiUrl = Uri.parse(
        'https://api.github.com/repos/$_repo/releases/assets/${apkAsset['id']}',
      );
      final Uri downloadLaunchUri = Uri.parse(
        'https://api.github.com/repos/$_repo/releases/assets/${apkAsset['id']}?access_token=$_githubToken',
      );
      if (await canLaunchUrl(assetApiUrl)) {
        await launchUrl(assetApiUrl, webOnlyWindowName: '_self');
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('حدث خطأ أثناء التنزيل: $e')));
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
            _downloadLatestApk(context);
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
