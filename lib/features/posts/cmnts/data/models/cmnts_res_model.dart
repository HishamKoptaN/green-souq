import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/meta_model.dart';
import 'cmnt_model.dart';
part 'cmnts_res_model.freezed.dart';
part 'cmnts_res_model.g.dart';

@freezed
abstract class CmntsResModel with _$CmntsResModel {
  const factory CmntsResModel({List<Cmnt>? cmnts, MetaModel? meta}) =
      _CmntsResModel;

  factory CmntsResModel.fromJson(Map<String, dynamic> json) =>
      _$CmntsResModelFromJson(json);
}
