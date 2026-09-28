// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_engineer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesEngineerModel _$SalesEngineerModelFromJson(Map<String, dynamic> json) =>
    _SalesEngineerModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      userType: json['user_type'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratingAverage: (json['rating_average'] as num?)?.toDouble() ?? 0.0,
      ratingsCount: (json['ratings_count'] as num?)?.toInt() ?? 0,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$SalesEngineerModelToJson(_SalesEngineerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_type': instance.userType,
      'phone': instance.phone,
      'email': instance.email,
      'rating': instance.rating,
      'rating_average': instance.ratingAverage,
      'ratings_count': instance.ratingsCount,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
