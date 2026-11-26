import 'package:flutter/material.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../domain/entities/notification_entity.dart';
import 'notification_row.dart';

/// بطاقة عرض قائمة الإشعارات
class NotificationsCardWidget extends StatelessWidget {
  final List<NotificationEntity> items;

  const NotificationsCardWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          for (int i = 0; i < items.length; i++) ...[
            NotificationRow(item: items[i]),
            if (i != items.length - 1)
              Divider(
                height: 1,
                thickness: 0.5,
                color: context.colorScheme.outlineVariant,
              ),
          ],
        ],
      ),
    );
  }
}
