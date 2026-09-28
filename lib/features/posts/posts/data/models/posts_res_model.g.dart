// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostsResModel _$PostsResModelFromJson(Map<String, dynamic> json) =>
    _PostsResModel(
      posts: json['posts'] == null
          ? null
          : Posts.fromJson(json['posts'] as Map<String, dynamic>),
      draftPost: json['draft_post'] == null
          ? null
          : Postable.fromJson(json['draft_post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostsResModelToJson(_PostsResModel instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'draft_post': instance.draftPost,
    };

_Posts _$PostsFromJson(Map<String, dynamic> json) => _Posts(
  posts: (json['posts'] as List<dynamic>?)
      ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostsToJson(_Posts instance) => <String, dynamic>{
  'posts': instance.posts,
  'meta': instance.meta,
};

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  postOwner: json['post_owner'] == null
      ? null
      : PostOwner.fromJson(json['post_owner'] as Map<String, dynamic>),
  likesCount: (json['likes_count'] as num?)?.toInt(),
  isLike: json['is_like'] as bool?,
  cmntsCount: (json['cmnts_count'] as num?)?.toInt(),
  cmntersImages: (json['cmnters_images'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  sharesCount: (json['shares_count'] as num?)?.toInt(),
  postable: json['postable'] == null
      ? null
      : Postable.fromJson(json['postable'] as Map<String, dynamic>),
  createdAt: json['created_at'] as String?,
  publishAt: json['publish_at'] as String?,
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'post_owner': instance.postOwner,
  'likes_count': instance.likesCount,
  'is_like': instance.isLike,
  'cmnts_count': instance.cmntsCount,
  'cmnters_images': instance.cmntersImages,
  'shares_count': instance.sharesCount,
  'postable': instance.postable,
  'created_at': instance.createdAt,
  'publish_at': instance.publishAt,
};

_PostOwner _$PostOwnerFromJson(Map<String, dynamic> json) => _PostOwner(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  name: json['name'] as String?,
  image: json['image'] as String?,
  isFollowing: json['is_following'] as bool?,
);

Map<String, dynamic> _$PostOwnerToJson(_PostOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'image': instance.image,
      'is_following': instance.isFollowing,
    };

_Postable _$PostableFromJson(Map<String, dynamic> json) => _Postable(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  details: json['details'] as String?,
  content: json['content'] as String?,
  image: json['image'] as String?,
  video: json['video'] as String?,
  thumbnailUrl: json['thumbnail_url'] as String?,
  pdf: json['pdf'] as String?,
  pdfName: json['pdf_name'] as String?,
  status: (json['status'] as num?)?.toInt(),
  question: json['question'] as String?,
  options: (json['options'] as List<dynamic>?)
      ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
      .toList(),
  selectedOption: (json['selected_option'] as num?)?.toInt(),
  description: json['description'] as String?,
  sharedPost: json['shared_post'] == null
      ? null
      : Post.fromJson(json['shared_post'] as Map<String, dynamic>),
  interestedCount: (json['interested_count'] as num?)?.toInt(),
  isInterested: json['is_interested'] as bool?,
  startAt: json['start_at'] as String?,
  endAt: json['end_at'] as String?,
  isEnded: json['is_ended'] as bool?,
);

Map<String, dynamic> _$PostableToJson(_Postable instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'details': instance.details,
  'content': instance.content,
  'image': instance.image,
  'video': instance.video,
  'thumbnail_url': instance.thumbnailUrl,
  'pdf': instance.pdf,
  'pdf_name': instance.pdfName,
  'status': instance.status,
  'question': instance.question,
  'options': instance.options,
  'selected_option': instance.selectedOption,
  'description': instance.description,
  'shared_post': instance.sharedPost,
  'interested_count': instance.interestedCount,
  'is_interested': instance.isInterested,
  'start_at': instance.startAt,
  'end_at': instance.endAt,
  'is_ended': instance.isEnded,
};

_Option _$OptionFromJson(Map<String, dynamic> json) => _Option(
  id: (json['id'] as num?)?.toInt(),
  option: json['option'] as String?,
  votesCount: (json['votes_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$OptionToJson(_Option instance) => <String, dynamic>{
  'id': instance.id,
  'option': instance.option,
  'votes_count': instance.votesCount,
};
