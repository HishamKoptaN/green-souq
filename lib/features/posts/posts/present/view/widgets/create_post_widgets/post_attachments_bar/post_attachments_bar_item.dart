import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostAttachmentsBarItem extends StatelessWidget {
  const PostAttachmentsBarItem({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final String text;
  final String icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          crossAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 8),
            Text(
              text,
              // style: TextStyles.medium15.copyWith(
              //   color: AppColors.darkGreyColor,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
