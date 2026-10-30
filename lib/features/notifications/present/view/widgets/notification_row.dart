import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/widgets/forms/translated_text.dart';
import '../../../domain/entities/notification_entity.dart';

class NotificationRow extends StatelessWidget {
  final NotificationEntity item;
  const NotificationRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: FaIcon(
              FontAwesomeIcons.bell,
              color: Theme.of(context).colorScheme.primary,
              size: 24.w,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TrText(
                  item.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 20.sp,
                      ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 7.h),
                TrText(
                  item.createdAt,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 15.sp,
                      ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
