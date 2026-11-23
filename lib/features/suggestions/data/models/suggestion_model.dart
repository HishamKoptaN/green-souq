import '../../domain/entities/suggestion_entity.dart';

class SuggestionModel extends SuggestionEntity {
  const SuggestionModel({
    required super.id,
    required super.title,
    required super.description,
    required super.createdAt,
    required super.userId,
  });

  factory SuggestionModel.fromMap(Map<String, dynamic> map, String id) {
    return SuggestionModel(
      id: id,
      title: map['title'] as String? ?? '',
      description: map['description'] as String? ?? '',
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int)
          : DateTime.now(),
      userId: map['userId'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'userId': userId,
    };
  }

  SuggestionModel copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? createdAt,
    String? userId,
  }) {
    return SuggestionModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      userId: userId ?? this.userId,
    );
  }
}
