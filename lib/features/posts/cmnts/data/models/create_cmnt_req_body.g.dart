// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cmnt_req_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCmntReqBody _$CreateCmntReqBodyFromJson(Map<String, dynamic> json) =>
    _CreateCmntReqBody(
      comment: json['comment'] as String?,
      imageUrl: json['image_url'] as String?,
      videoUrl: json['video_url'] as String?,
      commentableId: (json['commentable_id'] as num?)?.toInt(),
      commentableType: json['commentable_type'] as String?,
    );

Map<String, dynamic> _$CreateCmntReqBodyToJson(_CreateCmntReqBody instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'image_url': instance.imageUrl,
      'video_url': instance.videoUrl,
      'commentable_id': instance.commentableId,
      'commentable_type': instance.commentableType,
    };
