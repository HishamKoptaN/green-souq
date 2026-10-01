import 'package:flutter/material.dart';

import '../../../../domain/entities/posts_res_entity.dart';
import '../expandable_text.dart';
import '../post/post_card.dart';

class CustomSharedPost extends StatelessWidget {
  const CustomSharedPost({super.key, required this.post});
  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandableText(
          text: post.postable?.content ?? '',
          //  style: TextStyles.regular12,
        ),
        PostCard(
          post: post.postable?.sharedPost ?? PostEntity(id: 1),
          // isSharedPost: true,
        ),
      ],
    );
  }
}
