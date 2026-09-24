part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.loading() = _Loading;
  const factory NotificationsState.loaded({
    List<NotificationEntity>? notifications,
  }) = _Loaded;
  const factory NotificationsState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
