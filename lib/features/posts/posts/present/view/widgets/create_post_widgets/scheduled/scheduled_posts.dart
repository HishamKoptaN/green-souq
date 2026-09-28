import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_images.dart';
import 'package:green/core/utils/app_text_styles.dart';

import '../../../../../../../../gen/assets.gen.dart';
import '../../../../bloc/posts_bloc.dart';
import '../../../../bloc/posts_event.dart';
import '../../../../bloc/posts_state.dart';
import 'scheduled_post_shimmer.dart';

class ScheduledPosts extends StatefulWidget {
  const ScheduledPosts({super.key});

  @override
  State<ScheduledPosts> createState() => _ScheduledPostsState();
}

class _ScheduledPostsState extends State<ScheduledPosts> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded:
              (
                posts,
                scheduledPosts,
                hasNextPage,
                createPostReqBody,
                videoPath,
                scheduledDateTime,
                isCreatePostLoading,
                hasDraft,
              ) {
                if (scheduledPosts == null || scheduledPosts.isEmpty) {
                  return Center(
                    child: Text(
                      "لا يوجد منشورات مجدولة",
                      style: TextStyles.medium14.copyWith(
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  );
                }
                return SizedBox(
                  height: 300,
                  width: 600,
                  child: ListView.builder(
                    itemCount: scheduledPosts.length,
                    itemBuilder: (context, index) {
                      if (scheduledPosts != null || scheduledPosts.isNotEmpty) {
                        final scheduledPost = scheduledPosts[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.darkGreyColor,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            //  SvgPicture.asset(
                                            //    Assets.imagesMynauiCalendar,
                                            //  ),
                                            const SizedBox(width: 8),
                                            Text(
                                              "سيتم النشر بعد ${scheduledPost.publishAt}",
                                              style: TextStyles.regular14
                                                  .copyWith(
                                                    color:
                                                        AppColors.darkGreyColor,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          scheduledPost.postable?.content ?? "",
                                          // style: TextStyles.regular16.copyWith(
                                          //   color: AppColors.darkGreyColor,
                                          // ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context.read<PostsBloc>().add(
                                        PostsEvent.deletePost(
                                          id: scheduledPost.id ?? 0,
                                        ),
                                      );
                                    },
                                  // child: SvgPicture.asset(
                                  //   Assets.imagesMiDelete,
                                  // ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        return const ScheduledPostShimmerCard();
                      }
                    },
                  ),
                );
              },
          postsLoading: () {
            return SizedBox(
              height: 300,
              width: 600,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ScheduledPostShimmerCard();
                },
              ),
            );
          },
          orElse: () {
            return const ScheduledPostShimmerCard();
          },
        );
      },
    );
  }
}
