import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/notifications/domain/entities/notification_entity.dart';
import 'package:green/features/notifications/domain/repo/notifications_repo.dart';
import 'package:green/features/notifications/domain/usecases/notifications_use_cases.dart';
import 'package:mocktail/mocktail.dart';

class MockNotificationsRepo extends Mock implements NotificationsRepo {}

void main() {
  late MockNotificationsRepo repo;
  const items = [
    NotificationEntity(id: '1', title: 'ت', body: 'ب', createdAt: 'اليوم'),
  ];

  setUp(() {
    repo = MockNotificationsRepo();
  });

  test('delegates fetching notifications to the repository', () async {
    when(() => repo.getNotifications()).thenAnswer(
      (_) async => const ExecuteGuard.success(data: items),
    );

    final result = await NotificationsUseCases(repo).getNotifications();

    result.maybeWhen(
      success: (data) {
        expect(data, items);
      },
      orElse: () {
        fail('expected success');
      },
    );
  });

  test('delegates marking a notification as read', () async {
    when(
      () => repo.markAsRead(id: any(named: 'id')),
    ).thenAnswer((_) async => const ExecuteGuard.success(data: null));

    await NotificationsUseCases(repo).markAsRead(id: '1');

    verify(() => repo.markAsRead(id: '1')).called(1);
  });
}
