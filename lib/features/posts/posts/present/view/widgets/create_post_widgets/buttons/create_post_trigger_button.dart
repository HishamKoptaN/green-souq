import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePostTriggerButton extends StatelessWidget {
  const CreatePostTriggerButton({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Padding(
      padding: .symmetric(horizontal: 8.w, vertical: 6.h),
      child: Row(
        mainAxisSize: .min,
        children: [
          Icon(icon, size: 20.r, color: color),
          SizedBox(width: 6.w),
          Text(
            label,
            style: tt.labelMedium?.copyWith(
              color: cs.onSurface,
              fontWeight: .w600,
            ),
          ),
        ],
      ),
    );
  }
}
