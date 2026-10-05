import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReportItem extends StatelessWidget {
  const ReportItem({
    super.key,
    required this.pathIcon,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final String pathIcon;
  final String title;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        return onChanged(value);
      },
      child: Padding(
        padding: .symmetric(vertical: 8.h),
        child: Row(
          children: [
            SvgPicture.asset(pathIcon, width: 24.r, height: 24.r),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                title,
                style: tt.bodyMedium?.copyWith(color: cs.onSurface),
              ),
            ),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: cs.primary,
            ),
          ],
        ),
      ),
    );
  }
}
