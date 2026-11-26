import 'package:flutter/material.dart';

import '../../../domain/entities/onboarding_slide_entity.dart';

class OnboardingSlideImage extends StatelessWidget {
  const OnboardingSlideImage({
    super.key,
    required this.slide,
    required this.languageCode,
  });

  final OnboardingSlideEntity slide;
  final String languageCode;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      slide.imagePathFor(languageCode),
      fit: .cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
