import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:green/features/posts/posts/domain/entities/create_post_entity.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/author/green_create_post_author_row.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/content/green_create_post_text_area.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/media/green_create_post_media_section.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/toolbar/green_create_post_toolbar.dart';

class GreenCreatePostContent extends StatelessWidget {
  final CreatePostEntity createPost;
  final int charCount;

  const GreenCreatePostContent({
    super.key,
    required this.createPost,
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
        GreenCreatePostTextArea(createPost: createPost, charCount: charCount),
        GreenCreatePostMediaSection(createPost: createPost),
        GreenCreatePostToolbar(),
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
