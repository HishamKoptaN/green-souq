import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_model.freezed.dart';
part 'shop_model.g.dart';

@freezed
abstract class ShopModel with _$ShopModel {
  const factory ShopModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'rating') @Default(0) int rating,
    @JsonKey(name: 'rating_average') @Default(0.0) double ratingAverage,
    @JsonKey(name: 'ratings_count') @Default(0) int ratingsCount,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'longitude') String? longitude,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, Object?> json) =>
      _$ShopModelFromJson(json);
}
