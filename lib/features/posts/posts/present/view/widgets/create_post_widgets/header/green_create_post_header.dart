import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';

class CreatePostHeader extends StatelessWidget {
  final FormzSubmissionStatus status;

  const CreatePostHeader({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: .min,
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: colorScheme.surfaceContainerLow,
                    foregroundColor: colorScheme.onSurfaceVariant,
                  ),
                  icon: Icon(Icons.close, size: 14.r),
                ),
                SizedBox(width: 4.w),
                Text(
                  'إنشاء منشور جديد',
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: .bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            FilledButton.icon(
              onPressed: !status.isSuccess
                  ? null
                  : () {
                      getIt<PostsBloc>().add(const .createPost());
                    },
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: .circular(20.r)),
                minimumSize: Size(82.w, 36.h),
                maximumSize: Size(82.w, 36.h),
              ),
              icon: status.isInProgress
                  ? SizedBox(
                      height: 18.r,
                      width: 18.r,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: colorScheme.onPrimary,
                      ),
                    )
                  : Icon(Icons.send, size: 14.r),
              label: Text('نشر'),
            ),
          ],
        ),
        Divider(color: colorScheme.surfaceContainerHigh, height: 1.h),
      ],
    );
  }
}
