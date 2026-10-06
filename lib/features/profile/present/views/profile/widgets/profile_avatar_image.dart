import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/custom_image.dart';

class ProfileAvatarImage extends StatelessWidget {
  const ProfileAvatarImage({
    super.key,
    required this.imagePath,
    this.size = 112,
  });

  final String? imagePath;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(4.r),
      decoration: BoxDecoration(
        shape: .circle,
        gradient: LinearGradient(
          colors: [
            context.colorScheme.primary,
            context.colorScheme.secondaryContainer,
            context.colorScheme.primaryContainer,
          ],
          begin: .topRight,
          end: .bottomLeft,
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 8.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Container(
        padding: .all(4.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          shape: .circle,
        ),
        child: ClipOval(
          child: CustomImage(
            path: imagePath,
            height: size.r,
            width: size.r,
            fit: .cover,
          ),
        ),
      ),
    );
  }
}
