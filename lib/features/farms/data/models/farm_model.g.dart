// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FarmModel _$FarmModelFromJson(Map<String, dynamic> json) => _FarmModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  location: json['location'] as String? ?? '',
);

Map<String, dynamic> _$FarmModelToJson(_FarmModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
    };
