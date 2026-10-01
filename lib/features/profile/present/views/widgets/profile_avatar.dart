import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/preview/custom_image.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.path,
    required this.isEditing,
    this.onEditImageTap,
  });

  final String path;
  final bool isEditing;
  final VoidCallback? onEditImageTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipOval(
              clipBehavior: .antiAlias,
              child: CustomImage(
                path: path,
                width: 140.r,
                height: 140.r,
                fit: .cover,
              ),
            ),
            if (isEditing)
              Positioned(
                bottom: 5.h,
                right: 1.w,
                child: GestureDetector(
                  onTap: onEditImageTap,
                  child: FaIcon(
                    FontAwesomeIcons.solidCamera,
                    color: context.colorScheme.primary,
                    size: 28.r,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
