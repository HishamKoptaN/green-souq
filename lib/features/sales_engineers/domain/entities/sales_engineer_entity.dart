import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_engineer_entity.freezed.dart';

@freezed
abstract class SalesEngineerEntity with _$SalesEngineerEntity {
  const factory SalesEngineerEntity({
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
  }) = _SalesEngineerEntity;
}
