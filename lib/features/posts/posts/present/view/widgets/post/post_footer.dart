import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/features/posts/posts/present/view/widgets/post/show_comments_sheet.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../data/models/toggle_like_req_body.dart';
import '../../../../domain/entities/posts_res_entity.dart';
import '../../../../domain/repo/posts_repo.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({super.key, required this.post});
  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        InkWell(
          onTap: () {
            getIt<PostsRepo>().toggleLike(
              toggleLikeReqBody: ToggleLikeReqBody(
                likeableId: post.postable?.id,
                likeableType: post.type,
              ),
            );
          },
          child: Row(
            children: [
              Icon(
                post.postable?.isLike ?? false
                    ? Icons.thumb_up
                    : Icons.thumb_up_outlined,
                color: post.postable?.isLike ?? false
                    ? context.colorScheme.primary
                    : context.colorScheme.onSurfaceVariant,
                size: 18.r,
              ),
              Gap(6.w),
              Text(
                "${post.postable?.likesCount ?? 0} إعجاب",
                style: context.textTheme.bodySmall?.copyWith(
                  color: post.postable?.isLike ?? false
                      ? context.colorScheme.primary
                      : context.colorScheme.onSurfaceVariant,
                  fontWeight: post.postable?.isLike ?? false
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                showCommentsSheet(context: context, post: post);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    size: 18.r,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  Gap(4.w),
                  Text(
                    "${post.postable?.cmntsCount ?? 0} تعليقات",
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Gap(16.w),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.share_outlined,
                    size: 18.r,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  Gap(4.w),
                  Text(
                    'مشاركة',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
