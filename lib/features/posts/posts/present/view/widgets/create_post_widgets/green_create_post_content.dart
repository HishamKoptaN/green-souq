import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/posts/posts/data/models/create_post_req_body.dart';

import 'green_create_post_author_row.dart';
import 'green_create_post_text_area.dart';
import 'green_create_post_media_section.dart';
import 'green_create_post_toolbar.dart';

class GreenCreatePostContent extends StatelessWidget {
  final CreatePostReqBody createPostReqBody;
  final int charCount;

  const GreenCreatePostContent({
    super.key,
    required this.createPostReqBody,
    required this.charCount,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: .start,
      spacing: 8.h,
      children: [
        const GreenCreatePostAuthorRow(),
        GreenCreatePostTextArea(
          createPostReqBody: createPostReqBody,
          charCount: charCount,
        ),
        //  GreenCreatePostMediaSection(
        //    onAddMore: onAddMore,
        //    onRemovePhoto: onRemovePhoto,
        //    onRemoveVideo: onRemoveVideo,
        //  ),
        //  GreenCreatePostToolbar(
        //    onAddPhotos: onAddPhotos,
        //    onAddVideo: onAddVideo,
        //    onAddTag: onAddTag,
        //    onAddLocation: onAddLocation,
        //  ),
        Container(
          padding: .all(4.r),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainer,
            borderRadius: .circular(12.r),
          ),
          child: Row(
            crossAxisAlignment: .start,
            children: [
              Icon(Icons.info, color: colorScheme.primary, size: 20.r),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  'سيظهر منشورك للمزارعين، المهندسين، وموردي المستلزمات في الخلاصة الزراعية العامة لبناء المعرفة وتبادل الخبرات الميدانية.',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
