// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_poll_req_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePollReqBody _$CreatePollReqBodyFromJson(Map<String, dynamic> json) =>
    _CreatePollReqBody(
      period: (json['period'] as num?)?.toInt(),
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ["", ""],
    );

Map<String, dynamic> _$CreatePollReqBodyToJson(_CreatePollReqBody instance) =>
    <String, dynamic>{'period': instance.period, 'options': instance.options};
