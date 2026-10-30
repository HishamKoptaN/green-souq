class SplashEntity {
  final bool isInitialized;

  const SplashEntity({
    required this.isInitialized,
  });

  bool hasChanges(SplashEntity other) {
    return isInitialized != other.isInitialized;
  }
}
