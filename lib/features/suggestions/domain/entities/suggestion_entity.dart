class SuggestionEntity {
  final String id;
  final String title;
  final String description;
  final bool isModified;

  const SuggestionEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.isModified,
  });

  bool hasChanges(SuggestionEntity original) {
    {
      return title != original.title || description != original.description;
    }
  }
}
