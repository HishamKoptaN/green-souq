import '../entities/onboarding_slide_entity.dart';

abstract interface class OnboardingRepository {
  List<OnboardingSlideEntity> getSlides();

  Future<bool> isCompleted();

  Future<void> markCompleted();

  Future<void> resetCompleted();
}
