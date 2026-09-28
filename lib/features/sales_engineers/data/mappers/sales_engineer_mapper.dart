import '../../../../core/entities/meta_entity.dart';
import '../../../../core/mapper/meta_mapper.dart';
import '../../domain/entities/sales_engineer_entity.dart';
import '../../domain/entities/sales_engineers_res_entity.dart';
import '../models/sales_engineer_model.dart';
import '../models/sales_engineers_res_model.dart';

extension SalesEngineersResModelMapper on SalesEngineersResModel {
  SalesEngineersResEntity toEntity() {
    return SalesEngineersResEntity(
      salesEngineers:
          salesEngineers?.map((e) {
            return e.toEntity();
          }).toList() ??
          [],
      meta: meta?.toEntity() ?? MetaEntity(),
    );
  }
}

extension SalesEngineerModelMapper on SalesEngineerModel {
  SalesEngineerEntity toEntity() {
    return SalesEngineerEntity(
      id: id?.toString() ?? '',
      name: name ?? '',
      userType: userType ?? '',
      phone: phone ?? '',
      email: email ?? '',
      rating: rating ?? 0.0,
      ratingAverage: ratingAverage,
      ratingsCount: ratingsCount,
      address: address ?? '',
      latitude: latitude,
      longitude: longitude,
    );
  }
}
