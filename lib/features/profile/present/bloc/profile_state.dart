part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.loaded({
    required EditableProfileEntity editableProfileReq,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ProfileState.success() = _Success;
  const factory ProfileState.failure({required String error}) = _Failure;
  UserType? get userType => maybeMap(
    loaded: (st) {
      return st.editableProfileReq.userType;
    },
    orElse: () {
      return null;
    },
  );
}
