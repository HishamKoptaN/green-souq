import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/widgets/custom_button.dart';
import 'package:green/core/widgets/custom_text_form_field.dart';

import '../../../../../../../core/enums/post_type.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../../data/models/create_serv_req_req_body.dart';
import '../../../bloc/posts_bloc.dart';

class ServReqDialogView extends StatefulWidget {
  const ServReqDialogView({super.key});
  @override
  State<ServReqDialogView> createState() => _ServReqDialogViewState();
}

class _ServReqDialogViewState extends State<ServReqDialogView> {
  //Specialization? selectedCategory;
  @override
  void initState() {
    super.initState();
    //  context.read<ServicesBloc>().add(const ServicesEvent.getSpecilizations());
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostsBloc, PostsState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (a, b, c, d) {
            Navigator.of(context).pop();
          },
        );
      },
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 54),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            // backGroundColor: Colors.white,
                            // colorBorderSide: AppColors.darkGreyColor,
                            hintText: "العنوان",
                            // onChanged: (v) {
                            //  context.read<PostsBloc>().add(
                            //    PostsEvent.updateData(
                            //      createPostReqBody: createPostReqBody
                            //          ?.copyWith(
                            //            createServReqReqBody: createPostReqBody
                            //                .createServReqReqBody
                            //                .copyWith(title: v),
                            //          ),
                            //      scheduledDateTime: null,
                            //    ),
                            //  );
                            //},
                            //// autovalidateMode:
                            ////     AutovalidateMode.onUserInteraction,
                            //validator: (v) {
                            //  if (v == null || v.trim().isEmpty) {
                            //    return 'يرجى إدخال العنوان ';
                            //  }
                            //  return null;
                            //},
                          ),
                          const SizedBox(height: 16),
                          //  BlocBuilder<ServicesBloc, ServicesState>(
                          //    builder: (context, state) {
                          //      return state.maybeWhen(
                          //        servicesLoaded:
                          //            (
                          //              services,
                          //              hasNextPage,
                          //              specializations,
                          //              isCreateORreq,
                          //            ) {
                          //              return buildDropdown<Specialization>(
                          //                value: selectedCategory,
                          //                items: specializations ?? [],
                          //                hint: "التصنيف",
                          //                itemLabel: (spec) => spec.name ?? '',
                          //                onChanged: (v) {
                          //                  context.read<PostsBloc>().add(
                          //                    PostsEvent.updateData(
                          //                      createPostReqBody:
                          //                          createPostReqBody?.copyWith(
                          //                            createServReqReqBody:
                          //                                createPostReqBody
                          //                                    .createServReqReqBody
                          //                                    .copyWith(
                          //                                      specializationId:
                          //                                          v?.id ?? 0,
                          //                                    ),
                          //                          ),
                          //                      scheduledDateTime: null,
                          //                    ),
                          //                  );
                          //                  setState(() {
                          //                    selectedCategory = v;
                          //                  });
                          //                },
                          //              );
                          //            },
                          //        orElse: () {
                          //          return const SizedBox();
                          //        },
                          //      );
                          //    },
                          //  ),
                          //  const SizedBox(height: 16),
                          //  CustomTextFormField(
                          //    backGroundColor: Colors.white,
                          //    colorBorderSide: AppColors.darkGreyColor,
                          //    maxLines: 5,
                          //    hintText: "تفاصيل الطلب",
                          //    onChanged: (v) {
                          //      context.read<PostsBloc>().add(
                          //        PostsEvent.updateData(
                          //          createPostReqBody: createPostReqBody
                          //              ?.copyWith(
                          //                createServReqReqBody: createPostReqBody
                          //                    .createServReqReqBody
                          //                    .copyWith(details: v),
                          //              ),
                          //          scheduledDateTime: null,
                          //        ),
                          //      );
                          //    },
                          //    // autovalidateMode:
                          //    //     AutovalidateMode.onUserInteraction,
                          //    validator: (v) {
                          //      if (v == null || v.trim().isEmpty) {
                          //        return 'يرجى إدخال تفاصيل الطلب ';
                          //      }
                          //      return null;
                          //    },
                          //  ),
                          //  const SizedBox(height: 24),
                          //  Center(
                          //    child: CustomButton(
                          //      width: 100,
                          //      backgroundColor:
                          //          createPostReqBody?.createServReqReqBody
                          //                  .isValid() ??
                          //              false
                          //          ? AppColors.primaryColor
                          //          : AppColors.darkGreyColor.withOpacity(0.5),
                          //      widget: !isCreatePostLoading!
                          //          ? Text(
                          //              "إدراج",
                          //              style: TextStyles.medium16.copyWith(
                          //                color: Colors.white,
                          //              ),
                          //            )
                          //          : const CustomCircularProgress(),
                          //      onPressed: () {
                          //        final isFormValid =
                          //            _formKey.currentState?.validate() ?? false;
                          //        final isBodyValid =
                          //            createPostReqBody?.createServReqReqBody
                          //                .isValid() ??
                          //            false;
                          //        if (isFormValid && isBodyValid) {
                          //          context.read<PostsBloc>().add(
                          //            const PostsEvent.createPost(
                          //              postType: PostType.servReq,
                          //              create: null,
                          //              scheduled: null,
                          //              draft: null,
                          //            ),
                          //          );
                          //        }
                          //      },
                          //    ),
                          //  ),
                        ],
                      ),
                    ),
                  ),
                );
              },
          postsLoading: () {
            return const ServiceRequestShimmerView();
          },
          orElse: () {
            return const ServiceRequestShimmerView();
          },
        );
      },
    );
  }
}

class ServiceRequestShimmerView extends StatelessWidget {
  const ServiceRequestShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 54),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //shimmerBox(height: 50), // حقل العنوان
            const SizedBox(height: 16),
            // shimmerBox(height: 50), // القائمة المنسدلة
            const SizedBox(height: 16),
            //  shimmerBox(height: 120), // تفاصيل الطلب
            const SizedBox(height: 24),
            // Center(
            //child: shimmerBox(
            //    height: 40,
            //    width: 100, // زر الإدراج
            //    radius: BorderRadius.circular(25),
            //  ),
            // ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
