part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.ready({
    @Default(<OnboardingSlideEntity>[]) List<OnboardingSlideEntity> slides,
    @Default(0) int currentPageIndex,
    @Default(false) bool isCompleted,
  }) = _Ready;
}
