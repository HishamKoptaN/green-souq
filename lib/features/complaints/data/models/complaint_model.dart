import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/complaint_entity.dart';

part 'complaint_model.freezed.dart';

@freezed
abstract class ComplaintModel with _$ComplaintModel {
  const factory ComplaintModel({
    required String id,
    required String title,
    required String description,
    required DateTime createdAt,
    required String userId,
  }) = _ComplaintModel;

  const ComplaintModel._();

  factory ComplaintModel.fromMap(Map<String, dynamic> map, String id) {
    return ComplaintModel(
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

  ComplaintEntity toEntity() {
    return ComplaintEntity(
      id: id,
      title: title,
      description: description,
      createdAt: createdAt,
      userId: userId,
    );
  }
}
