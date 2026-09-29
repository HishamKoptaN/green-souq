import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/widgets/custom_button.dart';
import 'package:green/core/widgets/custom_text_form_field.dart';

import '../../../../../../../core/enums/post_type.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../../data/models/create_poll_req_body.dart';
import '../../../bloc/posts_bloc.dart';

class PollDialogView extends StatefulWidget {
  const PollDialogView({super.key});

  @override
  State<PollDialogView> createState() => _PollDialogViewState();
}

class _PollDialogViewState extends State<PollDialogView> {
  final _formKey = GlobalKey<FormState>();
  String? _durationType;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<PostsBloc>(),
      child: BlocListener<PostsBloc, PostsState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_, __, ___, ____) {
              Navigator.of(context).pop();
            },
            createPostFailure: (_) {
              Navigator.of(context).pop();
            },
          );
        },
        child: AlertDialog(
          backgroundColor: Colors.white,
          content: BlocBuilder<PostsBloc, PostsState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded:
                    (
                      posts,
                      createPostReqBody,
                      videoPath,
                      scheduledDateTime,
                      isCreatePostLoading,
                      hasDraft,
                    ) {
                      return Container(
                        width: 600,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 54),
                            //  child: BlocConsumer<OpinionPollsBloc, OpinionPollsState>(
                            //    listener: (context, state) {
                            //      state.whenOrNull(
                            //        success: () {
                            //          Navigator.pop(context);
                            //        },
                            //      );
                            //    },
                            //    builder: (context, state) {
                            //      return Column(
                            //        crossAxisAlignment: CrossAxisAlignment.center,
                            //        children: [
                            //          Gap(30.h),
                            //          ...createPostReqBody!.poll.options
                            //              .asMap()
                            //              .entries
                            //              .map((entry) {
                            //                final i = entry.key;
                            //                return Padding(
                            //                  padding: const EdgeInsets.only(
                            //                    bottom: 16,
                            //                  ),
                            //                  child: CustomTextFormField(
                            //                    backGroundColor: Colors.white,
                            //                    colorBorderSide:
                            //                        AppColors.darkGreyColor,
                            //                    hintText: "الخيار ${i + 1}",
                            //                    // autovalidateMode: AutovalidateMode
                            //                    //     .onUserInteraction,
                            //                    onChanged: (v) {
                            //                      final updatedOptions =
                            //                          List<String>.from(
                            //                            createPostReqBody
                            //                                .poll
                            //                                .options,
                            //                          );
                            //                      updatedOptions[i] = v;
                            //                      final isLast =
                            //                          i ==
                            //                          updatedOptions.length - 1;
                            //                      final isFilled = v
                            //                          .trim()
                            //                          .isNotEmpty;

                            //                      if (isLast &&
                            //                          isFilled &&
                            //                          updatedOptions.length < 9) {
                            //                        updatedOptions.add("");
                            //                      }
                            //                      while (updatedOptions.length >
                            //                              2 &&
                            //                          updatedOptions
                            //                              .sublist(
                            //                                updatedOptions
                            //                                        .length -
                            //                                    2,
                            //                              )
                            //                              .every(
                            //                                (e) =>
                            //                                    e.trim().isEmpty,
                            //                              )) {
                            //                        updatedOptions.removeLast();
                            //                      }
                            //                      context.read<PostsBloc>().add(
                            //                        PostsEvent.updateData(
                            //                          createPostReqBody:
                            //                              createPostReqBody.copyWith(
                            //                                poll: createPostReqBody
                            //                                    .poll
                            //                                    .copyWith(
                            //                                      options:
                            //                                          updatedOptions,
                            //                                    ),
                            //                              ),
                            //                          scheduledDateTime: null,
                            //                        ),
                            //                      );
                            //                    },
                            //                    validator: (v) {
                            //                      if ((v == null || v.isEmpty) &&
                            //                          i < 2) {
                            //                        return 'الخيار ${i + 1} مطلوب';
                            //                      }
                            //                      return null;
                            //                    },
                            //                  ),
                            //                );
                            //              }),
                            //          if (createPostReqBody.poll.options.length >
                            //              2)
                            //            Align(
                            //              alignment: Alignment.centerRight,
                            //              child: TextButton.icon(
                            //                onPressed: () {
                            //                  if (createPostReqBody
                            //                          .poll
                            //                          .options
                            //                          .length >
                            //                      2) {
                            //                    final updatedOptions =
                            //                        List<String>.from(
                            //                          createPostReqBody
                            //                              .poll
                            //                              .options,
                            //                        );
                            //                    updatedOptions.removeLast();
                            //                    context.read<PostsBloc>().add(
                            //                      PostsEvent.updateData(
                            //                        createPostReqBody:
                            //                            createPostReqBody.copyWith(
                            //                              poll: createPostReqBody
                            //                                  .poll
                            //                                  .copyWith(
                            //                                    options:
                            //                                        updatedOptions,
                            //                                  ),
                            //                            ),
                            //                        scheduledDateTime: null,
                            //                      ),
                            //                    );
                            //                  }
                            //                },
                            //                icon: const Icon(Icons.remove),
                            //                label: const Text("حذف آخر خيار"),
                            //              ),
                            //            ),
                            //          const SizedBox(height: 16),
                            //          buildDropdown<String>(
                            //            value: _durationType ?? "",
                            //            items: const [
                            //              "يوم",
                            //              "يومين",
                            //              "ثلاثة أيام",
                            //              "أربعة أيام",
                            //              "خمسة أيام",
                            //              "ستة أيام",
                            //              "سبعة أيام",
                            //            ],
                            //            hint: "فترة الاستبيان",
                            //            onChanged: (v) async {
                            //              _durationType = v;
                            //              final durationMap = {
                            //                "يوم": 1,
                            //                "يومين": 2,
                            //                "ثلاثة أيام": 3,
                            //                "أربعة أيام": 4,
                            //                "خمسة أيام": 5,
                            //                "ستة أيام": 6,
                            //                "سبعة أيام": 7,
                            //              };
                            //              final period =
                            //                  durationMap[_durationType ?? ""];
                            //              context.read<PostsBloc>().add(
                            //                PostsEvent.updateData(
                            //                  createPostReqBody: createPostReqBody
                            //                      .copyWith(
                            //                        poll: createPostReqBody.poll
                            //                            .copyWith(period: period),
                            //                      ),
                            //                  scheduledDateTime: null,
                            //                ),
                            //              );
                            //            },
                            //          ),
                            //          const SizedBox(height: 24),
                            //          Center(
                            //            child: CustomButton(
                            //              width: 100,
                            //              widget: !isCreatePostLoading!
                            //                  ? Text(
                            //                      "إدراج",
                            //                      style: TextStyles.medium16
                            //                          .copyWith(
                            //                            color: Colors.white,
                            //                          ),
                            //                    )
                            //                  : const CustomCircularProgress(),
                            //              backgroundColor:
                            //                  createPostReqBody.poll.isValid()
                            //                  ? AppColors.primaryColor
                            //                  : AppColors.darkGreyColor
                            //                        .withOpacity(0.5),
                            //              onPressed: () {
                            //                if (createPostReqBody.poll
                            //                    .isValid()) {
                            //                  context.read<PostsBloc>().add(
                            //                    const PostsEvent.createPost(
                            //                      postType: PostType.poll,
                            //                      create: true,
                            //                      scheduled: false,
                            //                      draft: false,
                            //                    ),
                            //                  );
                            //                }
                            //                //   else {
                            //                //     ScaffoldMessenger.of(
                            //                //       context,
                            //                //     ).showSnackBar(
                            //                //       const SnackBar(
                            //                //         content: Text(
                            //                //           "يرجى اختيار فترة الاستبيان",
                            //                //         ),
                            //                //       ),
                            //                //     );
                            //                //   }
                            //              },
                            //            ),
                            //          ),
                            //        ],
                            //      );
                            //    },
                            //  ),
                          ),
                        ),
                      );
                    },
                createPostLoading: () {
                  return SizedBox();
                },
                orElse: () {
                  return SizedBox();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
