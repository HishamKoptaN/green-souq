import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/notifications/domain/entities/notification_entity.dart';
import 'package:green/features/notifications/domain/usecases/notifications_use_cases.dart';
import 'package:green/features/notifications/present/bloc/notifications_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockNotificationsUseCases extends Mock implements NotificationsUseCases {}

void main() {
  late MockNotificationsUseCases useCases;
  const item = NotificationEntity(
    id: '1',
    title: 'عنوان',
    body: 'نص',
    createdAt: 'اليوم',
  );

  setUp(() {
    useCases = MockNotificationsUseCases();
  });

  blocTest<NotificationsBloc, NotificationsState>(
    'emits loaded with notifications from the repository',
    build: () {
      when(() => useCases.getNotifications()).thenAnswer(
        (_) async => const ExecuteGuard.success(data: [item]),
      );
      return NotificationsBloc(useCases);
    },
    act: (bloc) {
      bloc.add(const NotificationsEvent.getNotifications());
    },
    expect: () => [isA<NotificationsState>(), isA<NotificationsState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        loaded: (notifications) {
          expect(notifications, [item]);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<NotificationsBloc, NotificationsState>(
    'emits failure when the repository fails',
    build: () {
      when(() => useCases.getNotifications()).thenAnswer(
        (_) async => const ExecuteGuard.failure(
          errorInfo: ErrorInfo(message: 'تعذّر التحميل'),
        ),
      );
      return NotificationsBloc(useCases);
    },
    act: (bloc) {
      bloc.add(const NotificationsEvent.getNotifications(getMore: true));
    },
    expect: () => [isA<NotificationsState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        failure: (errorInfo) {
          expect(errorInfo.message, 'تعذّر التحميل');
        },
        orElse: () {
          fail('expected failure state');
        },
      );
    },
  );
}
