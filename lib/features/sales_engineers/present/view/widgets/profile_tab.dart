import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatelessWidget {
  final void Function(String) showToast;

  const ProfileTab({super.key, required this.showToast});

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
              border: Border.all(color: const Color(0xFFDEEBE1)),
            ),
            child: Row(
              children: [
                Container(
                  width: 64.r,
                  height: 64.r,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'م.س',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'سليمان البداح',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      'مندوب ميداني معتمد',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: const Color(0xFF3F4940),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          ListTile(
            leading: Icon(
              Icons.badge,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              'بيانات الحساب والاعتماد الزراعي',
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),
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
