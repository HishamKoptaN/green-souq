import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/notifications/data/datasources/notifications_api.dart';
import 'package:green/features/notifications/data/models/notification_model.dart';
import 'package:green/features/notifications/data/repo_impl/notifications_repo_impl.dart';
import 'package:mocktail/mocktail.dart';

class MockNotificationsApi extends Mock implements NotificationsApi {}

void main() {
  late MockNotificationsApi api;

  setUp(() {
    api = MockNotificationsApi();
  });

  test('maps notification models into entities', () async {
    when(() => api.get()).thenAnswer(
      (_) async => const [NotificationModel(id: 1, title: 'عنوان', body: 'نص')],
    );

    final result = await NotificationsRepoImpl(api).getNotifications();

    result.maybeWhen(
      success: (data) {
        final notifications = data ?? [];
        expect(notifications, hasLength(1));
        expect(notifications.first.id, '1');
        expect(notifications.first.title, 'عنوان');
      },
      orElse: () {
        fail('expected success');
      },
    );
  });

  test('returns a failure when the API throws', () async {
    when(() => api.get()).thenThrow(Exception('boom'));

    final result = await NotificationsRepoImpl(api).getNotifications();

    expect(result.toString(), contains('failure'));
  });
}
