import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_engineer_model.freezed.dart';
part 'sales_engineer_model.g.dart';

@freezed
abstract class SalesEngineerModel with _$SalesEngineerModel {
  const factory SalesEngineerModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: 'rating_average') @Default(0.0) double ratingAverage,
    @JsonKey(name: 'ratings_count') @Default(0) int ratingsCount,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
  }) = _SalesEngineerModel;

  factory SalesEngineerModel.fromJson(Map<String, Object?> json) =>
      _$SalesEngineerModelFromJson(json);
}
