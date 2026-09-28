import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/notification_entity.dart';
import '../../domain/usecases/notifications_use_cases.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

@lazySingleton
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final NotificationsUseCases useCases;
  NotificationsBloc(this.useCases) : super(const .initial()) {
    on<NotificationsEvent>((event, emit) async {
      await event.when(
        getNotifications: (getMore) async {
          try {
            if (!getMore) emit(const .loading());
            final res = await useCases.getNotifications();
            await res.when(
              success: (data) async {
                emit(.loaded(notifications: data ?? []));
              },
              failure: (errorInfo) async {
                emit(.failure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
          }
        },
        markAsRead: (id) async {
          // final idx = _notifications.indexWhere((n) => n.id == id);
          // if (idx != -1) {
          //   final updated = _notifications[idx].copyWith(read: true);
          //   _notifications[idx] = updated;
          //   emit(
          //     NotificationsState.loaded(
          //       notifications: _notifications,
          //       hasMore: _hasMore,
          //     ),
          //   );
          // }
          // final res = await useCases.markAsRead(id: id);
          // await res.when(
          //   success: (_) async {},
          //   failure: (ErrorInfo) async {
          //     // revert if failed
          //     if (idx != -1) {
          //       _notifications[idx] =
          //           _notifications[idx].copyWith(read: false);
          //       emit(NotificationsState.loaded(
          //         notifications: _notifications,
          //         hasMore: _hasMore,
          //       ),);
          //     }
          //   },
          // );
        },
      );
    });
  }
}
