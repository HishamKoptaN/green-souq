import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/utils/global_variable.dart';

import '../theme/extensions/theme_ext.dart';

class ComingSoonWidget extends StatelessWidget {
  final String title;
  final String desc;
  const ComingSoonWidget({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: GlobalVariable.currentContext!.colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: .circular(20.r)),
      ),

      child: Column(
        mainAxisSize: .min,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.close, size: 26.r),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CircleAvatar(
                backgroundColor: context.colorScheme.tertiary,
                child: Icon(
                  Icons.rocket_launch,
                  size: 22.r,
                  color: context.colorScheme.onTertiary,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Container(
            padding: .symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: const Color(0xFFffdf9f),
              borderRadius: .circular(20.r),
            ),
            child: Text(
              'ميزة قيد التطوير والتجهيز 🚀',
              style: GlobalVariable.currentContext!.textTheme.bodyMedium
                  ?.copyWith(fontWeight: .bold, color: const Color(0xFF261a00)),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: .bold,
              color: context.colorScheme.onSurface,
            ),
            textAlign: .center,
          ),
          SizedBox(height: 8.h),
          Text(
            desc,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
            textAlign: .center,
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
