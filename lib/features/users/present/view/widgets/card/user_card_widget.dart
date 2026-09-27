import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import 'user_card_header.dart';
import 'user_card_actions.dart';

import 'package:green/features/users/domain/entities/user_entity.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    {
      return Card(
        child: Container(
          padding: .all(12.r),
          color: context.colorScheme.surface,
          child: Column(
            spacing: 6.h,
            children: [
              UserCardHeader(user: user),
              UserCardActions(user: user),
            ],
          ),
        ),
      );
    }
  }
}
