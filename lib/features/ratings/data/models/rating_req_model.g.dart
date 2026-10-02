// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RatingReqModel _$RatingReqModelFromJson(Map<String, dynamic> json) =>
    _RatingReqModel(
      id: (json['rateable_id'] as num).toInt(),
      type: json['rateable_type'] as String,
      rating: (json['rating'] as num).toInt(),
    );

Map<String, dynamic> _$RatingReqModelToJson(_RatingReqModel instance) =>
    <String, dynamic>{
      'rateable_id': instance.id,
      'rateable_type': instance.type,
      'rating': instance.rating,
    };
