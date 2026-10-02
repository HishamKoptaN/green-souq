import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_entity.freezed.dart';

@freezed
abstract class ShopEntity with _$ShopEntity {
  const ShopEntity._();

  const factory ShopEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String bio,
    @Default('') String phone,
    @Default(0) int rating,
    @Default(0.0) double ratingAverage,
    @Default(0) int ratingsCount,
    @Default('') String distance,
    @Default('') String address,
    String? latitude,
    String? longitude,
    String? userType,
    @Default('') String createdAt,
  }) = _ShopEntity;

  int get initialRating => rating.round() > 0
      ? rating.round()
      : (ratingAverage.round() > 0 ? ratingAverage.round() : 4);

  bool hasChanges(int currentRating) => currentRating != initialRating;
}
