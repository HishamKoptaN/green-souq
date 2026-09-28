import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'occasions_state.freezed.dart';

@freezed
class OccasionsState with _$OccasionsState {
  const factory OccasionsState.initial() = _Initial;
  const factory OccasionsState.ocassionsLoading() = _OcassionsLoading;
  const factory OccasionsState.contentUpdated() = _ContentUpdated;
  const factory OccasionsState.success() = _Success;
  const factory OccasionsState.failure({required ErrorInfo errorInfo}) =
      _Failure;
}
