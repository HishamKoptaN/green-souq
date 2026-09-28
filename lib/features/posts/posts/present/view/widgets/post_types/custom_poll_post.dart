import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';

import '../../../../data/models/posts_res_model.dart';
import '../../../bloc/posts_bloc.dart';
import '../../../bloc/posts_event.dart';

class CustomPollPost extends StatelessWidget {
  const CustomPollPost({super.key, required this.post});
  final Post? post;
  @override
  Widget build(BuildContext context) {
    final options = post?.postable?.options ?? [];
    final selectedOption = post?.postable?.selectedOption;
    final totalVotes = post?.postable?.totalVotes ?? 0;
    final isEnded = post?.postable?.isEnded;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        SelectableText(
          post?.postable?.question ?? '',
          style: TextStyles.bold16,
        ),
        const SizedBox(height: 12),
        ...List.generate(options.length, (i) {
          final option = options[i];
          final percentage = option.calculatePercentage(totalVotes);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 43,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: AppColors.darkGreyColor,
                      width: 0.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: LinearProgressIndicator(
                      value: percentage / 100,
                      backgroundColor: Colors.white,
                      color: isEnded == true
                          ? Colors.grey
                          : AppColors.primaryColor,
                    ),
                  ),
                ),
                ListTile(
                  title: SelectableText(
                    option.option ?? '',
                    // style: TextStyles.bold17.copyWith(color: Colors.black),
                  ),
                  leading: isEnded == true
                      ? (option.id == selectedOption
                            ? const Icon(
                                Icons.circle,
                                size: 16,
                                color: Colors.black,
                              )
                            : const SizedBox(width: 16))
                      : Radio<int>(
                          value: option.id!,
                          groupValue: selectedOption,
                          onChanged: (_) {
                            if (!isEnded!) {
                              context.read<PostsBloc>().add(
                                PostsEvent.vote(
                                  id: option.id!,
                                  postId: post?.id ?? 0,
                                ),
                              );
                            }
                          },
                          activeColor: isEnded == true
                              ? Colors.grey
                              : Colors.black,
                          // autofocus: !(isEnded ?? false),
                        ),
                  trailing: isEnded == true
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SelectableText(
                              '${percentage.toStringAsFixed(1)}%',
                              //  style: TextStyles.bold17.copyWith(
                              //    color: Colors.black,
                              //  ),
                            ),
                            const SizedBox(width: 8),
                            SelectableText(
                              '${option.votesCount ?? 0} صوت',
                              style: TextStyles.bold14.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      : SelectableText(
                          '${percentage.toStringAsFixed(1)}%',
                          //  style: TextStyles.bold17.copyWith(
                          //    color: Colors.black,
                          //  ),
                        ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
