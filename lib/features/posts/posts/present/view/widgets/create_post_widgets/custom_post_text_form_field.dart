import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:green/features/posts/posts/data/models/create_post_req_body.dart';

import '../../../../../../../core/enums/post_type.dart';
import '../../../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../../../main.dart';
import '../../../../data/models/scheduled_date_time.dart';
import '../../../bloc/posts_bloc.dart';
import '../../../bloc/posts_event.dart';
import '../../../bloc/posts_state.dart';
import 'scheduler_view.dart';
import '../video_preview/video_preview_selector.dart';

class HomeCustomPostTextFormField extends StatefulWidget {
  const HomeCustomPostTextFormField({super.key});
  @override
  State<HomeCustomPostTextFormField> createState() =>
      _HomeCustomPostTextFormFieldState();
}

class _HomeCustomPostTextFormFieldState
    extends State<HomeCustomPostTextFormField> {
  String? video;
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
                bool hasContentToPost =
                    createPostReqBody?.hasContentToPost ?? false;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(1.0),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                          color: AppColors.darkGreyColor,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Form(
                        child: Column(
                          children: [
                            //CustomTextFormField(
                            //  initialValue: createPostReqBody?.content ?? '',
                            //  maxLines: 5,
                            //  keyboardType: TextInputType.multiline,
                            //  textInputAction: TextInputAction.newline,
                            //  textAlign: TextAlign.start,
                            //  onChanged: (v) {
                            //    context.read<PostsBloc>().add(
                            //      PostsEvent.updateData(
                            //        createPostReqBody: createPostReqBody
                            //            ?.copyWith(content: v),
                            //        scheduledDateTime: scheduledDateTime,
                            //      ),
                            //    );
                            //  },
                            //  validator: (v) {
                            //    if (v == null || v.trim().isEmpty) {
                            //      return 'يرجى إدخال نص المنشور';
                            //    }
                            //    return null;
                            //  },
                            //  decoration: InputDecoration(
                            //    border: InputBorder.none,
                            //    focusedBorder: InputBorder.none,
                            //    hintText: "اكتب المنشور",
                            //    hintStyle: TextStyles.medium20.copyWith(
                            //      color: AppColors.darkGreyColor,
                            //    ),
                            //    filled: true,
                            //    fillColor: Colors.white,
                            //    suffixIcon: SizedBox(
                            //      width: 90.w,
                            //      child: Padding(
                            //        padding: const EdgeInsets.all(2.0),
                            //        child: Column(
                            //          mainAxisAlignment:
                            //              MainAxisAlignment.center,
                            //          crossAxisAlignment:
                            //              CrossAxisAlignment.center,
                            //          mainAxisSize: MainAxisSize.max,
                            //          children: [
                            //            InkWell(
                            //              onTap: () {
                            //                context.read<PostsBloc>().add(
                            //                  const PostsEvent.draft(),
                            //                );
                            //              },
                            //              child: Text(
                            //                "مسودة",
                            //                style: hasDraft == true
                            //                    ? TextStyles.bold13
                            //                    : TextStyles.medium13,
                            //              ),
                            //            ),
                            //            SizedBox(height: 2.h),
                            //            InkWell(
                            //              onTap: () {
                            //                showDialog(
                            //                  context: context,
                            //                  builder: (dialogContext) {
                            //                    return BlocProvider.value(
                            //                      value: context
                            //                          .read<PostsBloc>(),
                            //                      child: AlertDialog(
                            //                        backgroundColor:
                            //                            Colors.white,
                            //                        scrollable: true,
                            //                        title: MouseRegion(
                            //                          cursor: SystemMouseCursors
                            //                              .click,
                            //                          child: GestureDetector(
                            //                            onTap: () =>
                            //                                Navigator.of(
                            //                                  context,
                            //                                ).pop(),
                            //                            child: const Row(
                            //                              children: [
                            //                                Icon(
                            //                                  Icons.arrow_back,
                            //                                ),
                            //                                SizedBox(width: 8),
                            //                                Text(
                            //                                  "جدولة",
                            //                                  style: TextStyles
                            //                                      .regular30,
                            //                                ),
                            //                              ],
                            //                            ),
                            //                          ),
                            //                        ),
                            //                        content:
                            //                            const SchedulerDialog(
                            //                              isCreatePost: true,
                            //                            ),
                            //                      ),
                            //                    );
                            //                  },
                            //                );
                            //              },
                            //              child: const Text(
                            //                "جدولة",
                            //                style: TextStyles.medium13,
                            //              ),
                            //            ),
                            //            SizedBox(height: 2.h),
                            //            InkWell(
                            //              onTap: () async {
                            //                if (hasContentToPost) {
                            //                  bool? isConfirmed;
                            //                  if (scheduledDateTime
                            //                          ?.formattedArabicDate ==
                            //                      null) {
                            //                  } else {
                            //                    isConfirmed =
                            //                        await showDialog<bool?>(
                            //                          context: navigatorKey
                            //                              .currentContext!,
                            //                          builder: (context) {
                            //                            return AlertDialog(
                            //                              title: const Text(
                            //                                'تأكيد حفظ المنشور المجدول',
                            //                              ),
                            //                              content: const Text(
                            //                                'تأكيد الحفظ ؟',
                            //                              ),
                            //                              actions: [
                            //                                TextButton(
                            //                                  onPressed: () =>
                            //                                      Navigator.of(
                            //                                        context,
                            //                                      ).pop(false),
                            //                                  child: const Text(
                            //                                    'لا',
                            //                                  ),
                            //                                ),
                            //                                TextButton(
                            //                                  onPressed: () =>
                            //                                      Navigator.of(
                            //                                        context,
                            //                                      ).pop(true),
                            //                                  child: const Text(
                            //                                    'نعم',
                            //                                  ),
                            //                                ),
                            //                              ],
                            //                            );
                            //                          },
                            //                        );
                            //                  }
                            //                  if (isConfirmed != false) {
                            //                    state.maybeWhen(
                            //                      createPostLoading: () {},
                            //                      orElse: () {
                            //                        context.read<PostsBloc>().add(
                            //                          PostsEvent.createPost(
                            //                            postType: PostType
                            //                                .social_post,
                            //                            create: true,
                            //                            scheduled:
                            //                                scheduledDateTime
                            //                                        ?.formattedArabicDate ==
                            //                                    null
                            //                                ? false
                            //                                : true,
                            //                            draft: null,
                            //                          ),
                            //                        );
                            //                      },
                            //                    );
                            //                  }
                            //                }
                            //              },
                            //              child: MouseRegion(
                            //                cursor: SystemMouseCursors.click,
                            //                child: SizedBox(
                            //                  child: !isCreatePostLoading!
                            //                      ? Text(
                            //                          scheduledDateTime
                            //                                      ?.formattedArabicDate ==
                            //                                  null
                            //                              ? "نشر"
                            //                              : "حفظ المنشور المجدول",
                            //                          style: TextStyles.medium14
                            //                              .copyWith(
                            //                                color:
                            //                                    hasContentToPost
                            //                                    ? AppColors
                            //                                          .primaryColor
                            //                                    : AppColors
                            //                                          .darkGreyColor,
                            //                              ),
                            //                          overflow:
                            //                              TextOverflow.visible,
                            //                        )
                            //                      : const CustomCircularProgress(),
                            //                ),
                            //              ),
                            //            ),
                            //          ],
                            //        ),
                            //      ),
                            //    ),
                            //  ),
                            //),
                            if (createPostReqBody?.imageUrl != null ||
                                createPostReqBody?.image != null)
                              Stack(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: createPostReqBody?.image != null
                                          ? Image.memory(
                                              createPostReqBody!.image!,
                                              fit: BoxFit.fill,
                                            )
                                          : createPostReqBody?.imageUrl != null
                                          ? Image.network(
                                              createPostReqBody?.imageUrl ?? '',
                                              fit: BoxFit.fill,
                                            )
                                          : Container(),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: IconButton(
                                      onPressed: () {
                                        if (createPostReqBody?.image != null) {
                                          context.read<PostsBloc>().add(
                                            PostsEvent.updateData(
                                              createPostReqBody:
                                                  createPostReqBody?.copyWith(
                                                    image: null,
                                                  ),
                                              scheduledDateTime: null,
                                            ),
                                          );
                                        } else if (createPostReqBody
                                                ?.imageUrl !=
                                            null) {
                                          context.read<PostsBloc>().add(
                                            PostsEvent.updateData(
                                              createPostReqBody:
                                                  createPostReqBody?.copyWith(
                                                    imageUrl: null,
                                                  ),
                                              scheduledDateTime: null,
                                            ),
                                          );
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            if (createPostReqBody?.pdf != null ||
                                createPostReqBody?.pdfUrl != null)
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.darkGreyColor,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.picture_as_pdf,
                                      color: Colors.red,
                                      size: 40,
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        createPostReqBody?.pdfName ??
                                            "ملف PDF مرفق",
                                        style: TextStyles.medium14.copyWith(
                                          color: AppColors.darkGreyColor,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        context.read<PostsBloc>().add(
                                          PostsEvent.updateData(
                                            createPostReqBody: createPostReqBody
                                                ?.copyWith(
                                                  pdf: null,
                                                  pdfUrl: null,
                                                  pdfName: null,
                                                ),
                                            scheduledDateTime:
                                                scheduledDateTime,
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: AppColors.redColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (createPostReqBody?.video != null ||
                                createPostReqBody?.videoUrl != null)
                              Stack(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: VideoPreviewSelector(
                                        videoBytes: createPostReqBody?.video,
                                        videoUrl: createPostReqBody?.videoUrl,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: IconButton(
                                      onPressed: () {
                                        context.read<PostsBloc>().add(
                                          PostsEvent.updateData(
                                            createPostReqBody: createPostReqBody
                                                ?.copyWith(
                                                  video: null,
                                                  videoUrl: null,
                                                ),
                                            scheduledDateTime:
                                                scheduledDateTime,
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            if (scheduledDateTime?.formattedArabicDate != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "سيتم النشر في",
                                      style: TextStyles.medium14.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      scheduledDateTime!.formattedArabicDate!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    InkWell(
                                      onTap: () {
                                        context.read<PostsBloc>().add(
                                          const PostsEvent.cancelSchedule(),
                                        );
                                      },
                                      child: const MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: Text(
                                          "إلغاء",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
          createPostLoading: () {
            return const SizedBox();
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.darkGreyColor, width: 0.5),
    );
  }
}
