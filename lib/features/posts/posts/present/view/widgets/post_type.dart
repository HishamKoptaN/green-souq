import 'package:flutter/material.dart';
import '../../../../../../core/enums/post_type.dart';
import '../../../data/models/posts_res_model.dart';
import 'post_types/custom_occasion_post.dart';
import 'post_types/custom_post.dart';
import 'post_types/custom_poll_post.dart';
import 'post_types/custom_service_post.dart';
import 'post_types/custom_shared_post.dart';

class GetPostTypeWidget extends StatelessWidget {
  final Post post;
  const GetPostTypeWidget({super.key, required this.post});
  @override
  Widget build(BuildContext context) {
    final type = getPostType(type: post.type);
    switch (type) {
      case PostType.social_post:
      case PostType.news:
      case PostType.company_post:
        return CustomPost(post: post);
      case PostType.occasion:
        return CustomOccasionPost(post: post);
      case PostType.shared_post:
        return CustomSharedPost(post: post);
      case PostType.poll:
        return CustomPollPost(post: post);
      case PostType.servReq:
        return CustomServicePost(post: post);
      default:
        return CustomPost(post: post);
    }
  }
}
