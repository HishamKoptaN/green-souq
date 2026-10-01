import 'package:flutter/material.dart';

import '../../../../../../../core/enums/post_type.dart';
import '../../../../domain/entities/posts_res_entity.dart';
import '../post_types/custom_occasion_post.dart';
import '../post_types/custom_post.dart';
import '../post_types/custom_shared_post.dart';

class GetPostTypeWidget extends StatelessWidget {
  final PostEntity post;
  const GetPostTypeWidget({super.key, required this.post});
  @override
  Widget build(BuildContext context) {
    final type = getPostType(type: post.type);
    switch (type) {
      case .occasion:
        return CustomOccasionPost(post: post);
      case .sharedPost:
        return CustomSharedPost(post: post);
      default:
        return CustomPost(post: post);
    }
  }
}
