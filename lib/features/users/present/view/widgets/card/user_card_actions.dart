import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:green/features/users/domain/entities/user_entity.dart';
import 'package:green/features/users/present/view/user_details_view.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/make_phone_call.dart';

class UserCardActions extends StatelessWidget {
  const UserCardActions({super.key, required this.user});
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        spacing: 4.w,
        textBaseline: .alphabetic,
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {
                makePhoneCall(user.phone);
              },
              icon: Icon(
                Icons.call,
                size: 16.r,
                color: context.colorScheme.primary,
              ),
              label: Text(
                'اتصال',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: context.colorScheme.primaryContainer,
                side: .none,
                shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                context.push(UserDetailsView.routeName, extra: user);
              },
              label: Text(
                'عرض التفاصيل',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onPrimary,
                ),
              ),
              icon: Icon(
                Icons.person_outline,
                size: 16.r,
                color: context.colorScheme.onPrimary,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
              ),
            ),
          ),
        ],
      );
    }
  }
}
