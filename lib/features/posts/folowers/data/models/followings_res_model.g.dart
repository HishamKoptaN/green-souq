// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followings_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FollowingsResModel _$FollowingsResModelFromJson(Map<String, dynamic> json) =>
    _FollowingsResModel(
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => FollowerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FollowingsResModelToJson(_FollowingsResModel instance) =>
    <String, dynamic>{'followers': instance.followers, 'meta': instance.meta};
