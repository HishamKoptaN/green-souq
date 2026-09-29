import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';

import '../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../profile/present/bloc/profile_bloc.dart';
import '../../../../cmnts/data/models/create_cmnt_req_body.dart';
import '../../../../cmnts/present/bloc/cmnts_bloc.dart';
import '../../../../cmnts/present/bloc/cmnts_event.dart';
import '../../../../cmnts/present/bloc/cmnts_state.dart';
import '../../bloc/posts_bloc.dart';

void showCommentsSheet({
  required BuildContext context,
  required TextEditingController? commentController,
  required VoidCallback? onPressed,
  required int? id,
}) {
  CreateCmntReqBody createCmntReqBody = const CreateCmntReqBody();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.6,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        builder: (context, scrollController) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.read<CmntsBloc>().add(
              CmntsEvent.getCmnts(postId: id!, page: 1),
            );
          });
          return BlocBuilder<CmntsBloc, CmntsState>(
            builder: (context, state) {
              return state.maybeWhen(
                cmntsloaded: (cmnts, has) {
                  return Column(
                    children: [
                      Container(
                        width: 40,
                        height: 5,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(),
                          const Text("تعليقات المنشور"),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close_outlined),
                          ),
                        ],
                      ),
                      Expanded(
                        child: BlocBuilder<CmntsBloc, CmntsState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              cmntsloaded: (cmnts, has) {
                                return ListView.builder(
                                  controller: scrollController,
                                  itemCount: cmnts?.length,
                                  itemBuilder: (context, index) {
                                    final cmnt = cmnts?[index];
                                    return ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          cmnt?.commentOwner?.image ?? '',
                                        ),
                                      ),
                                      title: Text(
                                        cmnt?.commentOwner?.name ?? '',
                                        style: TextStyles.bold16,
                                      ),
                                      subtitle: Text(cmnt?.comment ?? ''),
                                    );
                                  },
                                );
                              },
                              orElse: () {
                                return const CustomCircularProgress();
                              },
                              cmntsLoading: () {
                                return const CustomCircularProgress();
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //BlocBuilder<ProfileBloc, ProfileState>(
                            //  builder: (context, state) {
                            //    return state.maybeWhen(
                            //      getProfileSuccess:
                            //          (
                            //            profile,
                            //            otherProfile,
                            //            updateProfileReqModel,
                            //            isUpdating,
                            //            getUserProfileLoading,
                            //          ) {
                            //            return GestureDetector(
                            //              onTap: () async {},
                            //              child: !isUpdating!
                            //                  ? CircleAvatar(
                            //                      backgroundImage: NetworkImage(
                            //                        profile?.user?.image ?? '',
                            //                      ),
                            //                    )
                            //                  : InkWell(onTap: () async {}),
                            //            );
                            //          },
                            //      profileLoading: () {
                            //        return InkWell(
                            //          onTap: () async {},
                            //          child: const ShimmerCircleAvatar(),
                            //        );
                            //      },
                            //      orElse: () {
                            //        return InkWell(
                            //          onTap: () async {},
                            //          child: const ShimmerCircleAvatar(),
                            //        );
                            //      },
                            //    );
                            //  },
                            //),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                controller: commentController,
                                onChanged: (v) {
                                  createCmntReqBody = createCmntReqBody
                                      .copyWith(
                                        comment: v,
                                        commentableId: id,
                                        commentableType: 'post',
                                      );
                                },
                                decoration: InputDecoration(
                                  hintText: "اكتب تعليقًا...",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                context.read<PostsBloc>().add(
                                  PostsEvent.increasePostCmntsCount(
                                    id: id ?? 0,
                                  ),
                                );
                                context.read<CmntsBloc>().add(
                                  CmntsEvent.createCmnt(
                                    createCmntReqBody: createCmntReqBody,
                                  ),
                                );
                                commentController?.clear();
                                context.read<PostsBloc>().add(
                                  PostsEvent.increasePostCmntsCount(
                                    id: id ?? 0,
                                  ),
                                );
                              },
                              child: IconButton(
                                icon: const Icon(
                                  Icons.send,
                                  color: AppColors.primaryColor,
                                ),
                                onPressed: onPressed,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                orElse: () {
                  return const CustomCircularProgress();
                },
                cmntsLoading: () {
                  return const CustomCircularProgress();
                },
              );
            },
          );
        },
      );
    },
  );
}
