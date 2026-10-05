import 'package:flutter/material.dart';
import '../../../../../domain/entities/posts_res_entity.dart';

class CustomPost extends StatefulWidget {
  const CustomPost({super.key, required this.post});
  final PostEntity post;
  @override
  State<CustomPost> createState() => _CustomPostState();
}

class _CustomPostState extends State<CustomPost> {
  bool showVideo = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
      ],
    );
  }
}
