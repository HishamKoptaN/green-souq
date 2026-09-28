import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/cmnt_model.dart';
part 'cmnts_state.freezed.dart';

@freezed
class CmntsState with _$CmntsState {
  const factory CmntsState.initial() = _Initial;
  const factory CmntsState.success({
    required bool create,
    required bool share,
  }) = _Success;
  const factory CmntsState.cmntsLoading() = _CmntsLoading;
  const factory CmntsState.cmntsloaded({
    required List<Cmnt>? cmnts,
    required bool? hasMore,
  }) = _CmntsLoaded;
  const factory CmntsState.getCmntsFailure({required ErrorInfo errorInfo}) =
      _GetCmntsFailure;
  const factory CmntsState.createCmntFailure({required ErrorInfo errorInfo}) =
      _CreateCmntFailure;
}
