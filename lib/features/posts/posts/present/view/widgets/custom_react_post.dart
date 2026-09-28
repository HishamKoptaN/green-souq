import 'package:flutter/material.dart';

import '../../../../cmnts/data/models/create_cmnt_req_body.dart';
import '../../../data/models/posts_res_model.dart';

class CustomReactPost extends StatefulWidget {
  const CustomReactPost({
    super.key,
    required this.post,
    required this.onLikeChanged,
  });
  final Post? post;
  final Function(bool) onLikeChanged;
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
        //CustomReactPostItem(
        //  text: "اعجبني",
        //  image: isLike ? Assets.imagesLikeSolid : Assets.imagesLike,
        //  onTap: () {
        //    setState(() {
        //      isLike = !isLike;
        //    });
        //    widget.onLikeChanged(isLike);
        //    context.read<PostsBloc>().add(
        //      PostsEvent.toggleLike(
        //        toggleLikeReqBody: const ToggleLikeReqBody().copyWith(
        //          likeableId: widget.post?.id,
        //          likeableType: 'post',
        //        ),
        //      ),
        //    );
        //  },
        //),
        const SizedBox(width: 16),
        // CustomReactPostItem(
        //   text: "تعليق",
        //   image: Assets.imagesCommentIcon,
        //   onTap: () {
        //     showCommentsSheet(
        //       context: context,
        //       commentController: _commentController,
        //       onPressed: () {
        //         createCmntReqBody = createCmntReqBody.copyWith(
        //           comment: _commentController.text,
        //           commentableId: widget.post?.id,
        //           commentableType: 'post',
        //         );
        //         context.read<CmntsBloc>().add(
        //           CmntsEvent.createCmnt(createCmntReqBody: createCmntReqBody),
        //         );
        //         setState(() {
        //           _commentController.clear();
        //         });
        //       },
        //       id: widget.post?.id ?? 0,
        //     );
        //   },
        // ),
        // const SizedBox(width: 16),
        // CustomReactPostItem(
        //   text: "مشاركة",
        //   image: Assets.imagesShareIcon,
        //   onTap: () {
        //     SharePostReqBody sharePostReqBody = const SharePostReqBody()
        //         .copyWith(id: widget.post?.id ?? 0);
        //     context.read<PostsBloc>().add(
        //       PostsEvent.sharePost(sharePostReqBody: sharePostReqBody),
        //     );
        //   },
        // ),
      ],
    );
  }
}
