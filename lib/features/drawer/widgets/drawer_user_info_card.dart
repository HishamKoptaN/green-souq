import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/extensions/theme_ext.dart';
import '../../../core/widgets/custom_image.dart';
import '../../profile/domain/entities/editable_profile_entity.dart';

class DrawerUserInfoCard extends StatelessWidget {
  final EditableProfileEntity profile;

  const DrawerUserInfoCard({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: context.colorScheme.outlineVariant.withValues(alpha: 0.3),
              width: 1.r,
            ),
          ),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: .circular(16.r),
                  child: CustomImage(
                    width: 60.r,
                    height: 60.r,
                    path: profile.avatarPath,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: 12.r,
                    height: 12.r,
                    decoration: BoxDecoration(
                      color: const Color(0xFF10B981),
                      shape: .circle,
                      border: .all(
                        color: context.colorScheme.surfaceContainerLowest,
                        width: 2.r,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      profile.name?.value ?? '',
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: .bold,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.verified,
                      color: context.colorScheme.primary,
                      size: 18.r,
                    ),
                  ],
                ),
                Text(
                  profile.bio ?? '',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
