import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green/features/posts/posts/present/view/widgets/post/custom_header_post.dart';
import 'package:green/features/posts/posts/present/view/widgets/show_post_report_dialog.dart';

class CustomMoreHorizPopup extends StatelessWidget {
  const CustomMoreHorizPopup({super.key, required this.widget});

  final CustomPostHeader widget;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'edit') {
        } else if (value == 'delete') {
        } else if (value == 'report') {
          showPostReportDialog(context: context, id: widget.post.id ?? 0);
        } else if (value == 'hide') {}
      },
      itemBuilder: (BuildContext context) {
        final isMyPost = widget.post.author?.isFollowing == null;
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
      icon: Icon(Icons.more_horiz, size: 20.r),
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
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return SizedBox(
      width: .infinity,
      child: Row(
        children: [
          SvgPicture.asset(iconPath, width: 24.r, height: 24.r),
          SizedBox(width: 12.w),
          Text(title, style: tt.bodyMedium?.copyWith(color: cs.onSurface)),
        ],
      ),
    );
  }
}
