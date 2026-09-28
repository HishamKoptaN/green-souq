import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/models/meta_model.dart';

import 'sales_engineer_model.dart';

part 'sales_engineers_res_model.freezed.dart';
part 'sales_engineers_res_model.g.dart';

@freezed
abstract class SalesEngineersResModel with _$SalesEngineersResModel {
  const factory SalesEngineersResModel({
    @JsonKey(name: 'data') List<SalesEngineerModel>? salesEngineers,
    MetaModel? meta,
  }) = _SalesEngineersResModel;

  factory SalesEngineersResModel.fromJson(Map<String, Object?> json) =>
      _$SalesEngineersResModelFromJson(json);
}
