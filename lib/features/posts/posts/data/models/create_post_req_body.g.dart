// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_req_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePostReqBody _$CreatePostReqBodyFromJson(Map<String, dynamic> json) =>
    _CreatePostReqBody(
      type: $enumDecodeNullable(_$PostTypeEnumMap, json['type']),
      content: json['content'] as String?,
      postId: (json['post_id'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      videoUrl: json['video_url'] as String?,
      pdfName: json['pdf_name'] as String?,
      pdfUrl: json['pdf_url'] as String?,
      originalPostId: (json['original_post_id'] as num?)?.toInt(),
      publishAt: json['publish_at'] as String?,
    );

Map<String, dynamic> _$CreatePostReqBodyToJson(_CreatePostReqBody instance) =>
    <String, dynamic>{
      'type': _$PostTypeEnumMap[instance.type],
      'content': instance.content,
      'post_id': instance.postId,
      'image_url': instance.imageUrl,
      'video_url': instance.videoUrl,
      'pdf_name': instance.pdfName,
      'pdf_url': instance.pdfUrl,
      'original_post_id': instance.originalPostId,
      'publish_at': ?instance.publishAt,
    };

const _$PostTypeEnumMap = {
  PostType.social_post: 'social_post',
  PostType.occasion: 'occasion',
  PostType.poll: 'poll',
  PostType.company_post: 'company_post',
  PostType.news: 'news',
  PostType.servReq: 'servReq',
  PostType.shared_post: 'shared_post',
  PostType.scheduled: 'scheduled',
  PostType.draft: 'draft',
};
