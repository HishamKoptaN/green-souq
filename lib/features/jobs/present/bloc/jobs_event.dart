part of 'jobs_bloc.dart';

@freezed
abstract class JobsEvent with _$JobsEvent {
  const factory JobsEvent.fetch({
    @Default(1) int page,
    String? query,
    @Default(false) bool append,
  }) = _Fetch;
}
