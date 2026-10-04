import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/posts/posts/domain/entities/create_post_entity.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';

class GreenCreatePostAddMediaButton extends StatelessWidget {
  GreenCreatePostAddMediaButton({super.key, required this.createPost});

  final CreatePostEntity createPost;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () async {
        final List<XFile> images = await _picker.pickMultipleMedia();
        if (images.isNotEmpty) {
          List<XFile> fileList = images
              .map((xFile) => XFile(xFile.path))
              .toList();
          getIt<PostsBloc>().add(
            PostsEvent.updateData(
              createPost: createPost.copyWith(
                mediaFiles: [...createPost.mediaFiles ?? [], ...fileList],
              ),
            ),
          );
        }
      },
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add_photo_alternate,
                color: colorScheme.primary,
                size: 22.r,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'إضافة المزيد',
              style: textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
