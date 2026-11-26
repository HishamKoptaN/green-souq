import 'package:injectable/injectable.dart';

import '../../../../core/utils/database/shared_pref_helper.dart';
import '../../domain/entities/onboarding_slide_entity.dart';

@LazySingleton()
class OnboardingLocalDataSource {
  static const _completedKey = 'onboarding_completed_v1';

  static const slides = [
    OnboardingSlideEntity(
      imagePath: 'assets/onboarding/slide-1.jpg',
      englishImagePath: 'assets/onboarding/en/slide-1.jpg',
      title: 'مرحباً بك في سوق الخضر',
    ),
    OnboardingSlideEntity(
      imagePath: 'assets/onboarding/slide-2.jpg',
      englishImagePath: 'assets/onboarding/en/slide-2.jpg',
      title: 'تصفح المحلات',
    ),
    OnboardingSlideEntity(
      imagePath: 'assets/onboarding/slide-3.jpg',
      englishImagePath: 'assets/onboarding/en/slide-3.jpg',
      title: 'استشارة الخبراء',
    ),
    OnboardingSlideEntity(
      imagePath: 'assets/onboarding/slide-4.jpg',
      englishImagePath: 'assets/onboarding/en/slide-4.jpg',
      title: 'الوظائف والفرص الزراعية',
    ),
    OnboardingSlideEntity(
      imagePath: 'assets/onboarding/slide-5.jpg',
      englishImagePath: 'assets/onboarding/en/slide-5.jpg',
      title: 'مجتمع المزارعين',
    ),
  ];

  List<OnboardingSlideEntity> getSlides() => slides;

  Future<bool> isCompleted() {
    return SharedPrefHelper.getBool(key: _completedKey);
  }

  Future<void> markCompleted() {
    return SharedPrefHelper.setData(key: _completedKey, value: true);
  }

  Future<void> resetCompleted() {
    return SharedPrefHelper.setData(key: _completedKey, value: false);
  }
}
