import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/custom_avater_placholder.dart';
import 'package:green/core/widgets/custom_image.dart';
import 'package:green/features/profile/present/bloc/profile_bloc.dart';

import 'create_post_widgets/buttons/create_post_trigger_button.dart';

class CreatePostTriggerCard extends StatelessWidget {
  const CreatePostTriggerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Container(
      padding: .all(14.r),
      decoration: BoxDecoration(
        color: cs.onPrimary,
        borderRadius: .circular(16.r),
        border: .all(color: cs.outlineVariant),
      ),
      child: Column(
        spacing: 6.h,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 44.r,
                    width: 44.r,
                    decoration: BoxDecoration(
                      shape: .circle,
                      border: .all(color: cs.primary, width: 2.r),
                    ),
                    child: ClipOval(
                      child: CustomImage(
                        path: getIt<ProfileBloc>().state.profile?.avatar ?? '',
                        fit: .cover,
                        placeholder: const CustomAvatarPlacholder(),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 12.r,
                      width: 12.r,
                      decoration: BoxDecoration(
                        color: cs.primary,
                        shape: .circle,
                        border: .all(color: cs.surface, width: 2.r),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Container(
                  padding: .symmetric(horizontal: 16.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    color: cs.surfaceContainerLowest,
                    borderRadius: .circular(12.r),
                    border: .all(color: cs.outlineVariant),
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'ما الجديد في حقلك أو مشروعك الزراعي اليوم؟',
                          style: tt.bodySmall?.copyWith(
                            color: cs.onSurfaceVariant,
                          ),
                          maxLines: 2,
                          overflow: .ellipsis,
                        ),
                      ),
                      Icon(Icons.edit_note, size: 22.r, color: cs.primary),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(color: cs.outlineVariant),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              CreatePostTriggerButton(
                icon: Icons.photo_library,
                label: 'ألبوم صور',
                color: cs.primary,
              ),
              CreatePostTriggerButton(
                icon: Icons.videocam,
                label: 'فيديو',
                color: cs.primary,
              ),
              CreatePostTriggerButton(
                icon: Icons.help_center,
                label: 'نصيحة زراعية',
                color: cs.tertiary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
