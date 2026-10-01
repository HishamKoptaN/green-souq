import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../domain/entities/editable_profile_entity.dart';
import '../../../posts/posts/present/view/widgets/posts_list_view.dart';
import 'widgets/profile_header_card.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
    required this.editableProfile,
    required this.formzSubmissionStatus,
  });
  static const String routeName = 'profile';
  final EditableProfileEntity? editableProfile;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        ProfileHeaderCard(editableProfile: editableProfile),
        PostsListView(),
      ],
    );
  }
}
