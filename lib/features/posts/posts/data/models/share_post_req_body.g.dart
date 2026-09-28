// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_post_req_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SharePostReqBody _$SharePostReqBodyFromJson(Map<String, dynamic> json) =>
    _SharePostReqBody(
      id: (json['id'] as num?)?.toInt(),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$SharePostReqBodyToJson(_SharePostReqBody instance) =>
    <String, dynamic>{'id': instance.id, 'content': instance.content};
