part of 'complaints_bloc.dart';

@freezed
class ComplaintsState with _$ComplaintsState {
  const factory ComplaintsState.initial() = _Initial;
  const factory ComplaintsState.loading() = _Loading;
  const factory ComplaintsState.loaded(List<ComplaintEntity> complaints) = _Loaded;
  const factory ComplaintsState.failure(String message) = _Failure;
}
