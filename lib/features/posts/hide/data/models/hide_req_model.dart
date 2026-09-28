import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/hide_req.dart';

part 'hide_req_model.freezed.dart';
part 'hide_req_model.g.dart';

@freezed
abstract class HideReqModel with _$HideReqModel {
  const HideReqModel._();

  const factory HideReqModel({required int id, required String type}) =
      _HideReqModel;

  factory HideReqModel.fromJson(Map<String, dynamic> json) =>
      _$HideReqModelFromJson(json);

  factory HideReqModel.fromEntity(HideReq entity) =>
      HideReqModel(id: entity.id, type: entity.type);

  HideReq toEntity() => HideReq(id: id, type: type);
}
