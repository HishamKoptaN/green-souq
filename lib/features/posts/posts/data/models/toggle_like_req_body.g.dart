// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_like_req_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostLikeReqBody _$PostLikeReqBodyFromJson(Map<String, dynamic> json) =>
    _PostLikeReqBody(
      likeableId: (json['likeable_id'] as num?)?.toInt(),
      likeableType: json['likeable_type'] as String?,
    );

Map<String, dynamic> _$PostLikeReqBodyToJson(_PostLikeReqBody instance) =>
    <String, dynamic>{
      'likeable_id': instance.likeableId,
      'likeable_type': instance.likeableType,
    };
