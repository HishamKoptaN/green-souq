import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/widgets/custom_image.dart';
import 'package:green/features/profile/present/bloc/profile_bloc.dart';

import 'package:green/core/di/dependency_injection.dart';

class CreatePostAuthorRow extends StatelessWidget {
  const CreatePostAuthorRow({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          children: [
            Stack(
              clipBehavior: .none,
              children: [
                Container(
                  width: 50.r,
                  height: 50.r,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    shape: .circle,
                  ),
                  child: ClipOval(
                    child: CustomImage(
                      path: getIt<ProfileBloc>().state.profile?.avatar ?? '',
                      fit: .cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -2.r,
                  right: -2.r,
                  child: Container(
                    height: 18.r,
                    width: 18.r,
                    decoration: BoxDecoration(
                      color: colorScheme.secondaryContainer,
                      shape: .circle,
                    ),
                    child: Icon(
                      Icons.verified,
                      color: colorScheme.onSecondaryContainer,
                      size: 14.r,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Text(
                      getIt<ProfileBloc>().state.profile?.name ?? '',
                      style: textTheme.labelLarge?.copyWith(
                        fontWeight: .bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(width: 8.w),
                  ],
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.public,
                        size: 14.r,
                        color: colorScheme.primary,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'الجميع في السوق الأخضر',
                        style: textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: .w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
