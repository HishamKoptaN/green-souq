// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_occasion_req_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOccasionReqBody _$CreateOccasionReqBodyFromJson(
  Map<String, dynamic> json,
) => _CreateOccasionReqBody(
  title: json['title'] as String?,
  description: json['description'] as String?,
  link: json['link'] as String?,
  startAt: json['start_at'] == null
      ? null
      : DateTime.parse(json['start_at'] as String),
  endAt: json['end_at'] == null
      ? null
      : DateTime.parse(json['end_at'] as String),
  acceptTermsAndConditions: json['acceptTermsAndConditions'] as bool?,
);

Map<String, dynamic> _$CreateOccasionReqBodyToJson(
  _CreateOccasionReqBody instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'link': instance.link,
  'start_at': instance.startAt?.toIso8601String(),
  'end_at': instance.endAt?.toIso8601String(),
  'acceptTermsAndConditions': instance.acceptTermsAndConditions,
};
