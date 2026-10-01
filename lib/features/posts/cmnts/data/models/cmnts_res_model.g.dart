// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmnts_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CmntsResModel _$CmntsResModelFromJson(Map<String, dynamic> json) =>
    _CmntsResModel(
      cmnts: (json['data'] as List<dynamic>)
          .map((e) => CmntModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CmntsResModelToJson(_CmntsResModel instance) =>
    <String, dynamic>{'data': instance.cmnts, 'meta': instance.meta};
