// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateInfoModel _$UpdateInfoModelFromJson(Map<String, dynamic> json) =>
    _UpdateInfoModel(
      latestVersionCode: (json['latestVersionCode'] as num?)?.toInt() ?? 0,
      latestVersionName: json['latestVersionName'] as String? ?? '1.0.0',
      apkUrl: json['apkUrl'] as String? ?? '',
      releaseNotes: json['releaseNotes'] as String? ?? '',
    );

Map<String, dynamic> _$UpdateInfoModelToJson(_UpdateInfoModel instance) =>
    <String, dynamic>{
      'latestVersionCode': instance.latestVersionCode,
      'latestVersionName': instance.latestVersionName,
      'apkUrl': instance.apkUrl,
      'releaseNotes': instance.releaseNotes,
    };
