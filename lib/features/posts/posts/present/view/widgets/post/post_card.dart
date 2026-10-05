import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../../core/utils/media_utils.dart';
import '../../../../../../../core/widgets/custom_image.dart';
import '../../../../domain/entities/posts_res_entity.dart';
import 'expandable_text.dart';
import 'custom_header_post.dart';
import 'post_footer.dart';
import 'video_preview/video_preview_selector.dart';

class PostCard extends StatelessWidget {
  final PostEntity post;
  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final mediaList = post.media;
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
          if (mediaList.isNotEmpty) ...[
            Gap(12.h),
            ...mediaList.map((media) {
              final path = media.filePath ?? '';
              final isVideo = media.isVideo;
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: isVideo
                      ? SizedBox(
                          height: 250.h,
                          width: double.infinity,
                          child: VideoPreviewSelector(
                            videoBytes: null,
                            videoUrl: path,
                          ),
                        )
                      : CustomImage(
                          path: path,
                          width: .infinity,
                          height: 250.h,
                          fit: .cover,
                        ),
                ),
              );
            }),
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
