import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_slide_entity.freezed.dart';

@freezed
abstract class OnboardingSlideEntity with _$OnboardingSlideEntity {
  const factory OnboardingSlideEntity({
    required String imagePath,
    required String title,
    String? englishImagePath,
  }) = _OnboardingSlideEntity;

  const OnboardingSlideEntity._();

  String imagePathFor(String languageCode) {
    if (languageCode == 'ar' || englishImagePath == null) {
      return imagePath;
    }
    return englishImagePath!;
  }
}
