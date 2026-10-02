import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import '../data/models/update_info_model.dart';

class UpdateManager {
  /// Check for updates by fetching update.json from the given [jsonUrl].
  /// Returns [UpdateInfoModel] if a newer version is available, otherwise null.
  static Future<UpdateInfoModel?> checkForUpdate(String jsonUrl) async {
    try {
      final dio = Dio();
      final response = await dio.get(jsonUrl);
      
      if (response.statusCode == 200 && response.data != null) {
        final Map<String, dynamic> data = response.data is Map<String, dynamic>
            ? response.data
            : Map<String, dynamic>.from(response.data);

        final serverUpdate = UpdateInfoModel.fromJson(data);

        // Get current app version info
        final packageInfo = await PackageInfo.fromPlatform();
        final int currentVersionCode = int.tryParse(packageInfo.buildNumber) ?? 1;

        print("Current Version Code: $currentVersionCode, Server Version Code: ${serverUpdate.latestVersionCode}");

        if (serverUpdate.latestVersionCode > currentVersionCode) {
          return serverUpdate;
        }
      }
    } catch (e) {
      print("Error checking for update: $e");
    }
    return null;
  }

  /// Download the APK file from [apkUrl] with progress callback, then install it using OpenFilex.
  static Future<void> downloadAndInstallUpdate(
    String apkUrl, {
    Function(double progress)? onProgress,
    Function(String error)? onError,
  }) async {
    try {
      Directory? directory = await getExternalStorageDirectory();
      if (directory == null) {
        directory = await getApplicationDocumentsDirectory();
      }
      String savePath = "${directory.path}/update.apk";

      // Delete old apk if exists
      final file = File(savePath);
      if (await file.exists()) {
        await file.delete();
      }

      Dio dio = Dio();
      await dio.download(
        apkUrl,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            double progress = (received / total * 100);
            print("Downloading: ${progress.toStringAsFixed(0)}%");
            if (onProgress != null) {
              onProgress(progress);
            }
          }
        },
      );

      print("Download completed. Starting installation...");
      final result = await OpenFilex.open(savePath);

      if (result.type != ResultType.done) {
        String err = "Could not open update file: ${result.message}";
        print(err);
        if (onError != null) onError(err);
      }
    } catch (e) {
      String err = "Error during update: $e";
      print(err);
      if (onError != null) onError(err);
    }
  }

  /// Show update dialog to the user
  static void showUpdateDialog(BuildContext context, UpdateInfoModel updateInfo) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        double downloadProgress = 0.0;
        bool isDownloading = false;

        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text("تحديث جديد متاح (${updateInfo.latestVersionName})"),
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
                    Text("جاري التحميل: ${downloadProgress.toStringAsFixed(0)}%"),
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
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        },
                      );
                    },
                    child: const Text("تحديث الآن"),
                  ),
                if (isDownloading)
                  const Center(child: Text("يرجى الانتظار حتى اكتمال التحميل...")),
              ],
            );
          },
        );
      },
    );
  }
}
