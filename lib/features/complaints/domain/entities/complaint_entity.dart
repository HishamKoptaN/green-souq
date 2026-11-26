import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaint_entity.freezed.dart';

@freezed
abstract class ComplaintEntity with _$ComplaintEntity {
  const factory ComplaintEntity({
    required String id,
    required String title,
    required String description,
    required DateTime createdAt,
    @Default('') String userId,
  }) = _ComplaintEntity;

  const ComplaintEntity._();

  bool hasChanges({required String newTitle, required String newDescription}) {
    return newTitle.trim() != title.trim() ||
        newDescription.trim() != description.trim();
  }
}
