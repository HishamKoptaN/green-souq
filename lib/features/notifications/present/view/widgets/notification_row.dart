import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/translated_text.dart';
import '../../../domain/entities/notification_entity.dart';

class NotificationRow extends StatelessWidget {
  final NotificationEntity item;
  const NotificationRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(12.r),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12.w,
        children: [
          FaIcon(
            FontAwesomeIcons.bell,
            size: 22.r,
            color: context.colorScheme.primary.withValues(
              alpha: item.read ? 0.5 : 1,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4.h,
              children: [
                TrText(
                  item.title,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: item.read ? FontWeight.normal : .bold,
                  ),
                ),
                TrText(
                  item.body,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                TrText(
                  item.createdAt,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
