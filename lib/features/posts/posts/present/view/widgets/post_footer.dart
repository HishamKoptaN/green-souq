import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:green/features/posts/cmnts/data/models/create_cmnt_req_body.dart';
import 'package:green/features/posts/cmnts/present/bloc/cmnts_bloc.dart';
import 'package:green/features/posts/cmnts/present/bloc/cmnts_event.dart';
import 'package:green/features/posts/posts/present/bloc/posts_bloc.dart';
import 'package:green/features/posts/posts/present/view/widgets/show_comments_sheet.dart';

import '../../../data/models/posts_res_model.dart';
import 'react/custom_react_post.dart';
import '../image_comment_item.dart';

class PostFooter extends StatefulWidget {
  Post? post;
  PostFooter({super.key, required this.post});
  @override
  State<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  final TextEditingController _commentController = TextEditingController();
  CreateCmntReqBody createCmntReqBody = const CreateCmntReqBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "${widget.post?.likesCount ?? 0} إعجاب",
                    style: TextStyles.regular14.copyWith(
                      color: AppColors.darkGreyColor,
                    ),
                  ),
                  const TextSpan(text: " , "),
                  if (widget.post?.type != 'sharedPost')
                    TextSpan(
                      text: "${widget.post?.sharesCount ?? ''} مشاركة",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                ],
              ),
            ),
            const Spacer(),
            widget.post?.cmntersImages!.isEmpty ?? true
                ? const Text("لا توجد تعليقات")
                : Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showCommentsSheet(
                            context: context,
                            commentController: _commentController,
                            onPressed: () {
                              context.read<PostsBloc>().add(
                                PostsEvent.increasePostCmntsCount(
                                  id: widget.post?.id ?? 0,
                                ),
                              );
                              createCmntReqBody = createCmntReqBody.copyWith(
                                comment: _commentController.text,
                                commentableId: widget.post?.id,
                                commentableType: 'post',
                              );
                              context.read<CmntsBloc>().add(
                                CmntsEvent.createCmnt(
                                  createCmntReqBody: createCmntReqBody,
                                ),
                              );
                              setState(() {
                                _commentController.clear();
                              });
                            },
                            id: widget.post?.id ?? 0,
                          );
                        },
                        child: Text("${widget.post?.cmntsCount ?? ''} تعليق"),
                      ),
                      const SizedBox(width: 8), // هنا الفاصل الثابت دائمًا
                      if (widget.post!.cmntersImages!.isNotEmpty)
                        _buildCommentersImages(widget.post!),
                    ],
                  ),
          ],
        ),
        const SizedBox(height: 16),
        //CustomReactPost(
        //  post: widget.post,
        //  onLikeChanged: (isLiked) {
        //    setState(() {
        //      widget.post = widget.post?.copyWith(
        //        likesCount: isLiked
        //            ? (widget.post?.likesCount ?? 0) + 1
        //            : (widget.post?.likesCount ?? 0) - 1,
        //      );
        //    });
        //  },
        //  onShareChanged: () {},
        //),
      ],
    );
  }

  Widget _buildCommentersImages(Post post) {
    final images = post.cmntersImages!;
    final count = post.cmntsCount!;

    int visibleImages = images.length > 3 ? 3 : images.length;
    double imageSize = 30; // حجم الصورة
    double overlap = 14; // مقدار التراكب بين الصور
    double totalWidth = imageSize + (visibleImages - 1) * (imageSize - overlap);

    return SizedBox(
      width: totalWidth + (count > 3 ? 20 : 0), // مساحة إضافية للـ +3
      height: imageSize,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          for (int i = 0; i < visibleImages; i++)
            Positioned(
              left: i * (imageSize - overlap),
              child: ImageCommentItem(profileImage: images[i], isfirst: i == 0),
            ),
          if (count > 3)
            Positioned(
              left: visibleImages * (imageSize - overlap),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 13,
                  // backgroundColor: AppColors.lightGreyColor,
                  child: Center(
                    child: Text(
                      "+${(count - 3)}",
                      // style: TextStyles.bold10.copyWith(
                      //   color: const Color(0xff4318FF),
                      // ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
