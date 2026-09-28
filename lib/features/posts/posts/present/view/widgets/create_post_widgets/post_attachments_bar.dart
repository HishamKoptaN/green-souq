import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';

import '../../../bloc/posts_bloc.dart';
import '../../../bloc/posts_state.dart';

class PostAttachmentsBar extends StatelessWidget {
  PostAttachmentsBar({super.key});
  bool canPick = true;
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
                //List<AttachmentItem> attachmentItems = [
                //  AttachmentItem(
                //    text: "صورة/فيديو",
                //    icon: Assets.imagesPhotoVideoCon,
                //    onTap: () async {
                //      final media = await MediaPickerHelper.pickMediaFile(
                //        context: context,
                //        maxVideoDuration: 300,
                //      );
                //      if (media != null) {
                //        final isVideo = media['isVideo'] as bool;
                //        final bytes = media['bytes'] as Uint8List;
                //        context.read<PostsBloc>().add(
                //          PostsEvent.updateData(
                //            createPostReqBody: createPostReqBody!.copyWith(
                //              image: null,
                //              imageUrl: null,
                //              video: bytes,
                //              videoUrl: null,
                //              pdf: null,
                //              pdfUrl: null,
                //            ),
                //            scheduledDateTime: null,
                //          ),
                //        );
                //        if (isVideo) {
                //        } else {
                //          context.read<PostsBloc>().add(
                //            PostsEvent.updateData(
                //              createPostReqBody: createPostReqBody.copyWith(
                //                image: bytes,
                //                imageUrl: null,
                //                video: null,
                //                videoUrl: null,
                //                pdf: null,
                //                pdfUrl: null,
                //              ),
                //              scheduledDateTime: null,
                //            ),
                //          );
                //        }
                //      }
                //    },
                //  ),
                //  AttachmentItem(
                //    text: "ملف",
                //    icon: Assets.imagesFileIcon,
                //    onTap: () async {
                //      if ((context
                //                      .read<ProfileBloc>()
                //                      .profileResModel
                //                      ?.followersCount ??
                //                  0) >
                //              500 ||
                //          canPick) {
                //        final result = await PickPdfHelper.pickPdf();
                //        if (result != null) {
                //          final Uint8List fileBytes = result['fileBytes'];
                //          final String fileName = result['fileName'];
                //          context.read<PostsBloc>().add(
                //            PostsEvent.updateData(
                //              createPostReqBody: createPostReqBody!.copyWith(
                //                image: null,
                //                imageUrl: null,
                //                video: null,
                //                videoUrl: null,
                //                pdfName: fileName,
                //                pdf: fileBytes,
                //                pdfUrl: null,
                //              ),
                //              scheduledDateTime: null,
                //            ),
                //          );
                //        }
                //        canPick = false;
                //      } else {
                //        await showDialog<void>(
                //          context: navigatorKey.currentContext!,
                //          builder: (context) {
                //            return AlertDialog(
                //              content: const Text(
                //                'لتنزيل ملف يجب ان يكون لديك 500 متابع.',
                //              ),
                //              actions: [
                //                TextButton(
                //                  onPressed: () => Navigator.of(context).pop(),
                //                  child: const Text('حسناً'),
                //                ),
                //              ],
                //            );
                //          },
                //        );
                //        canPick = true;
                //      }
                //    },
                //  ),
                //  AttachmentItem(
                //    text: "مناسبة",
                //    icon: Assets.imagesCalenderIcon,
                //    onTap: () async {
                //      return showDialog(
                //        context: context,
                //        builder: (dialogContext) {
                //          return BlocProvider.value(
                //            value: context.read<PostsBloc>(),
                //            child: AlertDialog(
                //              backgroundColor: Colors.white,
                //              scrollable: true,
                //              title: MouseRegion(
                //                cursor: SystemMouseCursors.click,
                //                child: GestureDetector(
                //                  onTap: () {
                //                    if (createPostReqBody?.createOccasionReqBody
                //                            .hasAnyData() ??
                //                        false) {
                //                      showConfirmationDialog(
                //                        rejectText: 'الغاء',
                //                        acceptText: 'موافق',
                //                        context: context,
                //                        title: 'تنبيه',
                //                        message: 'سيتم حذف بيانات المناسبة اللتي قمت بأدخالها',
                //                        acceptOnPressed: () {
                //                          Navigator.of(context).pop();
                //                          Navigator.of(dialogContext).pop();
                //                          context.read<PostsBloc>().add(
                //                            PostsEvent.updateData(
                //                              createPostReqBody:
                //                                  CreatePostReqBody.empty(),
                //                              scheduledDateTime: null,
                //                            ),
                //                          );
                //                        },
                //                        rejectOnPressed: () {
                //                          Navigator.of(context).pop();
                //                        },
                //                      );
                //                    } else {
                //                      Navigator.of(context).pop();
                //                    }
                //                  },
                //                  child: const Row(
                //                    children: [
                //                      Icon(Icons.arrow_back),
                //                      SizedBox(width: 8),
                //                      Text(
                //                        "مناسبة",
                //                        style: TextStyles.regular30,
                //                      ),
                //                    ],
                //                  ),
                //                ),
                //              ),
                //              content: CreateOccasionDialog(),
                //            ),
                //          );
                //        },
                //      );
                //    },
                //  ),
                //  AttachmentItem(
                //    text: "استبيان",
                //    icon: Assets.imagesPollIcon,
                //    onTap: () async {
                //      if (createPostReqBody?.content?.isNotEmpty == true) {
                //        return showDialog(
                //          context: context,
                //          builder: (dialogContext) {
                //            return BlocProvider.value(
                //              value: context.read<PostsBloc>(),
                //              child: AlertDialog(
                //                backgroundColor: Colors.white,
                //                scrollable: true,
                //                title: MouseRegion(
                //                  cursor: SystemMouseCursors.click,
                //                  child: GestureDetector(
                //                    onTap: () {
                //                      if (createPostReqBody?.poll.hasAnyData(
                //                            content:
                //                                createPostReqBody.content ?? '',
                //                          ) ??
                //                          false) {
                //                        showConfirmationDialog(
                //                          rejectText: 'الغاء',
                //                          acceptText: 'موافق',
                //                          context: context,
                //                          title: 'تنبيه',
                //                          message: 'سيتم حذف بيانات الاستبيان اللتي قمت بأدخالها',
                //                          acceptOnPressed: () {
                //                            Navigator.of(context).pop();
                //                            Navigator.of(dialogContext).pop();
                //                            context.read<PostsBloc>().add(
                //                              PostsEvent.updateData(
                //                                createPostReqBody:
                //                                    CreatePostReqBody.empty(),
                //                                scheduledDateTime: null,
                //                              ),
                //                            );
                //                          },
                //                          rejectOnPressed: () {
                //                            Navigator.of(context).pop();
                //                          },
                //                        );
                //                      } else {
                //                        Navigator.of(context).pop();
                //                      }
                //                    },
                //                    child: const Row(
                //                      children: [
                //                        Icon(Icons.arrow_back),
                //                        SizedBox(width: 8),
                //                        Text(
                //                          "استبيان",
                //                          style: TextStyles.regular30,
                //                        ),
                //                      ],
                //                    ),
                //                  ),
                //                ),
                //                content: const PollDialogView(),
                //              ),
                //            );
                //          },
                //        );
                //      } else {
                //        ScaffoldMessenger.of(context).showSnackBar(
                //          const SnackBar(
                //            content: Text('قم بادخال نص الاستبيان'),
                //          ),
                //        );
                //      }
                //    },
                //  ),
                //  AttachmentItem(
                //    text: "طلب خدمة",
                //    icon: Assets.imagesJobIcon,
                //    onTap: () {
                //      return showDialog(
                //        context: context,
                //        builder: (dialogContext) {
                //          return BlocProvider.value(
                //            value: context.read<PostsBloc>(),
                //            child: AlertDialog(
                //              backgroundColor: Colors.white,
                //              scrollable: true,
                //              title: MouseRegion(
                //                cursor: SystemMouseCursors.click,
                //                child: GestureDetector(
                //                  onTap: () {
                //                    if ((createPostReqBody?.createServReqReqBody
                //                            .hasAnyData() ??
                //                        false)) {
                //                      showConfirmationDialog(
                //                        rejectText: 'الغاء',
                //                        acceptText: 'موافق',
                //                        context: context,
                //                        title: 'تنبيه',
                //                        message: 'سيتم حذف بيانات طلب الخدمه اللتي قمت بأدخالها',
                //                        acceptOnPressed: () {
                //                          Navigator.of(context).pop();
                //                          Navigator.of(dialogContext).pop();
                //                          context.read<PostsBloc>().add(
                //                            PostsEvent.updateData(
                //                              createPostReqBody:
                //                                  CreatePostReqBody.empty(),
                //                              scheduledDateTime: null,
                //                            ),
                //                          );
                //                        },
                //                        rejectOnPressed: () {
                //                          Navigator.of(context).pop();
                //                        },
                //                      );
                //                    } else {
                //                      Navigator.of(context).pop();
                //                    }
                //                  },
                //                  child: const Row(
                //                    children: [
                //                      Icon(Icons.arrow_back),
                //                      SizedBox(width: 8),
                //                      Text(
                //                        "طلب خدمة",
                //                        style: TextStyles.regular30,
                //                      ),
                //                    ],
                //                  ),
                //                ),
                //              ),
                //              content: const ServReqDialogView(),
                //            ),
                //          );
                //        },
                //      );
                //    },
                //  ),
                // ];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.darkGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //children: attachmentItems
                        //    .map(
                        //      (item) => PostAttachmentsBarItem(
                        //        text: item.text,
                        //        icon: item.icon,
                        //        onTap: item.onTap,
                        //      ),
                        //    )
                        //    .toList(),
                      ),
                    ),
                  ),
                );
              },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
