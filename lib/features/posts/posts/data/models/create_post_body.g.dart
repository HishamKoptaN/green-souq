// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePostModel _$CreatePostModelFromJson(Map<String, dynamic> json) =>
    _CreatePostModel(
      type: $enumDecodeNullable(_$PostTypeEnumMap, json['type']),
      content: json['content'] as String?,
      postId: (json['post_id'] as num?)?.toInt(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => PostMediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatePostModelToJson(_CreatePostModel instance) =>
    <String, dynamic>{
      'type': ?_$PostTypeEnumMap[instance.type],
      'content': instance.content,
      'post_id': instance.postId,
      'media': instance.media,
    };

const _$PostTypeEnumMap = {PostType.social: 'social'};
