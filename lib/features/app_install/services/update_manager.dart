import 'package:flutter/material.dart';

import '../data/models/update_info_model.dart';
import 'update_checker.dart';
import 'update_downloader.dart';

class UpdateManager {
  static Future<UpdateInfoModel?> checkForUpdate(String jsonUrl) async {
    {
      return UpdateChecker.checkForUpdate(jsonUrl);
    }
  }

  static Future<void> downloadAndInstallUpdate(
    String apkUrl, {
    Function(double progress)? onProgress,
    Function(String error)? onError,
  }) async {
    {
      return UpdateDownloader.downloadAndInstallUpdate(
        apkUrl,
        onProgress: onProgress,
        onError: onError,
      );
    }
  }

  static void showUpdateDialog(
    BuildContext context,
    UpdateInfoModel updateInfo,
  ) {
    {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          double downloadProgress = 0.0;
          bool isDownloading = false;

          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                title: Text(
                  "تحديث جديد متاح (${updateInfo.latestVersionName})",
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      updateInfo.releaseNotes.isNotEmpty
                          ? updateInfo.releaseNotes
                          : "هناك إصدار جديد من التطبيق يضم تحسينات ومميزات رائعة.",
                    ),
                    const SizedBox(height: 16),
                    if (isDownloading) ...[
                      LinearProgressIndicator(value: downloadProgress / 100),
                      const SizedBox(height: 8),
                      Text(
                        "جاري التحميل: ${downloadProgress.toStringAsFixed(0)}%",
                      ),
                    ],
                  ],
                ),
                actions: [
                  if (!isDownloading)
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("لاحقاً"),
                    ),
                  if (!isDownloading)
                    ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isDownloading = true;
                        });
                        await downloadAndInstallUpdate(
                          updateInfo.apkUrl,
                          onProgress: (progress) {
                            setState(() {
                              downloadProgress = progress;
                            });
                          },
                          onError: (error) {
                            setState(() {
                              isDownloading = false;
                            });
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(error)));
                          },
                        );
                      },
                      child: const Text("تحديث الآن"),
                    ),
                  if (isDownloading)
                    const Center(
                      child: Text("يرجى الانتظار حتى اكتمال التحميل..."),
                    ),
                ],
              );
            },
          );
        },
      );
    }
  }
}
