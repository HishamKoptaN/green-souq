class UpdateInfoModel {
  final int latestVersionCode;
  final String latestVersionName;
  final String apkUrl;
  final String releaseNotes;

  UpdateInfoModel({
    required this.latestVersionCode,
    required this.latestVersionName,
    required this.apkUrl,
    required this.releaseNotes,
  });

  factory UpdateInfoModel.fromJson(Map<String, dynamic> json) {
    return UpdateInfoModel(
      latestVersionCode: json['latestVersionCode'] ?? 0,
      latestVersionName: json['latestVersionName'] ?? '1.0.0',
      apkUrl: json['apkUrl'] ?? '',
      releaseNotes: json['releaseNotes'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latestVersionCode': latestVersionCode,
      'latestVersionName': latestVersionName,
      'apkUrl': apkUrl,
      'releaseNotes': releaseNotes,
    };
  }
}
