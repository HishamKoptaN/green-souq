// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      id: (json['id'] as num).toInt(),
      userType: json['userType'] as String?,
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      bio: json['bio'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userType': instance.userType,
      'avatar': instance.avatar,
      'name': instance.name,
      'bio': instance.bio,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone': instance.phone,
      'created_at': instance.createdAt,
    };
