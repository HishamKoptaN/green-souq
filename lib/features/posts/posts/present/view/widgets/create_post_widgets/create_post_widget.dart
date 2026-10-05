import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/header/green_create_post_header.dart';

import '../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../../core/widgets/custom_scaffold.dart';
import 'author/create_post_author_row.dart';
import 'content/create_post_text_area.dart';
import 'media/create_post_media_section.dart';
import 'toolbar/create_post_toolbar.dart';

class CreatePostWidget extends StatelessWidget {
  const CreatePostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: .only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: BlocConsumer<PostsBloc, PostsState>(
            bloc: getIt<PostsBloc>(),
            listener: (context, state) {
              state.mapOrNull(
                success: (s) {
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تم نشر المنشور بنجاح')),
                  );
                },
                failure: (f) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(f.errorInfo.message)));
                },
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                loaded: (st) {
                  return SingleChildScrollView(
                    child: Column(
                      spacing: 4.h,
                      children: [
                        CreatePostHeader(status: st.formzSubmissionStatus),
                        const CreatePostAuthorRow(),
                        CreatePostTextArea(
                          createPost: st.createPost,
                          charCount: st.createPost.content?.length ?? 0,
                        ),
                        CreatePostMediaSection(createPost: st.createPost),
                        CreatePostToolbar(createPost: st.createPost),
                        Container(
                          padding: .all(4.r),
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceContainer,
                            borderRadius: .circular(12.r),
                          ),
                          child: Row(
                            crossAxisAlignment: .start,
                            children: [
                              Icon(
                                Icons.info,
                                color: context.colorScheme.primary,
                                size: 20.r,
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                child: Text(
                                  'سيظهر منشورك للمزارعين، المهندسين، وموردي المستلزمات في الخلاصة الزراعية العامة لبناء المعرفة وتبادل الخبرات الميدانية.',
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: context.colorScheme.onSurfaceVariant,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                orElse: () {
                  return CustomCircularProgress();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
