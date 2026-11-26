import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostCardWidget extends StatelessWidget {
  final String author;
  final String role;
  final String avatarText;
  final String tag;
  final String content;
  final String likes;
  final String comments;
  final void Function(String) showToast;

  const PostCardWidget({
    super.key,
    required this.author,
    required this.role,
    required this.avatarText,
    required this.tag,
    required this.content,
    required this.likes,
    required this.comments,
    required this.showToast,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textTheme = theme.textTheme;
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: .circular(12.r),
          border: Border.all(color: colors.outlineVariant),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40.r,
                      height: 40.r,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary
                            .withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        avatarText,
                        style: textTheme.titleSmall?.copyWith(
                          color: colors.primary,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(author, style: textTheme.titleMedium),
                        Text(
                          role,
                          style: textTheme.bodySmall?.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Text(content, style: textTheme.bodyMedium),
            SizedBox(height: 12.h),
            Divider(height: 1.h),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    {
                      showToast('تم الإعجاب بالمنشور');
                    }
                  },
                  icon: Icon(Icons.thumb_up_outlined, size: 16.r),
                  label: Text(likes, style: textTheme.labelMedium),
                ),
                TextButton.icon(
                  onPressed: () {
                    {
                      showToast('تم فتح التعليقات');
                    }
                  },
                  icon: Icon(Icons.chat_bubble_outline, size: 16.r),
                  label: Text(comments, style: textTheme.labelMedium),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
