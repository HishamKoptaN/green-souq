import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/notifications/present/view/notifications_view.dart';
import '../../theme/extensions/theme_ext.dart';
import '../forms/translated_text.dart';

class NotificationIcon extends StatefulWidget {
  const NotificationIcon({super.key});
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  late final Stream<int> _notificationCountStream;

  @override
  void initState() {
    super.initState();
    _notificationCountStream = Stream.periodic(const Duration(seconds: 5), (_) {
      return _getActiveNotificationsCount();
    }).asyncMap((_) async => await _getActiveNotificationsCount());
  }

  Future<int> _getActiveNotificationsCount() async {
    try {
      // final db = getIt<AppDatabase>();
      // final activeDocs = await (db.select(
      //   db.cachedDocsTable,
      // )..where((tbl) => tbl.uploadStatus.equals('uploading'))).get();

      // return activeDocs.length;
      return 0;
    } catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _notificationCountStream,
      builder: (context, snapshot) {
        final count = snapshot.data ?? 0;

        return badges.Badge(
          showBadge: count > 0,
          badgeContent: TrText(
            count.toString(),
            style: context.textTheme.labelSmall?.copyWith(
              color: context.colorScheme.onError,
            ),
          ),
          badgeStyle: badges.BadgeStyle(
            badgeColor: context.colorScheme.error,
            padding: EdgeInsets.all(4.w),
          ),
          child: IconButton(
            icon: Icon(Icons.notifications_outlined, size: 24.w),
            onPressed: () {
              Navigator.pushNamed(context, NotificationsView.routeName);
            },
          ),
        );
      },
    );
  }
}
