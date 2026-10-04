import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/features/posts/posts/present/view/widgets/create_post_widgets/bottom_sheet/green_create_post_bottom_sheet.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../custom_pagination_widget.dart';
import '../../../posts/posts/present/bloc/posts_bloc.dart';
import '../../../posts/posts/present/view/widgets/create_post_trigger_card.dart';
import '../../../posts/posts/present/view/widgets/posts_list_view.dart';

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
                      GreenCreatePostBottomSheet(),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return const GreenCreatePostBottomSheet();
                            },
                          );
                        },
                        child: CreatePostTriggerCard(),
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
