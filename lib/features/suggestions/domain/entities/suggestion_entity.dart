import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_entity.freezed.dart';

@freezed
abstract class SuggestionEntity with _$SuggestionEntity {
  const factory SuggestionEntity({
    required String id,
    required String title,
    required String description,
    required DateTime createdAt,
    @Default('') String userId,
  }) = _SuggestionEntity;

  const SuggestionEntity._();

  bool hasChanges({required String newTitle, required String newDescription}) {
    return newTitle.trim() != title.trim() ||
        newDescription.trim() != description.trim();
  }
}
