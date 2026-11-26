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
            final posts = st.postsRes.posts;
            final items = <Widget>[
              for (var i = 0; i < posts.length; i++) ...[
                PostCard(post: posts[i]),
                if ((i + 1) % 3 == 0) const AdBannerWidget(),
              ],
              if (st.postsRes.meta.hasNextPage)
                Skeletonizer(
                  enabled: true,
                  child: PostCard(post: PostEntity(id: 0)),
                ),
            ];
            return Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  separatorBuilder: (context, index) {
                    return Gap(4.h);
                  },
                  itemBuilder: (context, index) {
                    return items[index];
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
