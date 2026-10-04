import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/header/green_create_post_header.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/content/green_create_post_content.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/footer/green_create_post_footer.dart';

class GreenCreatePostBottomSheet extends StatelessWidget {
  const GreenCreatePostBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocBuilder<PostsBloc, PostsState>(
      bloc: getIt<PostsBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (st) {
            return Container(
              padding: .all(8),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerLowest,
                borderRadius: .vertical(top: .circular(28.r)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: .min,
                  spacing: 4.h,
                  children: [
                    GreenCreatePostHeader(
                      onClose: () {
                        Navigator.of(context).pop();
                      },
                      onPublish: () {},
                      isLoading: false,
                    ),
                    GreenCreatePostContent(
                      createPost: st.createPost,
                      charCount: st.createPost.content?.length ?? 0,
                    ),
                    GreenCreatePostFooter(
                      onPublishNow: () {},
                      isLoading: false,
                      isSuccess: false,
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () {
            return CustomCircularProgress();
          },
        );
      },
    );
  }
}
