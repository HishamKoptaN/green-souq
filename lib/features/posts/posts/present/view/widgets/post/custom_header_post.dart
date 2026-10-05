import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../../core/utils/extensions/date_time_extensions.dart';
import '../../../../../../../core/widgets/custom_image.dart';
import '../../../../domain/entities/posts_res_entity.dart';

class CustomPostHeader extends StatelessWidget {
  const CustomPostHeader({super.key, required this.post});
  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .center,
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: context.colorScheme.primaryContainer.withValues(
            alpha: .2,
          ),
          child: CustomImage(path: post.author?.avatar),
        ),
        Gap(10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  Text(
                    post.author?.name ?? '',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: .bold,
                    ),
                  ),
                  Gap(6.w),
                  Container(
                    padding: .symmetric(vertical: 2.h, horizontal: 6.w),
                    decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer.withValues(
                        alpha: .2,
                      ),
                      borderRadius: .circular(6.r),
                    ),
                    child: Text(
                      'موزع',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.primary,
                        fontWeight: .w600,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 12.r,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  Gap(4.w),
                  Text(
                    post.createdAt?.toSmartDate() ?? '',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      fontSize: 10.sp,
                    ),
                  ),
                  Gap(4.w),
                  Text(
                    '•',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // IconButton(
        // onPressed: () {},
        // icon: Icon(
        // Icons.more_vert,
        // size: 18.r,
        // color: context.colorScheme.onSurfaceVariant,
        // ),
        // ),
      ],
    );
  }
}
