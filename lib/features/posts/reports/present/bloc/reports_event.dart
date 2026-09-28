import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/report_req.dart';
part 'reports_event.freezed.dart';

@freezed
abstract class ReportEvent with _$ReportEvent {
  const factory ReportEvent.report({required ReportReq? reportReq}) = _Report;
}
