// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presigned_url_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PresignedUrlResModel _$PresignedUrlResModelFromJson(
  Map<String, dynamic> json,
) => _PresignedUrlResModel(
  disk: json['disk'] as String,
  uploadUrl: json['upload_url'] as String?,
  filePath: json['file_path'] as String?,
  contentType: json['content_type'] as String?,
  overwrite: json['overwrite'],
  publicId: json['public_id'],
  timestamp: json['timestamp'],
  apiKey: json['api_key'] as String?,
  signature: json['signature'] as String?,
);

Map<String, dynamic> _$PresignedUrlResModelToJson(
  _PresignedUrlResModel instance,
) => <String, dynamic>{
  'disk': instance.disk,
  'upload_url': instance.uploadUrl,
  'file_path': instance.filePath,
  'content_type': instance.contentType,
  'overwrite': instance.overwrite,
  'public_id': instance.publicId,
  'timestamp': instance.timestamp,
  'api_key': instance.apiKey,
  'signature': instance.signature,
};
