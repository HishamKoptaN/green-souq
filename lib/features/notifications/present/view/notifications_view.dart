import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../../core/widgets/feedback/custom_empty_widget.dart';
import '../bloc/notifications_bloc.dart';
import 'widgets/widgets.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static const String routeName = 'notifications';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  void initState() {
    super.initState();
    getIt<NotificationsBloc>().add(const NotificationsEvent.getNotifications());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإشعارات')),
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
          ),
          child: CustomEmptyWidget(
            icon: FaIcon(
              FontAwesomeIcons.bell,
              size: 40.sp,
              color: context.colorScheme.primary,
            ),
            title: 'لا توجد إشعارات',
            subtitle:
                'لا توجد إشعارات متاحة حاليًا، سيتم عرض الإشعارات هنا عند توفرها',
          ),
        ),
      ),
    );
  }
}
