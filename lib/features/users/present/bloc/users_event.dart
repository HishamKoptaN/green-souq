part of 'users_bloc.dart';

@freezed
abstract class UsersEvent with _$UsersEvent {
  const factory UsersEvent.getUsers({@Default(1) int page, String? query}) =
      _GetUsers;
  const factory UsersEvent.recordVisit({required String id}) = _RecordVisit;
}
