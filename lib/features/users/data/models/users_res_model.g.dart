// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsersResModel _$UsersResModelFromJson(Map<String, dynamic> json) =>
    _UsersResModel(
      users: (json['data'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersResModelToJson(_UsersResModel instance) =>
    <String, dynamic>{'data': instance.users, 'meta': instance.meta};
