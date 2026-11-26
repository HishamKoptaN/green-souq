import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/suggestion_entity.dart';

part 'suggestion_model.freezed.dart';

@freezed
abstract class SuggestionModel with _$SuggestionModel {
  const factory SuggestionModel({
    required String id,
    required String title,
    required String description,
    required DateTime createdAt,
    required String userId,
  }) = _SuggestionModel;

  const SuggestionModel._();

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

  SuggestionEntity toEntity() {
    return SuggestionEntity(
      id: id,
      title: title,
      description: description,
      createdAt: createdAt,
      userId: userId,
    );
  }
}
