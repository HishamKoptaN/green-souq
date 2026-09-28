import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reports_state.freezed.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  const factory ReportState.loading() = _Loading;
  const factory ReportState.success() = _Success;
  const factory ReportState.failure({required ErrorInfo errorInfo}) = _Failure;
}
