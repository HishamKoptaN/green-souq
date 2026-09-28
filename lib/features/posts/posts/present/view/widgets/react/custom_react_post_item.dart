import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green/core/utils/app_colors.dart';
import 'package:green/core/utils/app_text_styles.dart';

class CustomReactPostItem extends StatelessWidget {
  const CustomReactPostItem({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });

  final String text, image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 95,
          height: 36,
          decoration: ShapeDecoration(
            //  color: AppColors.lightGreyColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(text, style: TextStyles.bold15),
                const Spacer(),
                SvgPicture.asset(image, width: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
