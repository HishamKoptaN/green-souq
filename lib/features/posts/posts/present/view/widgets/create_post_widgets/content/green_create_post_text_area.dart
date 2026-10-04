import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/posts/posts/domain/entities/create_post_entity.dart';

import 'package:green/core/di/dependency_injection.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';

class GreenCreatePostTextArea extends StatefulWidget {
  final CreatePostEntity createPost;
  final int charCount;

  const GreenCreatePostTextArea({
    super.key,
    required this.createPost,
    required this.charCount,
  });

  @override
  State<GreenCreatePostTextArea> createState() =>
      _GreenCreatePostTextAreaState();
}

class _GreenCreatePostTextAreaState extends State<GreenCreatePostTextArea> {
  final List<String> tags = [
    '#إرشاد_زراعي',
    '#بيوت_محمية',
    '#ري_حديث',
    '#أدوية',
    '#بذور',
    '#تربة',
    '#مبيدات',
    '#تسميد',
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isError = widget.charCount > 900;

    return Container(
      padding: .all(4.r),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow.withValues(alpha: 0.5),
        borderRadius: .circular(12.r),
        border: .all(color: colorScheme.outlineVariant.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          TextField(
            onChanged: (v) {
              getIt<PostsBloc>().add(
                .updateData(createPost: widget.createPost.copyWith(content: v)),
              );
            },
            maxLines: 4,
            maxLength: 140,
            buildCounter:
                (
                  context, {
                  required currentLength,
                  required isFocused,
                  maxLength,
                }) {
                  return null;
                },
            style: textTheme.bodyLarge?.copyWith(color: colorScheme.onSurface),
            decoration: InputDecoration(
              hintText: 'شارك تجاربك الزراعية، نصائح ميدانية، أو استفساراتك مع مجتمع السوق الأخضر اليوم...',
              hintStyle: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              ),
              border: .none,
              isDense: true,
            ),
          ),
          SizedBox(height: 4.h),
          Wrap(
            children: [
              Wrap(
                direction: .horizontal,
                children: tags.map((tag) {
                  return Padding(
                    padding: .symmetric(horizontal: 2.w),
                    child: ActionChip(
                      onPressed: () {
                        final currentText = widget.createPost.content;
                        final newText = currentText!.isEmpty
                            ? tag
                            : '$currentText $tag';
                        context.read<PostsBloc>().add(
                          .updateData(
                            createPost: widget.createPost.copyWith(
                              content: newText,
                            ),
                          ),
                        );
                      },
                      label: Text(tag),
                      backgroundColor: colorScheme.surfaceContainer,
                      labelStyle: textTheme.labelSmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: .w600,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: .circular(20.r),
                      ),
                      side: .none,
                    ),
                  );
                }).toList(),
              ),
              Text(
                '${widget.charCount} / 140',
                style: textTheme.labelSmall?.copyWith(
                  color: isError
                      ? colorScheme.error
                      : colorScheme.onSurfaceVariant,
                  fontWeight: .w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
