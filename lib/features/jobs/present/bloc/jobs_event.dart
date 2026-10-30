part of 'jobs_bloc.dart';

@freezed
abstract class JobsEvent with _$JobsEvent {
  const factory JobsEvent.fetch() = _Fetch;
}
