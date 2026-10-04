// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileReqModel _$UpdateProfileReqModelFromJson(
  Map<String, dynamic> json,
) => _UpdateProfileReqModel(
  avatar: json['avatar'] as String?,
  name: json['name'] as String?,
  bio: json['bio'] as String?,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
);

Map<String, dynamic> _$UpdateProfileReqModelToJson(
  _UpdateProfileReqModel instance,
) => <String, dynamic>{
  'avatar': ?instance.avatar,
  'name': ?instance.name,
  'bio': ?instance.bio,
  'phone': ?instance.phone,
  'address': ?instance.address,
  'latitude': ?instance.latitude,
  'longitude': ?instance.longitude,
};
