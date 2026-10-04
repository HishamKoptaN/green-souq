part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.loaded({
    required ProfileStateEntity profileState,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ProfileState.success() = _Success;
  const factory ProfileState.failure({required String error}) = _Failure;

  ProfileStateEntity? get profile {
    return maybeMap(
      loaded: (st) {
        return st.profileState;
      },
      orElse: () {
        return null;
      },
    );
  }
}
