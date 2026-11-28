import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/notifications/data/mappers/notification_mapper.dart';
import 'package:green/features/notifications/data/models/notification_model.dart';

void main() {
  test('maps a notification model into an entity', () {
    const model = NotificationModel(
      id: 7,
      title: 'عنوان الإشعار',
      body: 'نص الإشعار',
      createdAt: '2026-11-27T10:00:00Z',
    );

    final entity = model.toEntity();

    expect(entity.id, '7');
    expect(entity.title, 'عنوان الإشعار');
    expect(entity.body, 'نص الإشعار');
    expect(entity.read, isFalse);
  });

  test('uses empty strings for missing notification fields', () {
    final entity = const NotificationModel().toEntity();

    expect(entity.id, 'null');
    expect(entity.title, '');
    expect(entity.body, '');
  });
}
