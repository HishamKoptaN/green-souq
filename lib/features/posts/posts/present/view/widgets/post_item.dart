import 'package:flutter/material.dart';

import '../../../data/models/posts_res_model.dart';
import 'custom_header_post.dart';
import 'post_footer.dart';
import 'post_type.dart';

class PostItem extends StatelessWidget {
  final Post post;
  final bool isSharedPost;
  const PostItem({super.key, required this.post, required this.isSharedPost});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, right: 8, left: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Column(
              children: [
                CustomHeaderPost(post: post),
                GetPostTypeWidget(post: post),
                const SizedBox(height: 16),
                if (isSharedPost != true) PostFooter(post: post),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
