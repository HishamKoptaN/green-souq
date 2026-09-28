// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FollowersResModel _$FollowersResModelFromJson(Map<String, dynamic> json) =>
    _FollowersResModel(
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => FollowerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FollowersResModelToJson(_FollowersResModel instance) =>
    <String, dynamic>{'followers': instance.followers, 'meta': instance.meta};
