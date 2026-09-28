// lib/features/reports/data/mappers/report_mapper.dart
import '../../domain/entities/report_req.dart';
import '../models/report_req_model.dart';

class ReportMapper {
  static ReportReqModel entityToModel(ReportReq entity) {
    return ReportReqModel(
      id: entity.id,
      type: entity.type,
      reason: entity.reason,
    );
  }

  static ReportReq modelToEntity(ReportReqModel model) {
    return ReportReq(
      id: model.id,
      type: model.type,
      reason: model.reason,
    );
  }
}
