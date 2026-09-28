import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/entities/meta_entity.dart';

import 'sales_engineer_entity.dart';
part 'sales_engineers_res_entity.freezed.dart';

@freezed
abstract class SalesEngineersResEntity with _$SalesEngineersResEntity {
  const factory SalesEngineersResEntity({
    @Default([]) List<SalesEngineerEntity> salesEngineers,
    @Default(MetaEntity()) MetaEntity meta,
  }) = _SalesEngineersResEntity;
}
