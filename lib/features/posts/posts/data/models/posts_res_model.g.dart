// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostsResModel _$PostsResModelFromJson(Map<String, dynamic> json) =>
    _PostsResModel(
      posts: (json['data'] as List<dynamic>?)
          ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostsResModelToJson(_PostsResModel instance) =>
    <String, dynamic>{'data': instance.posts, 'meta': instance.meta};

_PostModel _$PostModelFromJson(Map<String, dynamic> json) => _PostModel(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String?,
  media: (json['media'] as List<dynamic>?)
      ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  author: json['author'] == null
      ? null
      : AuthorModel.fromJson(json['author'] as Map<String, dynamic>),
  postable: json['postable'] == null
      ? null
      : PostableModel.fromJson(json['postable'] as Map<String, dynamic>),
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$PostModelToJson(_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'media': instance.media,
      'author': instance.author,
      'postable': instance.postable,
      'created_at': instance.createdAt,
    };

_PostableModel _$PostableModelFromJson(Map<String, dynamic> json) =>
    _PostableModel(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String?,
      sharedPost: json['shared_post'] == null
          ? null
          : PostModel.fromJson(json['shared_post'] as Map<String, dynamic>),
      likesCount: (json['likes_count'] as num?)?.toInt(),
      isLike: json['is_like'] as bool? ?? false,
      cmntsCount: (json['cmnts_count'] as num?)?.toInt(),
      cmntersImages: (json['cmnters_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sharesCount: (json['shares_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PostableModelToJson(_PostableModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'shared_post': instance.sharedPost,
      'likes_count': instance.likesCount,
      'is_like': instance.isLike,
      'cmnts_count': instance.cmntsCount,
      'cmnters_images': instance.cmntersImages,
      'shares_count': instance.sharesCount,
    };

_OptionModel _$OptionModelFromJson(Map<String, dynamic> json) => _OptionModel(
  id: (json['id'] as num).toInt(),
  option: json['option'] as String?,
  votesCount: (json['votes_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$OptionModelToJson(_OptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'option': instance.option,
      'votes_count': instance.votesCount,
    };
