import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:green/core/widgets/custom_button.dart';

import '../../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../data/models/scheduled_date_time.dart';
import '../../../bloc/posts_bloc.dart';
import '../../../bloc/posts_event.dart';
import '../../../bloc/posts_state.dart';
import 'scheduled/scheduled_posts.dart';

import 'package:green/features/posts/posts/data/models/create_post_req_body.dart';

class SchedulerDialog extends StatefulWidget {
  const SchedulerDialog({super.key, required this.isCreatePost});
  final bool isCreatePost;

  @override
  State<SchedulerDialog> createState() => _SchedulerDialogState();
}

class _SchedulerDialogState extends State<SchedulerDialog> {
  @override
  void initState() {
    super.initState();
    context.read<PostsBloc>().add(const PostsEvent.getScheduledPosts());
  }

  Widget buildDropdown({
    required String? value,
    required List<DropdownMenuItem<String>> items,
    required String hint,
    required Function(String?) onChanged,
  }) {
    return DropdownButtonHideUnderline(
      child: Container(
        width: 144,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.darkGreyColor, width: 1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButton<String>(
          value: value,
          hint: Text(hint, style: TextStyles.regular20),
          icon: const Icon(Icons.keyboard_arrow_down),
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<PostsBloc>(),
      child: BlocBuilder<PostsBloc, PostsState>(
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
                  return Container(
                    width: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (createPostReqBody?.hasContentToPost ?? false)
                            SizedBox(
                              width: 600,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "حدد تاريخ ووقت نشر المنشور",
                                    style: TextStyles.bold18.copyWith(
                                      color: AppColors.darkGreyColor,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  buildSection(
                                    children: [
                                      buildDropdown(
                                        value: scheduledDateTime?.selectedYear,
                                        items: List.generate(10, (i) {
                                          String year = (2025 + i).toString();
                                          return DropdownMenuItem<String>(
                                            value: year,
                                            child: Text(year),
                                          );
                                        }),
                                        hint: "السنة",
                                        onChanged: (v) {
                                          context.read<PostsBloc>().add(
                                            PostsEvent.updateData(
                                              createPostReqBody: null,
                                              scheduledDateTime:
                                                  scheduledDateTime?.copyWith(
                                                    selectedYear: v,
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                      buildDropdown(
                                        value: scheduledDateTime?.selectedMonth,
                                        items: ScheduledDateTimeX
                                            .monthNames
                                            .keys
                                            .map((month) {
                                              return DropdownMenuItem<String>(
                                                value: month,
                                                child: Text(
                                                  month,
                                                  style: TextStyles.regular20,
                                                ),
                                              );
                                            })
                                            .toList(),
                                        hint: "الشهر",
                                        onChanged: (v) {
                                          context.read<PostsBloc>().add(
                                            PostsEvent.updateData(
                                              createPostReqBody: null,
                                              scheduledDateTime:
                                                  scheduledDateTime?.copyWith(
                                                    selectedMonth: v,
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                      buildDropdown(
                                        value: scheduledDateTime?.selectedDay,
                                        items: List.generate(
                                          31,
                                          (index) => DropdownMenuItem<String>(
                                            value: (index + 1).toString(),
                                            child: Text((index + 1).toString()),
                                          ),
                                        ),
                                        hint: "اليوم",
                                        onChanged: (v) {
                                          context.read<PostsBloc>().add(
                                            PostsEvent.updateData(
                                              createPostReqBody: null,
                                              scheduledDateTime:
                                                  scheduledDateTime?.copyWith(
                                                    selectedDay: v,
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  buildSection(
                                    children: [
                                      buildDropdown(
                                        value: scheduledDateTime?.selectedHour,
                                        items: List.generate(24, (i) {
                                          String hour = (i + 1).toString();
                                          return DropdownMenuItem<String>(
                                            value: hour,
                                            child: Text(hour),
                                          );
                                        }),
                                        hint: "الساعة",
                                        onChanged: (v) {
                                          context.read<PostsBloc>().add(
                                            PostsEvent.updateData(
                                              createPostReqBody: null,
                                              scheduledDateTime:
                                                  scheduledDateTime?.copyWith(
                                                    selectedHour: v,
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                      buildDropdown(
                                        value:
                                            scheduledDateTime?.selectedMinute,
                                        items: List.generate(60, (i) {
                                          String minute = i.toString().padLeft(
                                            2,
                                            '0',
                                          );
                                          return DropdownMenuItem<String>(
                                            value: minute,
                                            child: Text(minute),
                                          );
                                        }),
                                        hint: "الدقيقة",
                                        onChanged: (v) {
                                          context.read<PostsBloc>().add(
                                            PostsEvent.updateData(
                                              createPostReqBody: null,
                                              scheduledDateTime:
                                                  scheduledDateTime?.copyWith(
                                                    selectedMinute: v,
                                                  ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CustomButton(
                                          //  width: 200,
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          text: "تأكيد",
                                        ),
                                        CustomButton(
                                          // width: 200,
                                          onPressed: () {
                                            context.read<PostsBloc>().add(
                                              const PostsEvent.cancelSchedule(),
                                            );
                                            Navigator.of(context).pop();
                                          },
                                          text: "الغاء",
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          const ScheduledPosts(),
                        ],
                      ),
                    ),
                  );
                },
            orElse: () {
              return const CustomCircularProgress();
            },
          );
        },
      ),
    );
  }

  Widget buildSection({required List<Widget> children}) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: children);
}
