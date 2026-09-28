// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follower_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FollowerModel _$FollowerModelFromJson(Map<String, dynamic> json) =>
    _FollowerModel(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$FollowerModelToJson(_FollowerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'image': instance.image,
    };
