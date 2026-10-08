import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../custom_pagination_widget.dart';
import '../../../ads/ad_sense_widget.dart';
import '../../../posts/posts/present/bloc/posts_bloc.dart';
import '../../../posts/posts/present/view/widgets/create_post_widgets/create_post_trigger_card.dart';
import '../../../posts/posts/present/view/widgets/post/posts_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = 'home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    getIt<PostsBloc>().add(.watch(type: 'me', userId: null));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaginationWidget(
      bottomReachedCallback: () {
        getIt<PostsBloc>().state.mapOrNull(
          loaded: (st) {
            if (st.postsRes.meta.hasNextPage) {
              getIt<PostsBloc>().add(const .fetchNext());
            }
          },
        );
      },
      slivers: [
        SliverToBoxAdapter(
          child: BlocBuilder<PostsBloc, PostsState>(
            bloc: getIt<PostsBloc>(),
            builder: (context, state) {
              return state.maybeMap(
                loaded: (st) {
                  return Column(
                    spacing: 8.h,
                    children: [
                      CreatePostTriggerCard(),
                      const Center(
                        child: AdSenseWidget(
                          adClient: 'ca-pub-XXXXXXXXXXXXXXXX',
                          adSlot: '1234567890',
                          width: 728,
                          height: 90,
                        ),
                      ),
                      PostsListView(),
                    ],
                  );
                },
                orElse: () {
                  return CustomCircularProgress();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
