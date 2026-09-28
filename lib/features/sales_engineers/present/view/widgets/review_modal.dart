import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void openReviewModal(
  BuildContext context,
  String storeName,
  void Function(String) showToast,
) {
  {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: .vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        {
          return Padding(
            padding: .only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16.w,
              right: 16.w,
              top: 16.h,
            ),
            child: Column(
              mainAxisSize: .min,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(storeName, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ],
                ),
                Divider(height: 24.h),
                Center(
                  child: Text(
                    'تقييمك الإجمالي للتعامل التجاري',
                    style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: .center,
                  children: List.generate(5, (index) {
                    {
                      return IconButton(
                        icon: Icon(Icons.star, color: const Color(0xFF735500), size: 28.r),
                        onPressed: () {
                          {
                            showToast('تم تحديد التقييم ${index + 1} نجوم');
                          }
                        },
                      );
                    }
                  }),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      padding: .symmetric(vertical: 12.h),
                      shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
                    ),
                    onPressed: () {
                      {
                        Navigator.pop(context);
                        showToast('تم اعتماد التقييم الميداني (+50 نقطة)');
                      }
                    },
                    icon: Icon(Icons.check_circle, size: 18.r),
                    label: Text('اعتماد التقييم', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp)),
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          );
        }
      },
    );
  }
}
