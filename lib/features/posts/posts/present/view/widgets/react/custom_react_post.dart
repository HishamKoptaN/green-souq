import 'package:flutter/material.dart';

import '../../../../data/models/posts_res_model.dart';
import '../../../../../cmnts/data/models/create_cmnt_req_body.dart';

class CustomReactPost extends StatefulWidget {
  const CustomReactPost({
    super.key,
    required this.post,
    required this.onLikeChanged,
    required this.onShareChanged,
  });

  final Post? post;
  final Function(bool) onLikeChanged;
  final Function() onShareChanged;
  @override
  State<CustomReactPost> createState() => _CustomReactPostState();
}

class _CustomReactPostState extends State<CustomReactPost> {
  final TextEditingController _commentController = TextEditingController();
  bool isLike = false;
  CreateCmntReqBody createCmntReqBody = const CreateCmntReqBody();
  @override
  void initState() {
    super.initState();
    isLike = widget.post?.isLike ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // CustomReactPostItem(
        //   text: "اعجبني",
        //   image: isLike ? Assets.imagesLikeSolid : Assets.imagesLike,
        //   onTap: () {
        //     setState(() {
        //       isLike = !isLike;
        //     });
        //     widget.onLikeChanged(isLike);
        //     context.read<PostsBloc>().add(
        //           PostsEvent.toggleLike(
        //             toggleLikeReqBody: const ToggleLikeReqBody().copyWith(
        //               likeableId: widget.post?.id,
        //               likeableType: 'post',
        //             ),
        //           ),
        //         );
        //   },
        // ),
        // const SizedBox(width: 16),
        // CustomReactPostItem(
        //   text: "تعليق",
        //   image: Assets.imagesCommentIcon,
        //   onTap: () {
        //     showCommentsSheet(
        //       context: context,
        //       commentController: _commentController,
        //       onPressed: () {
        //         context.read<PostsBloc>().add(
        //               PostsEvent.increasePostCmntsCount(
        //                   id: widget.post?.id ?? 0),
        //             );
        //         createCmntReqBody = createCmntReqBody.copyWith(
        //           comment: _commentController.text,
        //           commentableId: widget.post?.id,
        //           commentableType: 'post',
        //         );
        //         context.read<CmntsBloc>().add(
        //               CmntsEvent.createCmnt(
        //                   createCmntReqBody: createCmntReqBody),
        //             );
        //         setState(() {
        //           _commentController.clear();
        //         });
        //       },
        //       id: widget.post?.id ?? 0,
        //     );
        //   },
        // ),
        // const SizedBox(width: 16),
        // if (widget.post?.type != 'sharedPost')
        //   context.read<PostsBloc>().isCreatePostLoading ?? false
        //       ? const CustomCircularProgress()
        //       : CustomReactPostItem(
        //           text: "مشاركة",
        //           image: Assets.imagesShareIcon,
        //           onTap: () {
        //             context.read<PostsBloc>().add(
        //                   PostsEvent.updateData(
        //                     createPostReqBody: CreatePostReqBody(
        //                       postId: widget.post?.id ?? 0,
        //                       content: '',
        //                     ),
        //                     scheduledDateTime: null,
        //                   ),
        //                 );
        //             context.read<PostsBloc>().add(
        //                   const PostsEvent.createPost(
        //                     postType: PostType.shared_post,
        //                     create: null,
        //                     scheduled: null,
        //                     draft: null,
        //                   ),
        //                 );
        //           },
        //         ),
      ],
    );
  }
}
