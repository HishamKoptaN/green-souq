import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

class ProfileIconButton extends StatelessWidget {
  final VoidCallback onTap;

  const ProfileIconButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(12.r),
      child: Container(
        width: 40.r,
        height: 40.r,
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: .circular(12.r),
        ),
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.user,
            color: context.colorScheme.onPrimary,
            size: 18.r,
          ),
        ),
      ),
    );
  }
}
