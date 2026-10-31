part of 'complaints_bloc.dart';

@freezed
class ComplaintsEvent with _$ComplaintsEvent {
  const factory ComplaintsEvent.started() = _Started;
  const factory ComplaintsEvent.create({
    required String title,
    required String description,
  }) = _Create;
}
