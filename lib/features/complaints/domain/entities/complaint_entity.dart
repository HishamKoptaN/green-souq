class ComplaintEntity {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
  final String userId;

  const ComplaintEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    this.userId = '',
  });

  bool hasChanges({required String newTitle, required String newDescription}) {
    return newTitle.trim() != title.trim() ||
        newDescription.trim() != description.trim();
  }
}
