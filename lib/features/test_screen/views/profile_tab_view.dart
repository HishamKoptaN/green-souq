import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTabView extends StatelessWidget {
  final Function(String) onToast;

  const ProfileTabView({
    super.key,
    required this.onToast,
  });

  @override
  Widget build(BuildContext context) {
    {
      return ListView(
        padding: .all(16.r),
        children: [
          Container(
            padding: .all(16.r),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: .circular(16.r),
              border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.02),
                  blurRadius: 4.r,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 64.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  alignment: .center,
                  child: Text(
                    'م.س',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'سليمان البداح',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                          SizedBox(width: 4.w),
                          Icon(
                            Icons.verified,
                            size: 18.r,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'مندوب ميداني معتمد • منطقة الخرج وبرنشت',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: .circular(12.r),
              border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.badge, color: Theme.of(context).colorScheme.primary),
                  title: Text(
                    'بيانات الحساب والاعتماد الزراعي',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  trailing: Icon(Icons.chevron_left, color: Theme.of(context).colorScheme.onSurfaceVariant),
                  onTap: () {
                    onToast('فتح بيانات الحساب والاعتماد');
                  },
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
