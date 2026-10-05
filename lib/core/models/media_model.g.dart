// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => _MediaModel(
  id: (json['id'] as num?)?.toInt(),
  mediableType: json['mediable_type'] as String?,
  mediableId: (json['mediable_id'] as num?)?.toInt(),
  filePath: json['file_path'] as String?,
  disk: json['disk'] as String?,
  fileType: json['file_type'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$MediaModelToJson(_MediaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediable_type': instance.mediableType,
      'mediable_id': instance.mediableId,
      'file_path': instance.filePath,
      'disk': instance.disk,
      'file_type': instance.fileType,
      'metadata': instance.metadata,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
