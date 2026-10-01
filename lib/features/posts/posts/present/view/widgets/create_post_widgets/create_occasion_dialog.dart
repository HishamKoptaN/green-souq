import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../bloc/posts_bloc.dart';

class CreateOccasionDialog extends StatelessWidget {
  CreateOccasionDialog({super.key});
  bool acceptConditions = false;
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  DateTime? _startDate;
  TimeOfDay? _startTime;
  DateTime? _endDate;
  TimeOfDay? _endTime;
  Future<DateTime?> _selectDate({
    required BuildContext context,
    required TextEditingController controller,
  }) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      controller.text = DateFormat('yyyy-MM-dd', 'en').format(picked);
      return picked;
    }
    return null;
  }

  Future<TimeOfDay?> _selectTime(
    BuildContext context,
    TextEditingController controller,
  ) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      final formatted = picked.format(context);
      controller.text = formatted;
      return picked;
    }
    return null;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostsBloc, PostsState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (_, __, ___, ____) {
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () async {
                            //final image = await ImagePickerHelper.pickImage(
                            //  source: ImageSource.gallery,
                            //);
                            //context.read<PostsBloc>().add(
                            //  PostsEvent.updateData(
                            //    createPostReqBody: createPostReqBody?.copyWith(
                            //      createOccasionReqBody: createPostReqBody
                            //          .createOccasionReqBody
                            //          .copyWith(image: image),
                            //    ),
                            //    scheduledDateTime: null,
                            //  ),
                            //);
                          },
                          child: Center(
                            child: Container(
                              width: 134,
                              height: 134,
                              decoration: BoxDecoration(
                                // color: AppColors.lightGreyColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: context.colorScheme.onSurfaceVariant,
                                  width: 1,
                                ),
                              ),
                              child:
                                  createPostReqBody
                                          .createOccasionReqBody
                                          .image !=
                                      null
                                  ? Image.memory(
                                      createPostReqBody!
                                          .createOccasionReqBody
                                          .image!,
                                      fit: BoxFit.fill,
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.add,
                                          // color: AppColors.darkGreyColor,
                                        ),
                                        const SizedBox(width: 16),
                                        Text(
                                          "اضافة صورة",
                                          // style: TextStyles.regular14.copyWith(
                                          //   color: AppColors.darkGreyColor,
                                          // ),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        CustomTextFormField(
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          // backGroundColor: Colors.white,
                          // colorBorderSide: AppColors.darkGreyColor,
                          hintText: "عنوان المناسبة",
                          //onChanged: (v) {
                          //  context.read<PostsBloc>().add(
                          //    PostsEvent.updateData(
                          //      createPostReqBody: createPostReqBody?.copyWith(
                          //        createOccasionReqBody: createPostReqBody
                          //            .createOccasionReqBody
                          //            .copyWith(title: v),
                          //      ),
                          //      scheduledDateTime: null,
                          //    ),
                          //  );
                          //},
                          //validator: (v) {
                          //  if (v == null || v.trim().isEmpty) {
                          //    return 'يرجى إدخال عنوان المناسبة';
                          //  }
                          //  return null;
                          //},
                        ),
                        const SizedBox(height: 16),
                        CustomTextFormField(
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          // backGroundColor: Colors.white,
                          // colorBorderSide: AppColors.darkGreyColor,
                          // hintText: "وصف المناسبة",
                          // onChanged: (v) {
                          //   final currentOccasion =
                          //       createPostReqBody?.createOccasionReqBody ??
                          //       const CreateOccasionReqBody();
                          //   context.read<PostsBloc>().add(
                          //     PostsEvent.updateData(
                          //       createPostReqBody: createPostReqBody?.copyWith(
                          //         createOccasionReqBody: currentOccasion
                          //             .copyWith(description: v),
                          //       ),
                          //       scheduledDateTime: null,
                          //     ),
                          //   );
                          // },
                          // validator: (v) {
                          //   if (v == null || v.trim().isEmpty) {
                          //     return 'يرجى إدخال وصف المناسبة';
                          //   }
                          //   return null;
                          // },
                        ),
                        const SizedBox(height: 24),
                        const Text("رابط المناسبة"),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "بث مباشر",
                              // style: TextStyles.regular14.copyWith(
                              //   color: AppColors.darkGreyColor,
                              // ),
                            ),
                            const SizedBox(width: 10),
                            Checkbox(value: false, onChanged: (v) {}),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "(قريبًا)",
                                  // style: TextStyles.bold12.copyWith(
                                  //   color: Colors.grey,
                                  //   overflow: TextOverflow.ellipsis,
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "رابط خارجي",
                              // style: TextStyles.regular14.copyWith(
                              //   color: AppColors.darkGreyColor,
                              // ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: CustomTextFormField(
                                // backGroundColor: Colors.white,
                                // colorBorderSide: AppColors.darkGreyColor,
                                // autovalidateMode:
                                //     AutovalidateMode.onUserInteraction,
                                //onChanged: (v) {
                                //  context.read<PostsBloc>().add(
                                //    PostsEvent.updateData(
                                //      createPostReqBody: createPostReqBody
                                //          ?.copyWith(
                                //            createOccasionReqBody:
                                //                createPostReqBody
                                //                    .createOccasionReqBody
                                //                    .copyWith(link: v),
                                //          ),
                                //      scheduledDateTime: null,
                                //    ),
                                //  );
                                //},
                                //validator: (v) {
                                //  if (v == null || v.trim().isEmpty) {
                                //    return 'يرجى إدخال الرابط الخارجي للمناسبة';
                                //  }
                                //  try {
                                //    final uri = Uri.parse(v.trim());
                                //    if (!uri.hasScheme ||
                                //        !(uri.scheme == 'http' ||
                                //            uri.scheme == 'https')) {
                                //      return '⚠️ الرابط غير صالح';
                                //    }
                                //    if (!uri.hasAuthority) {
                                //      return '⚠️ الرابط غير صالح';
                                //    }
                                //    return null; // ✅ الرابط صحيح
                                //  } catch (e) {
                                //    return '⚠️ الرابط غير صالح';
                                //  }
                                // },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  _startDate = await _selectDate(
                                    context: context,
                                    controller: _startDateController,
                                  );
                                },
                                child: AbsorbPointer(
                                  child: CustomTextFormField(
                                    controller: _startDateController,
                                    hintText: "تاريخ البداية",
                                    // backGroundColor: Colors.white,
                                    // colorBorderSide: AppColors.darkGreyColor,
                                    // autovalidateMode:
                                    //     AutovalidateMode.onUserInteraction,
                                    //validator: (v) {
                                    //  if (v == null || v.trim().isEmpty) {
                                    //    return 'يرجى إدخال تاريخ البداية';
                                    //  }
                                    //  if (_startDateController
                                    //          .text
                                    //          .isNotEmpty &&
                                    //      _startTimeController
                                    //          .text
                                    //          .isNotEmpty) {
                                    //    final startDate = DateFormat(
                                    //      'yyyy-MM-dd',
                                    //      'en',
                                    //    ).parse(_startDateController.text);
                                    //    final startTimeParts =
                                    //        _startTimeController.text.split(
                                    //          ':',
                                    //        );
                                    //    final startHour = int.parse(
                                    //      startTimeParts[0],
                                    //    );
                                    //    final startMinute = int.parse(
                                    //      startTimeParts[1].split(' ')[0],
                                    //    );
                                    //    final isPM = _startTimeController.text
                                    //        .toLowerCase()
                                    //        .contains('pm');
                                    //    final finalHour = isPM && startHour < 12
                                    //        ? startHour + 12
                                    //        : startHour;

                                    //    final start = DateTime(
                                    //      startDate.year,
                                    //      startDate.month,
                                    //      startDate.day,
                                    //      finalHour,
                                    //      startMinute,
                                    //    );

                                    //    if (!start.isAfter(DateTime.now())) {
                                    //      return 'تاريخ البداية يجب أن يكون في المستقبل';
                                    //    }
                                    //  }

                                    //  return null;
                                    //},
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            // Expanded(
                            //   child: GestureDetector(
                            //     onTap: () async {
                            //       _startTime = await _selectTime(
                            //         context,
                            //         _startTimeController,
                            //       );
                            //     },
                            //     child: AbsorbPointer(
                            //       child: CustomTextFormField(
                            //         controller: _startTimeController,
                            //         hintText: "توقيت البداية",
                            //         backGroundColor: Colors.white,
                            //         colorBorderSide: AppColors.darkGreyColor,
                            //         // autovalidateMode:
                            //         //     AutovalidateMode.onUserInteraction,
                            //         validator: (v) {
                            //           if (v == null || v.trim().isEmpty) {
                            //             return 'يرجى إدخال توقيت البداية';
                            //           }
                            //           return null;
                            //         },
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            //Expanded(
                            //  child: GestureDetector(
                            //    onTap: () async {
                            //      _endDate = await _selectDate(
                            //        context: context,
                            //        controller: _endDateController,
                            //      );
                            //    },
                            //    child: AbsorbPointer(
                            //      child: CustomTextFormField(
                            //        controller: _endDateController,
                            //        hintText: "تاريخ النهاية",
                            //        backGroundColor: Colors.white,
                            //        colorBorderSide: AppColors.darkGreyColor,
                            //        // autovalidateMode:
                            //        //     AutovalidateMode.onUserInteraction,
                            //        validator: (v) {
                            //          if (v == null || v.trim().isEmpty) {
                            //            return 'يرجى إدخال تاريخ النهاية';
                            //          }
                            //          if (_endDate != null &&
                            //              _endTime != null &&
                            //              !_isFutureDate(
                            //                _endDate!,
                            //                _endTime!,
                            //              )) {
                            //            return 'تاريخ النهاية يجب أن يكون في المستقبل';
                            //          }
                            //          if (_startDate != null &&
                            //              _startTime != null &&
                            //              _endDate != null &&
                            //              _endTime != null) {
                            //            final start = DateTime(
                            //              _startDate!.year,
                            //              _startDate!.month,
                            //              _startDate!.day,
                            //              _startTime!.hour,
                            //              _startTime!.minute,
                            //            );
                            //            final end = DateTime(
                            //              _endDate!.year,
                            //              _endDate!.month,
                            //              _endDate!.day,
                            //              _endTime!.hour,
                            //              _endTime!.minute,
                            //            );
                            //            if (!end.isAfter(start)) {
                            //              return 'تاريخ النهاية يجب أن يكون بعد تاريخ البداية';
                            //            }
                            //          }
                            //          return null;
                            //        },
                            //      ),
                            //    ),
                            //  ),
                            //),
                            const SizedBox(width: 16),
                            //Expanded(
                            //  child: GestureDetector(
                            //    onTap: () async {
                            //      _endTime = await _selectTime(
                            //        context,
                            //        _endTimeController,
                            //      );
                            //      if (_startDate != null &&
                            //          _startTime != null &&
                            //          _endDate != null &&
                            //          _endTime != null) {
                            //        context.read<PostsBloc>().add(
                            //          PostsEvent.updateData(
                            //            createPostReqBody: createPostReqBody
                            //                ?.copyWith(
                            //                  createOccasionReqBody:
                            //                      createPostReqBody
                            //                          .createOccasionReqBody
                            //                          .copyWith(
                            //                            startAt: DateTime(
                            //                              _startDate!.year,
                            //                              _startDate!.month,
                            //                              _startDate!.day,
                            //                              _startTime!.hour,
                            //                              _startTime!.minute,
                            //                            ),
                            //                            endAt: DateTime(
                            //                              _endDate!.year,
                            //                              _endDate!.month,
                            //                              _endDate!.day,
                            //                              _endTime!.hour,
                            //                              _endTime!.minute,
                            //                            ),
                            //                          ),
                            //                ),
                            //            scheduledDateTime: null,
                            //          ),
                            //        );
                            //      }
                            //    },
                            //    child: AbsorbPointer(
                            //      child: CustomTextFormField(
                            //        controller: _endTimeController,
                            //        hintText: "توقيت النهاية",
                            //        backGroundColor: Colors.white,
                            //        colorBorderSide: AppColors.darkGreyColor,
                            //        // autovalidateMode:
                            //        //     AutovalidateMode.onUserInteraction,
                            //        validator: (v) {
                            //          if (v == null || v.trim().isEmpty) {
                            //            return 'يرجى إدخال توقيت النهاية';
                            //          }
                            //          return null;
                            //        },
                            //      ),
                            //    ),
                            //  ),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "سياسة المناسبات في الملف الأخضر",
                              // style: TextStyles.regular14.copyWith(
                              //   color: AppColors.darkGreyColor,
                              // ),
                            ),
                            const SizedBox(width: 20),
                            Checkbox(
                              value:
                                  createPostReqBody
                                      .createOccasionReqBody
                                      .acceptTermsAndConditions ??
                                  false,
                              onChanged: (v) {
                                final currentValue = createPostReqBody
                                    .createOccasionReqBody
                                    .acceptTermsAndConditions;
                                final newValue = (currentValue == true)
                                    ? null
                                    : true;
                                //  getIt<PostsBloc>().add(
                                //    .updateData(
                                //      createPostReqBody: createPostReqBody
                                //          .copyWith(
                                //            createOccasionReqBody:
                                //                createPostReqBody
                                //                    .createOccasionReqBody
                                //                    .copyWith(
                                //                      acceptTermsAndConditions:
                                //                          newValue,
                                //                    ),
                                //          ),
                                //      scheduledDateTime: null,
                                //    ),
                                // );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        //Center(
                        //  child: CustomButton(
                        //    width: 100,
                        //    backgroundColor:
                        //        (createPostReqBody?.createOccasionReqBody
                        //                .isValid() ??
                        //            false)
                        //        ? AppColors.primaryColor
                        //        : AppColors.darkGreyColor.withOpacity(0.5),
                        //    widget: !(isCreatePostLoading ?? false)
                        //        ? Text(
                        //            "إدراج",
                        //            style: TextStyles.medium16.copyWith(
                        //              color: Colors.white,
                        //            ),
                        //          )
                        //        : const CustomCircularProgress(),
                        //    onPressed: () {
                        //      if (createPostReqBody
                        //              ?.createOccasionReqBody
                        //              .image ==
                        //          null) {
                        //        ScaffoldMessenger.of(context).showSnackBar(
                        //          const SnackBar(
                        //            content: Text('الرجاء اختيار صورة'),
                        //          ),
                        //        );
                        //        return;
                        //      }
                        //      if (createPostReqBody
                        //              ?.createOccasionReqBody
                        //              .acceptTermsAndConditions !=
                        //          true) {
                        //        ScaffoldMessenger.of(context).showSnackBar(
                        //          const SnackBar(
                        //            content: Text(
                        //              'يجب الموافقة على الشروط والأحكام',
                        //            ),
                        //          ),
                        //        );
                        //        return;
                        //      }
                        //      if (_formKey.currentState!.validate()) {
                        //        context.read<PostsBloc>().add(
                        //          const PostsEvent.createPost(
                        //            postType: PostType.occasion,
                        //            create: null,
                        //            scheduled: null,
                        //            draft: null,
                        //          ),
                        //        );
                        //      }
                        //    },
                        //  ),
                        //),
                      ],
                    ),
                  ),
                );
              },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }

  bool _isFutureDate(DateTime date, TimeOfDay time) {
    final now = DateTime.now();
    final selected = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
    return selected.isAfter(now);
  }
}
