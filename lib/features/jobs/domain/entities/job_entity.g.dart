// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobEntity _$JobEntityFromJson(Map<String, dynamic> json) => _JobEntity(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  location: json['location'] as String,
  companyName: json['companyName'] as String,
);

Map<String, dynamic> _$JobEntityToJson(_JobEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'companyName': instance.companyName,
    };
