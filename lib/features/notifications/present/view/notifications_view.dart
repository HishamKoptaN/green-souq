import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../../../../core/widgets/feedback/custom_error_widg.dart';
import '../../../../core/widgets/forms/translated_text.dart';
import '../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/notifications_bloc.dart';
import 'widgets/widgets.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static const String routeName = 'notifications';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  final NotificationsBloc _bloc = getIt<NotificationsBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const NotificationsEvent.getNotifications());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TrText('الإشعارات')),
      body: BlocBuilder<NotificationsBloc, NotificationsState>(
        bloc: _bloc,
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CustomCircularProgress()),
            loaded: (notifications) {
              if (notifications == null || notifications.isEmpty) {
                return CustomEmptyWidget(
                  icon: Icon(
                    Icons.notifications_none,
                    size: 48.r,
                    color: context.colorScheme.primary,
                  ),
                  title: 'لا توجد إشعارات',
                  subtitle: 'ستظهر الإشعارات هنا عند توفرها',
                );
              }
              return RefreshIndicator(
                onRefresh: () async => _bloc.add(const NotificationsEvent.getNotifications()),
                child: ListView.separated(
                  padding: .all(12.r),
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return NotificationRow(item: notifications[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: context.colorScheme.outlineVariant.withValues(alpha: 0.5),
                    );
                  },
                ),
              );
            },
            failure: (errorInfo) {
              return CustomErrorWidget(
                message: errorInfo.message,
                onRetry: () => _bloc.add(const NotificationsEvent.getNotifications()),
              );
            },
            orElse: () => const Center(child: CustomCircularProgress()),
          );
        },
      ),
    );
  }
}
