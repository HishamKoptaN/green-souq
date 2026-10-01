import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green/core/utils/extensions/date_time_extensions.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/forms/translated_text.dart';
import '../../../domain/entities/editable_profile_entity.dart';
import '../edit_profile_view.dart';
import 'profile_avatar.dart';
import 'profile_metrics_widget.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({super.key, required this.editableProfile});

  final EditableProfileEntity? editableProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: .circular(16.r),
        border: .all(color: context.colorScheme.outlineVariant),
      ),
      child: Column(
        children: [
          ProfileAvatar(
            path:
                editableProfile?.avatar?.path ??
                editableProfile?.avatarPath ??
                '',
            isEditing: false,
            onEditImageTap: () async {},
          ),
          Gap(12.h),
          Row(
            mainAxisAlignment: .center,
            children: [
              TrText(
                editableProfile?.name?.value ?? '',
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: .bold,
                ),
              ),
              Gap(4.w),
              Icon(
                Icons.verified,
                size: 18.r,
                color: context.colorScheme.primary,
              ),
            ],
          ),
          // Gap(6.h),
          //Container(
          //  padding: .symmetric(horizontal: 10.w, vertical: 4.h),
          //  decoration: BoxDecoration(
          //    color: context.colorScheme.primaryContainer.withValues(
          //      alpha: .15,
          //    ),
          //    borderRadius: .circular(9999.r),
          //  ),
          //  child: Text(
          //    'مستشار وقاية وتوزيع مستلزمات زراعية',
          //    style: context.textTheme.bodySmall?.copyWith(
          //      color: context.colorScheme.primary,
          //      fontWeight: .w600,
          //    ),
          //  ),
          //),
          Gap(8.h),
          Text(
            editableProfile?.bio ?? '',
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
            textAlign: .center,
          ),
          Gap(12.h),
          Row(
            mainAxisAlignment: .center,
            children: [
              if (editableProfile?.address != null) ...[
                Icon(
                  Icons.location_on,
                  size: 14.r,
                  color: context.colorScheme.error,
                ),
                Gap(4.w),
                Text(
                  editableProfile?.address ?? '',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                Gap(8.w),
                Container(
                  height: 4.r,
                  width: 4.r,
                  decoration: BoxDecoration(
                    color: context.colorScheme.outlineVariant,
                    shape: .circle,
                  ),
                ),
                Gap(8.w),
              ],
              Icon(
                Icons.calendar_month,
                size: 14.r,
                color: context.colorScheme.tertiary,
              ),
              Gap(4.w),
              Text(
                'عضو منذ ${editableProfile?.createdAt?.toSmartDate()}',
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          Gap(12.h),
          Container(
            padding: .symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: context.colorScheme.tertiaryContainer.withValues(
                alpha: .15,
              ),
              borderRadius: .circular(12.r),
              border: .all(
                color: context.colorScheme.tertiary.withValues(alpha: .3),
              ),
            ),
            child: Row(
              mainAxisSize: .min,
              children: [
                Text(
                  editableProfile?.rating ?? '',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.tertiary,
                    fontWeight: .bold,
                  ),
                ),
                Gap(4.w),
                Icon(
                  Icons.star,
                  size: 16.r,
                  color: context.colorScheme.tertiary,
                ),
                Gap(6.w),
                Text(
                  '(${editableProfile?.ratingCount ?? ''} تقييم تاجر)',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          Gap(16.h),
          Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: () {
                    context.push(EditProfileView.routeName);
                  },
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(12.r),
                    ),
                  ),
                  icon: Icon(Icons.edit_note, size: 18.r),
                  label: const TrText('تعديل الملف الشخصي'),
                ),
              ),
              Gap(8.w),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerHigh,
                  borderRadius: .circular(12.r),
                  border: .all(color: context.colorScheme.outlineVariant),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.qr_code,
                    size: 18.r,
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          Gap(16.h),
          const ProfileMetricsWidget(),
        ],
      ),
    );
  }
}
