import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/entities/meta_entity.dart';

part 'notification_entity.freezed.dart';

@freezed
abstract class NotificationResEntity with _$NotificationResEntity {
  const factory NotificationResEntity({
    required MetaEntity meta,
    required List<NotificationEntity> data,
  }) = _NotificationResEntity;
}

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required String id,
    required String title,
    required String body,
    required String createdAt,
    String? imageUrl,
    @Default(false) bool read,
  }) = _NotificationEntity;
}
