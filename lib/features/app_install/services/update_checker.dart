import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../data/models/update_info_model.dart';

class UpdateChecker {
  static Future<UpdateInfoModel?> checkForUpdate(String jsonUrl) async {
    try {
      final dio = Dio();
      final response = await dio.get(jsonUrl);

      if (response.statusCode == 200 && response.data != null) {
        final Map<String, dynamic> data = response.data is Map<String, dynamic>
            ? response.data
            : Map<String, dynamic>.from(response.data);

        final serverUpdate = UpdateInfoModel.fromJson(data);
        final packageInfo = await PackageInfo.fromPlatform();
        final int currentVersionCode =
            int.tryParse(packageInfo.buildNumber) ?? 1;

        if (serverUpdate.latestVersionCode > currentVersionCode) {
          return serverUpdate;
        }
      }
    } catch (_) {}
    return null;
  }
}
