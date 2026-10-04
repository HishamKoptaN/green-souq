import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/extensions/theme_ext.dart';

class CustomAvatarPlacholder extends StatelessWidget {
  const CustomAvatarPlacholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.person_rounded,
      size: 30.r,
      color: context.colorScheme.onPrimaryContainer,
    );
  }
}
