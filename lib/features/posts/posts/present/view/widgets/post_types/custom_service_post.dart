import 'package:flutter/material.dart';

import '../../../../data/models/posts_res_model.dart';

class CustomServicePost extends StatelessWidget {
  CustomServicePost({super.key, required this.post});
  PostModel? post;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 12),
          // SelectableText(post?.postable?.title ?? "", style: TextStyles.bold16),
          // const SizedBox(height: 8),
          // SelectableText(
          // post?.postable?.details ?? "",
          // style: TextStyles.bold14.copyWith(color: AppColors.darkGreyColor),
          // ),
        ],
      ),
    );
  }
}
