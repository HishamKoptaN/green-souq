// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_engineers_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesEngineersResModel _$SalesEngineersResModelFromJson(
  Map<String, dynamic> json,
) => _SalesEngineersResModel(
  salesEngineers: (json['data'] as List<dynamic>?)
      ?.map((e) => SalesEngineerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SalesEngineersResModelToJson(
  _SalesEngineersResModel instance,
) => <String, dynamic>{'data': instance.salesEngineers, 'meta': instance.meta};
