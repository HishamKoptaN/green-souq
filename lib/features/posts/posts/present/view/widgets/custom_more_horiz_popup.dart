import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:green/features/posts/posts/present/view/widgets/custom_header_post.dart';
import 'package:green/features/posts/posts/present/view/widgets/show_post_report_dialog.dart';

import '../../bloc/posts_bloc.dart';
import '../../bloc/posts_event.dart';

class CustomMoreHorizPopup extends StatelessWidget {
  const CustomMoreHorizPopup({super.key, required this.widget});

  final CustomHeaderPost widget;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'edit') {
        } else if (value == 'delete') {
          //showDeleteDialog(
          //  context: context,
          //  text: "هل انت متأكد من انك تريد حذف المنشور؟",
          //  onDelete: () {
          //    context.read<PostsBloc>().add(
          //      PostsEvent.deletePost(id: widget.post?.id ?? 0),
          //    );
          //  },
          //);
        } else if (value == 'report') {
          showPostReportDialog(context: context, id: widget.post?.id ?? 0);
        } else if (value == 'hide') {
          // context.read<PostsBloc>().add(
          //   PostsEvent.hide(
          //     hideReq: HideReq(id: widget.post?.id ?? 0, type: 'post'),
          //   ),
          // );
        }
      },
      itemBuilder: (BuildContext context) {
        final isMyPost = widget.post?.postOwner?.isFollowing == null;
        if (isMyPost) {
          return [
            const PopupMenuItem<String>(
              value: 'delete',
              child: MoreHorizPopupPostItem(
                iconPath: "assets/images/delete_icon.svg",
                title: "حذف",
              ),
            ),
          ];
        } else {
          return [
            const PopupMenuItem<String>(
              value: 'report',
              child: MoreHorizPopupPostItem(
                iconPath: "assets/images/report-icon.svg",
                title: "إبلاغ",
              ),
            ),
            const PopupMenuItem<String>(
              value: 'hide',
              child: MoreHorizPopupPostItem(
                iconPath: "assets/images/hide_icon.svg",
                title: "إخفاء",
              ),
            ),
          ];
        }
      },
      icon: const Icon(Icons.more_horiz, size: 20),
    );
  }
}

class MoreHorizPopupPostItem extends StatelessWidget {
  const MoreHorizPopupPostItem({
    super.key,
    required this.iconPath,
    required this.title,
  });

  final String iconPath, title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SvgPicture.asset(iconPath, width: 24, height: 24),
          const SizedBox(width: 12),
          Text(
            title,
            //style: TextStyles.regular16.copyWith(
            //  color: AppColors.darkGreyColor,
            //),
          ),
        ],
      ),
    );
  }
}
