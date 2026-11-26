import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';

import '../entities/notification_entity.dart';
import '../repo/notifications_repo.dart';

abstract interface class NotificationsUseCasesContract {
  Future<ExecuteGuard<List<NotificationEntity>>> getNotifications();
  Future<ExecuteGuard<void>> markAsRead({required String id});
}

@lazySingleton
class NotificationsUseCases implements NotificationsUseCasesContract {
  final NotificationsRepo notificationsRepo;
  NotificationsUseCases(this.notificationsRepo);

  @override
  Future<ExecuteGuard<List<NotificationEntity>>> getNotifications() async {
    return await notificationsRepo.getNotifications();
  }

  @override
  Future<ExecuteGuard<void>> markAsRead({required String id}) async {
    return await notificationsRepo.markAsRead(id: id);
  }
}
