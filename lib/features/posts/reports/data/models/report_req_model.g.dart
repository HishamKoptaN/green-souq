// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportReqModel _$ReportReqModelFromJson(Map<String, dynamic> json) =>
    _ReportReqModel(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$ReportReqModelToJson(_ReportReqModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'reason': instance.reason,
    };
