import 'package:flutter/material.dart';
import 'package:green/core/utils/app_text_styles.dart';
import '../../../../data/models/posts_res_model.dart';
import '../expandable_text.dart';
import '../post_item.dart';

class CustomSharedPost extends StatelessWidget {
  const CustomSharedPost({
    super.key,
    required this.post,
  });
  final Post post;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        ExpandableText(
          text: post.postable?.content ?? '',
        //  style: TextStyles.regular12,
        ),
        PostItem(
          post: post.postable?.sharedPost ?? const Post(),
          isSharedPost: true,
        ),
      ],
    );
  }
}
