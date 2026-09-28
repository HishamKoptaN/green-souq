import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hide_state.freezed.dart';

@freezed
class HideState with _$HideState {
  const factory HideState.initial() = _Initial;
  const factory HideState.loading() = _Loading;
  const factory HideState.success() = _Success;
  const factory HideState.failure({required ErrorInfo errorInfo}) = _Failure;
}
