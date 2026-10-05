import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/feedback/app_snackbar.dart';
import 'package:green/features/posts/posts/domain/entities/create_post_entity.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';

class CreatePostToolbar extends StatelessWidget {
  CreatePostToolbar({super.key, required this.createPost});

  final CreatePostEntity createPost;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
          childAspectRatio: 2.8,
          children: [
            _buildToolbarItem(
              context: context,
              title: 'إضافة صور',
              subtitle: '',
              icon: Icons.photo_library,
              iconColor: colorScheme.secondary,
              iconBgColor: colorScheme.secondaryContainer.withValues(
                alpha: 0.5,
              ),
              trailingIcon: Icons.add,
              onTap: () async {
                final currentFiles = createPost.mediaFiles ?? [];
                if (currentFiles.length >= 4) {
                  context.showWarningSnackBar(
                    title: 'تنبيه',
                    message: 'الحد الأقصى المسموح به هو 4 عناصر',
                  );
                  return;
                }
                final List<XFile> images = await _picker.pickMultiImage();
                if (images.isNotEmpty) {
                  final remainingSlots = 4 - currentFiles.length;
                  List<XFile> fileList = images
                      .map((xFile) => XFile(xFile.path))
                      .take(remainingSlots)
                      .toList();
                  if (fileList.isNotEmpty) {
                    getIt<PostsBloc>().add(
                      PostsEvent.updateData(
                        createPost: createPost.copyWith(
                          mediaFiles: [...currentFiles, ...fileList],
                        ),
                      ),
                    );
                  }
                }
              },
            ),
            _buildToolbarItem(
              context: context,
              title: 'فيديو',
              subtitle: 'MP4 حتى عشر دقائق',
              icon: Icons.videocam,
              iconColor: colorScheme.primary,
              iconBgColor: colorScheme.primaryContainer.withValues(alpha: 0.2),
              trailingIcon: Icons.add,
              onTap: () async {
                final currentFiles = createPost.mediaFiles ?? [];
                if (currentFiles.length >= 4) {
                  context.showWarningSnackBar(
                    title: 'تنبيه',
                    message: 'الحد الأقصى المسموح به هو 4 عناصر',
                  );
                  return;
                }

                final XFile? video = await _picker.pickVideo(
                  source: .gallery,
                  maxDuration: const Duration(minutes: 10),
                );
                if (video != null) {
                  getIt<PostsBloc>().add(
                    PostsEvent.updateData(
                      createPost: createPost.copyWith(
                        mediaFiles: [...currentFiles, video],
                      ),
                    ),
                  );
                }
              },
            ),
            // _buildToolbarItem(
            //   context: context,
            //   title: 'وسم الموضوع',
            //   subtitle: 'تصنيف نوع الزراعة',
            //   icon: Icons.tag,
            //   iconColor: colorScheme.tertiary,
            //   iconBgColor: colorScheme.tertiaryContainer.withValues(alpha: 0.3),
            //   trailingIcon: Icons.chevron_left,
            //   onTap: () {
            //     showModalBottomSheet(
            //       context: context,
            //       builder: (ctx) {
            //         final tags = [
            //           '#إرشاد_زراعي',
            //           '#مكافحة_الآفات',
            //           '#خضروات',
            //           '#تسميد',
            //           '#محاصيل_حقلية',
            //           '#أشجار_مثمرة',
            //           '#بيوت_محمية',
            //         ];
            //         return Container(
            //           padding: EdgeInsets.all(16.r),
            //           child: Column(
            //             mainAxisSize: MainAxisSize.min,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 'اختر وسم الموضوع',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 16.sp,
            //                 ),
            //               ),
            //               SizedBox(height: 12.h),
            //               Wrap(
            //                 spacing: 8.w,
            //                 runSpacing: 8.h,
            //                 children: tags
            //                     .map(
            //                       (tag) => ActionChip(
            //                         label: Text(tag),
            //                         onPressed: () {
            //                           Navigator.pop(ctx);
            //                           final currentContent =
            //                               createPost.content ?? '';
            //                           final newContent = currentContent.isEmpty
            //                               ? tag
            //                               : '$currentContent $tag';
            //                           getIt<PostsBloc>().add(
            //                             PostsEvent.updateData(
            //                               createPost: createPost.copyWith(
            //                                 content: newContent,
            //                               ),
            //                             ),
            //                           );
            //                         },
            //                       ),
            //                     )
            //                     .toList(),
            //               ),
            //             ],
            //           ),
            //         );
            //       },
            //     );
            //   },
            // ),
            // _buildToolbarItem(
            //   context: context,
            //   title: 'الموقع ',
            //   subtitle: '',
            //   icon: Icons.location_on,
            //   iconColor: colorScheme.onSurface,
            //   iconBgColor: colorScheme.surfaceContainerHighest,
            //   trailingIcon: Icons.tune,
            //   trailingColor: colorScheme.primary,
            //   onTap: () async {
            //     final result = await Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (_) => PickLocationView()),
            //     );
            //     if (result != null && result is LatLng) {
            //       context.showSuccessSnackBar(
            //         title: 'نجاح',
            //         message: 'تم تحديد الموقع الزراعي بنجاح',
            //       );
            //       final currentContent = createPost.content ?? '';
            //       final locationText = '📍 موقع زراعي';
            //       final newContent = currentContent.isEmpty
            //           ? locationText
            //           : '$currentContent\n$locationText';
            //       getIt<PostsBloc>().add(
            //         PostsEvent.updateData(
            //           createPost: createPost.copyWith(content: newContent),
            //         ),
            //       );
            //     }
            //   },
            // ),
          ],
        ),
      ],
    );
  }

  Widget _buildToolbarItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required IconData trailingIcon,
    Color? trailingColor,
    required VoidCallback onTap,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 32.r,
                  height: 32.r,
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(icon, size: 18.r, color: iconColor),
                ),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              trailingIcon,
              size: 18.r,
              color: trailingColor ?? colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}
