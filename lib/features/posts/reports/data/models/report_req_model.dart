import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/report_req.dart';

part 'report_req_model.freezed.dart';
part 'report_req_model.g.dart';

@freezed
abstract class ReportReqModel with _$ReportReqModel {
  const ReportReqModel._();
  const factory ReportReqModel({
    required int id,
    required String type,
    required String reason,
  }) = _ReportReqModel;

  factory ReportReqModel.fromJson(Map<String, dynamic> json) =>
      _$ReportReqModelFromJson(json);

  factory ReportReqModel.fromEntity(ReportReq entity) =>
      ReportReqModel(id: entity.id, type: entity.type, reason: entity.reason);

  ReportReq toEntity() => ReportReq(id: id, type: type, reason: reason);
}
