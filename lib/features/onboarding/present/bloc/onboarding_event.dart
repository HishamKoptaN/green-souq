part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.started() = _Started;
  const factory OnboardingEvent.pageChanged({required int pageIndex}) =
      _PageChanged;
  const factory OnboardingEvent.completed() = _Completed;
  const factory OnboardingEvent.replay() = _Replay;
}
