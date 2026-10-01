// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) => _AuthorModel(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String?,
  name: json['name'] as String?,
  bio: json['bio'] as String?,
  avatar: json['avatar'] as String?,
  isFollowing: json['is_following'] as bool?,
);

Map<String, dynamic> _$AuthorModelToJson(_AuthorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'bio': instance.bio,
      'avatar': instance.avatar,
      'is_following': instance.isFollowing,
    };
