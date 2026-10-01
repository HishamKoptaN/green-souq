import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileIconButton extends StatelessWidget {
  final VoidCallback onTap;

  const ProfileIconButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: .circular(12.r),
      child: Container(
        height: 38.r,
        width: 38.r,
        decoration: BoxDecoration(borderRadius: .circular(12.r)),
        child: Center(child: FaIcon(FontAwesomeIcons.user, size: 18.r)),
      ),
    );
  }
}
