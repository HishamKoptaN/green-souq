import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../domain/entities/posts_res_entity.dart';
import '../expandable_text.dart';
import 'custom_header_post.dart';
import 'post_footer.dart';

class PostCard extends StatelessWidget {
  final PostEntity post;
  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: .circular(16.r),
        border: .all(color: context.colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CustomPostHeader(post: post),
          if (post.postable?.content != null) ...[
            Gap(12.h),
            ExpandableText(
              text: post.postable?.content ?? '',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
          Gap(12.h),
          Divider(color: context.colorScheme.outlineVariant, height: 1.h),
          Gap(12.h),
          if (post.type != 'sharedPost') PostFooter(post: post),
        ],
      ),
    );
  }
}
