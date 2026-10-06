import 'dart:developer' show log;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:open_filex/open_filex.dart';
import '../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/constants/api_constants.dart';

class HeroDownloadButton extends StatelessWidget {
  const HeroDownloadButton({super.key});
  Future<void> downloadAndInstallLatestApk() async {
    const String githubToken = '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';
    const String repoOwner = 'HishamKoptaN';
    const String repoName = 'green-souq-flutter';
    final dio = Dio();
    try {
      log('جاري جلب معلومات أحدث Release...');
      final releaseResponse = await dio.get(
        'https://api.github.com/repos/$repoOwner/$repoName/releases/latest',
        options: Options(
          headers: {
            'Authorization': 'Bearer $githubToken',
            'Accept': 'application/vnd.github+json',
          },
        ),
      );
      final List assets = releaseResponse.data['assets'];
      final apkAsset = assets.firstWhere(
        (asset) => (asset['name'] as String).endsWith('.apk'),
        orElse: () => null,
      );
      if (apkAsset == null) {
        log('لم يتم العثور على ملف APK داخل أحدث Release!');
        return;
      }
      final int assetId = apkAsset['id'];
      final String fileName = apkAsset['name'];
      log('تم العثور على الملف: $fileName (ID: $assetId)');
      final tempDir = await getTemporaryDirectory();
      final String savePath = '${tempDir.path}/$fileName';
      log('جاري بدء تنزيل الملف...');
      await dio.download(
        'https://api.github.com/repos/$repoOwner/$repoName/releases/assets/$assetId',
        savePath,
        options: Options(
          headers: {
            'Authorization': 'Bearer $githubToken',
            'Accept': 'application/octet-stream',
          },
        ),
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = (received / total * 100).toStringAsFixed(0);
            log('التقدم: $progress%');
          }
        },
      );
      log('تم التحميل بنجاح إلى: $savePath');
      final result = await OpenFilex.open(savePath);
      log('نتيجة فتح الملف: ${result.message}');
    } on DioException catch (e) {
      log('خطأ في طلب Dio: ${e.response?.statusCode} - ${e.message}');
    } catch (e) {
      log('حدث خطأ غير متوقع: $e');
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
            downloadAndInstallLatestApk();
            // log(ApiConstants.appDownloadUrl);
            // final uri = Uri.parse(ApiConstants.appDownloadUrl);
            // if (await canLaunchUrl(uri)) {
            //   await launchUrl(uri, mode: .externalApplication);
            //}
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
