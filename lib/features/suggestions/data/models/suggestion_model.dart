import '../../domain/entities/suggestion_entity.dart';

class SuggestionModel extends SuggestionEntity {
  const SuggestionModel({
    required super.id,
    required super.title,
    required super.description,
    required super.createdAt,
  });

  factory SuggestionModel.fromMap(Map<String, dynamic> map, String id) {
    return SuggestionModel(
      id: id,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }
}
