part of 'users_bloc.dart';

@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.loading() = _Loading;
  const factory UsersState.loaded({required UsersResEntity usersRes}) = _Loaded;
  const factory UsersState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
