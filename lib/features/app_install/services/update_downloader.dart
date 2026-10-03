import 'dart:io';

import 'package:dio/dio.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

class UpdateDownloader {
  static Future<void> downloadAndInstallUpdate(
    String apkUrl, {
    Function(double progress)? onProgress,
    Function(String error)? onError,
  }) async {
    try {
      Directory? directory = await getExternalStorageDirectory();
      directory ??= await getApplicationDocumentsDirectory();
      String savePath = "${directory.path}/update.apk";

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
            if (onProgress != null) {
              onProgress(progress);
            }
          }
        },
      );

      final result = await OpenFilex.open(savePath);
      if (result.type != ResultType.done) {
        String err = "Could not open update file: ${result.message}";
        if (onError != null) onError(err);
      }
    } catch (e) {
      String err = "Error during update: $e";
      if (onError != null) onError(err);
    }
  }
}
