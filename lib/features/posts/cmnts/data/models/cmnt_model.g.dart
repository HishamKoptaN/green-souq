// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmnt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CmntModel _$CmntModelFromJson(Map<String, dynamic> json) => _CmntModel(
  id: (json['id'] as num).toInt(),
  comment: json['comment'] as String?,
  author: json['author'] == null
      ? null
      : AuthorModel.fromJson(json['author'] as Map<String, dynamic>),
  isAuthor: json['is_author'] as bool?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$CmntModelToJson(_CmntModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'author': instance.author,
      'is_author': instance.isAuthor,
      'created_at': instance.createdAt,
    };
