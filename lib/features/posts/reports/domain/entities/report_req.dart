import 'package:freezed_annotation/freezed_annotation.dart';
part 'report_req.freezed.dart';

@freezed
abstract class ReportReq with _$ReportReq {
  const factory ReportReq({
    required int id,
    required String type,
    required String reason,
  }) = _ReportReq;
}
