import 'package:flutter/material.dart';

class ImageCommentItem extends StatelessWidget {
  const ImageCommentItem({
    super.key,
    required this.profileImage,
    this.isfirst = false,
  });

  final String profileImage;
  final bool isfirst;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        // backgroundColor: AppColors.lightGreyColor,
        radius: isfirst ? 15 : 13,
        foregroundImage: profileImage.isEmpty
            ? const AssetImage("assets/images/user.png")
            : NetworkImage(profileImage),
      ),
    );
  }
}
