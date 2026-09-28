// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmnt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cmnt _$CmntFromJson(Map<String, dynamic> json) => _Cmnt(
  id: (json['id'] as num?)?.toInt(),
  comment: json['comment'] as String?,
  imageUrl: json['image_url'],
  videoUrl: json['video_url'],
  commentOwner: json['comment_owner'] == null
      ? null
      : PostOwner.fromJson(json['comment_owner'] as Map<String, dynamic>),
  isOwner: json['isOwner'] as bool?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$CmntToJson(_Cmnt instance) => <String, dynamic>{
  'id': instance.id,
  'comment': instance.comment,
  'image_url': instance.imageUrl,
  'video_url': instance.videoUrl,
  'comment_owner': instance.commentOwner,
  'isOwner': instance.isOwner,
  'created_at': instance.createdAt,
};
