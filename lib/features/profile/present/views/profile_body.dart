import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';

import '../../domain/entities/profile_state_entity.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/profile_form_section.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
    required this.profileState,
    required this.formzSubmissionStatus,
  });

  final ProfileStateEntity profileState;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      children: [
        Gap(40.h),
        ProfileAvatar(profileState: profileState),
        ProfileFormSection(profileState: profileState),
      ],
    );
  }
}
