import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../../../../posts/posts/present/view/widgets/posts_list_view.dart';
import '../../../../domain/entities/profile_entity.dart';
import 'profile_header_card.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
    required this.profile,
    required this.formzSubmissionStatus,
  });
  static const String routeName = 'profile';
  final ProfileEntity profile;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        ProfileHeaderCard(profile: profile),
        PostsListView(),
      ],
    );
  }
}
