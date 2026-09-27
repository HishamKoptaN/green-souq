import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String phone,
    @Default('') String email,
    @Default(0.0) double rating,
    @Default(0.0) double ratingAverage,
    @Default(0) int ratingsCount,
    @Default('') String distance,
    @Default('') String address,
    String? latitude,
    String? longitude,
    String? userType,
    @Default('') String createdAt,
  }) = _UserEntity;
}
