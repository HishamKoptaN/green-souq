import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../../domain/entities/profile_state_entity.dart';
import '../profile/widgets/profile_avatar.dart';
import 'widgets/profile_form_section.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({
    super.key,
    required this.profileState,
    required this.formzSubmissionStatus,
  });

  final ProfileStateEntity profileState;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20.h,
      children: [
        ProfileAvatar(profileState: profileState),
        ProfileFormSection(profileState: profileState),
      ],
    );
  }
}
