import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/custom_image.dart';
import 'package:green/features/posts/posts/domain/entities/create_post_entity.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';
import 'create_post_media_utils.dart';

class GreenCreatePostMediaGridItem extends StatelessWidget {
  const GreenCreatePostMediaGridItem({
    super.key,
    required this.createPost,
    required this.index,
  });

  final CreatePostEntity createPost;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final file = createPost.mediaFiles?[index];
    if (file == null) return const SizedBox.shrink();

    final isVideo = isVideoFile(file);

    void removeFile() {
      final updatedList = List<XFile>.from(
        createPost.mediaFiles ?? [],
      )..removeAt(index);
      getIt<PostsBloc>().add(
        PostsEvent.updateData(
          createPost: createPost.copyWith(
            mediaFiles: updatedList,
          ),
        ),
      );
    }

    if (isVideo) {
      return Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Container(
              color: colorScheme.surfaceContainerHigh,
              child: Center(
                child: Container(
                  height: 32.r,
                  width: 32.r,
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerLowest
                        .withValues(alpha: 0.9),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    size: 20.r,
                    color: colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 6.r,
            left: 6.r,
            child: GestureDetector(
              onTap: removeFile,
              child: Container(
                width: 24.r,
                height: 24.r,
                decoration: BoxDecoration(
                  color: colorScheme.inverseSurface.withValues(
                    alpha: 0.75,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  size: 14.r,
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 6.r,
            right: 6.r,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
              decoration: BoxDecoration(
                color: colorScheme.inverseSurface.withValues(
                  alpha: 0.7,
                ),
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.videocam,
                    size: 12.r,
                    color: colorScheme.secondaryContainer,
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'فيديو',
                    style: textTheme.labelSmall?.copyWith(
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CustomImage(path: file.path, fit: BoxFit.cover),
        ),
        Positioned(
          top: 6.r,
          left: 6.r,
          child: GestureDetector(
            onTap: removeFile,
            child: Container(
              height: 24.r,
              width: 24.r,
              decoration: BoxDecoration(
                color: colorScheme.inverseSurface.withValues(
                  alpha: 0.75,
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                size: 14.r,
                color: colorScheme.onPrimary,
              ),
            ),
          ),
        ),
        Positioned(
          right: 6.r,
          bottom: 6.r,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: colorScheme.inverseSurface.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.image,
                  size: 12.r,
                  color: colorScheme.onPrimary,
                ),
                SizedBox(width: 2.w),
                Text(
                  'صورة',
                  style: textTheme.labelSmall?.copyWith(
                    color: colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
