import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'core/theme/extensions/theme_ext.dart';

class FilterIconButton extends StatelessWidget {
  final VoidCallback onTap;

  const FilterIconButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Center(
        child: FaIcon(
          FontAwesomeIcons.sliders,
          color: context.colorScheme.onSurface,
          size: 22.r,
        ),
      ),
    );
  }
}
