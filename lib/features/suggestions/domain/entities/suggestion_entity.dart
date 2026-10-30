class SuggestionEntity {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;

  const SuggestionEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
  });

  bool hasChanges({
    required String newTitle,
    required String newDescription,
  }) {
    return title != newTitle || description != newDescription;
  }
}
