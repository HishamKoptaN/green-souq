class OnboardingSlideEntity {
  const OnboardingSlideEntity({
    required this.imagePath,
    required this.title,
    this.englishImagePath,
  });

  final String imagePath;
  final String title;
  final String? englishImagePath;

  String imagePathFor(String languageCode) {
    if (languageCode == 'ar' || englishImagePath == null) {
      return imagePath;
    }
    return englishImagePath!;
  }
}
