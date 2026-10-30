part of 'jobs_bloc.dart';

@freezed
abstract class JobsState with _$JobsState {
  const factory JobsState.initial() = _Initial;
  const factory JobsState.loading() = _Loading;
  const factory JobsState.loaded(List<JobEntity> jobs) = _Loaded;
  const factory JobsState.error(String message) = _Error;
}
