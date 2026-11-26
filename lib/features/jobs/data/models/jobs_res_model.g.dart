// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobsResModel _$JobsResModelFromJson(Map<String, dynamic> json) =>
    _JobsResModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => JobModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <JobModel>[],
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobsResModelToJson(_JobsResModel instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
