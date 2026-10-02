import '../../../../core/entities/meta_entity.dart';
import '../../../../core/mapper/meta_mapper.dart';
import '../../domain/entities/shop_entity.dart';
import '../../domain/entities/shops_res_entity.dart';
import '../models/shop_model.dart';
import '../models/shops_res_model.dart';

extension ShopsResModelMapper on ShopsResModel {
  ShopsResEntity toEntity() {
    return ShopsResEntity(
      shops:
          shops?.map((e) {
            return e.toEntity();
          }).toList() ??
          [],
      meta: meta?.toEntity() ?? MetaEntity(),
    );
  }
}

extension ShopModelMapper on ShopModel {
  ShopEntity toEntity() {
    return ShopEntity(
      id: id?.toString() ?? '',
      name: name ?? '',
      userType: userType ?? '',
      phone: phone ?? '',
      rating: rating ?? 0,
      ratingAverage: ratingAverage,
      ratingsCount: ratingsCount,
      address: address ?? '',
      latitude: latitude,
      longitude: longitude,
    );
  }
}
