import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../ads/ad_banner_widget.dart';
import '../../../../domain/entities/posts_res_entity.dart';
import '../../../bloc/posts_bloc.dart';
import 'post_card.dart';

class PostsListView extends StatelessWidget {
  const PostsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      bloc: getIt<PostsBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          loaded: (st) {
            return Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: st.postsRes.meta.hasNextPage
                      ? st.postsRes.posts.length + 1
                      : st.postsRes.posts.length,
                  separatorBuilder: (context, index) {
                    return Gap(4.h);
                  },
                  itemBuilder: (context, index) {
                    if (index == st.postsRes.posts.length) {
                      return Skeletonizer(
                        enabled: true,
                        child: PostCard(post: PostEntity(id: 0)),
                      );
                    }
                    if ((index + 1) % 3 == 0) {
                      return const AdBannerWidget();
                    }
                    return PostCard(post: st.postsRes.posts[index]);
                  },
                ),
              ],
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
