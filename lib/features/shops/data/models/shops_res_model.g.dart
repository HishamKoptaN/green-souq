// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShopsResModel _$ShopsResModelFromJson(Map<String, dynamic> json) =>
    _ShopsResModel(
      shops: (json['data'] as List<dynamic>?)
          ?.map((e) => ShopModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShopsResModelToJson(_ShopsResModel instance) =>
    <String, dynamic>{'data': instance.shops, 'meta': instance.meta};
