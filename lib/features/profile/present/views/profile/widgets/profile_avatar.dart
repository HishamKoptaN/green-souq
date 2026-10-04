import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/preview/custom_image.dart';
import '../../../../domain/entities/edited_profile_entity.dart';
import '../../../../domain/entities/profile_state_entity.dart';
import '../../../bloc/profile_bloc.dart';

class ProfileAvatar extends StatelessWidget {
  ProfileAvatar({super.key, required this.profileState});

  final ProfileStateEntity profileState;
  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Stack(
            clipBehavior: .none,
            children: [
              Container(
                padding: .all(4.r),
                decoration: BoxDecoration(
                  shape: .circle,
                  gradient: LinearGradient(
                    colors: [
                      context.colorScheme.primary,
                      context.colorScheme.secondaryContainer,
                      context.colorScheme.primaryContainer,
                    ],
                    begin: .topRight,
                    end: .bottomLeft,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.shadow.withValues(alpha: 0.1),
                      blurRadius: 8.r,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Container(
                  padding: .all(4.r),
                  decoration: BoxDecoration(
                    color: context.colorScheme.surfaceContainerLowest,
                    shape: .circle,
                  ),
                  child: ClipOval(
                    child: CustomImage(
                      path: profileState.avatar,
                      height: 112.r,
                      width: 112.r,
                      fit: .cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: InkWell(
                  onTap: () async {
                    final picked = await _imagePicker.pickImage(
                      source: .gallery,
                    );
                    if (picked != null) {
                      getIt<ProfileBloc>().add(
                        .dataChanged(
                          editedProfile:
                              (profileState.editedProfile ??
                                      const EditedProfileEntity())
                                  .copyWith(avatar: picked.path),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 36.r,
                    height: 36.r,
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      shape: .circle,
                      boxShadow: [
                        BoxShadow(
                          color: context.colorScheme.shadow.withValues(
                            alpha: 0.2,
                          ),
                          blurRadius: 4.r,
                        ),
                      ],
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.camera,
                        size: 16.r,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap(12.h),
        Container(
          padding: .symmetric(vertical: 6.h, horizontal: 12.w),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainer,
            borderRadius: .circular(9999.r),
          ),
          child: Row(
            mainAxisSize: .min,
            children: [
              FaIcon(
                FontAwesomeIcons.cloudArrowUp,
                size: 14.r,
                color: context.colorScheme.primary,
              ),
              Gap(6.w),
              Text(
                'اضغط لتغيير الصورة',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
