import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:green/features/posts/posts/domain/entities/create_post_entity.dart';

import 'create_post_media_grid_item.dart';

class CreatePostMediaSection extends StatelessWidget {
  const CreatePostMediaSection({super.key, required this.createPost});
  final CreatePostEntity createPost;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.perm_media, size: 16.r, color: colorScheme.primary),
                SizedBox(width: 4.w),
                Text(
                  'الوسائط المرفقة'
                  '${createPost.mediaFiles?.length ?? ''}'
                  '${createPost.mediaFiles?.isEmpty ?? true ? '' : '(${createPost.mediaFiles?.length ?? ''})'}',
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Text(
              'الحد الأقصى ٤ عناصر',
              style: textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.w,
            mainAxisSpacing: 8.h,
          ),
          shrinkWrap: true,
          itemCount: createPost.mediaFiles?.length ?? 0,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return GreenCreatePostMediaGridItem(
              createPost: createPost,
              index: i,
            );
          },
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}
