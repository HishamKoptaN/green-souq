import 'package:injectable/injectable.dart';

import 'package:error_handler/error_handler.dart';

import '../../domain/entities/notification_entity.dart';
import '../../domain/repo/notifications_repo.dart';
import '../datasources/notifications_api.dart';
import '../mappers/notification_mapper.dart';

@LazySingleton(as: NotificationsRepo)
class NotificationsRepoImpl implements NotificationsRepo {
  final NotificationsApi api;
  NotificationsRepoImpl(this.api);

  @override
  Future<ExecuteGuard<List<NotificationEntity>>> getNotifications() async {
    try {
      final res = await api.get();
      final result = res.map((e) => e.toEntity()).toList();
      return .success(data: result);
    } catch (error) {
      return const .failure(errorInfo: ErrorInfo());
    }
  }

  @override
  Future<ExecuteGuard<void>> markAsRead({required String id}) async {
    // final res = await api.markAsRead(id);
    return const ExecuteGuard.failure(errorInfo: ErrorInfo());
  }
}
