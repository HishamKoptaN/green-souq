import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatelessWidget {
  final void Function(String) showToast;

  const ProfileTab({super.key, required this.showToast});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textTheme = theme.textTheme;
    {
      return ListView(
        padding: .all(16.r),
        children: [
          Container(
            padding: .all(16.r),
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: .circular(16.r),
              border: Border.all(color: colors.outlineVariant),
            ),
            child: Row(
              children: [
                Container(
                  width: 64.r,
                  height: 64.r,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'م.س',
                    style: textTheme.headlineSmall?.copyWith(
                      color: colors.onPrimary,
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('سليمان البداح', style: textTheme.titleMedium),
                    SizedBox(height: 2.h),
                    Text(
                      'مندوب ميداني معتمد',
                      style: textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          ListTile(
            leading: Icon(Icons.badge, color: colors.primary),
            title: Text(
              'بيانات الحساب والاعتماد الزراعي',
              style: textTheme.titleSmall,
            ),
            onTap: () {
              {
                showToast('فتح: بيانات الحساب');
              }
            },
          ),
        ],
      );
    }
  }
}
