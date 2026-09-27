import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/features/shops/data/models/shop_model.dart';

import '../../../../core/models/meta_model.dart';
part 'shops_res_model.freezed.dart';
part 'shops_res_model.g.dart';

@freezed
abstract class ShopsResModel with _$ShopsResModel {
  const factory ShopsResModel({
    @JsonKey(name: 'data') List<ShopModel>? shops,
    MetaModel? meta,
  }) = _ShopsResModel;

  factory ShopsResModel.fromJson(Map<String, Object?> json) =>
      _$ShopsResModelFromJson(json);
}
