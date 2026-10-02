class RatingUpdatedEvent {
  final int rateableId;
  final String rateableType;
  final int newRating;

  RatingUpdatedEvent({
    required this.rateableId,
    required this.rateableType,
    required this.newRating,
  });
}
