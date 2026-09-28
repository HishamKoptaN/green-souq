// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_serv_req_req_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateServReqReqBody _$CreateServReqReqBodyFromJson(
  Map<String, dynamic> json,
) => _CreateServReqReqBody(
  title: json['title'] as String?,
  details: json['details'] as String?,
  specializationId: (json['specialization_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$CreateServReqReqBodyToJson(
  _CreateServReqReqBody instance,
) => <String, dynamic>{
  'title': instance.title,
  'details': instance.details,
  'specialization_id': instance.specializationId,
};
