// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpReqModel _$SignUpReqModelFromJson(Map<String, dynamic> json) =>
    _SignUpReqModel(
      name: json['name'] as String,
      phone: json['phone'] as String,
      idToken: json['id_token'] as String,
      userType: json['user_type'] as String,
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SignUpReqModelToJson(_SignUpReqModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'id_token': instance.idToken,
      'user_type': instance.userType,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
