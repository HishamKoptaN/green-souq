import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/entities/meta_entity.dart';

import 'shop_entity.dart';
part 'shops_res_entity.freezed.dart';

@freezed
abstract class ShopsResEntity with _$ShopsResEntity {
  const factory ShopsResEntity({
    @Default([]) List<ShopEntity> shops,
    @Default(ShopEntity()) ShopEntity shopDetails,
    @Default(MetaEntity()) MetaEntity meta,
  }) = _ShopsResEntity;
}
