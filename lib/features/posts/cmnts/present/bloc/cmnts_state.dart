part of 'cmnts_bloc.dart';

@freezed
class CmntsState with _$CmntsState {
  const factory CmntsState.success({
    required bool create,
    required bool share,
  }) = _Success;
  const factory CmntsState.loading() = _CmntsLoading;
  const factory CmntsState.loaded({
    @Default(CmntsResModel(cmnts: [], meta: MetaModel()))
    CmntsResModel cmntsRes,
    @Default(CreateCmntEntity()) CreateCmntEntity createCmnt,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory CmntsState.failure({required ErrorInfo errorInfo}) = _Failure;
}
