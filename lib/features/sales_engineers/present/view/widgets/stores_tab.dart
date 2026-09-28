import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoresTab extends StatelessWidget {
  final void Function(String) showToast;
  final void Function(String) openReviewModal;

  const StoresTab({
    super.key,
    required this.showToast,
    required this.openReviewModal,
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
              color: const Color(0xFFEAF7ED),
              borderRadius: .circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'مكانك الحالي',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: const Color(0xFF3F4940),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'قرية برنشت - العياط',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: () {
                    {
                      openReviewModal('مركز الخير للمستلزمات');
                    }
                  },
                  icon: Icon(Icons.rate_review, size: 16.r),
                  label: Text('تقييم محل', style: TextStyle(fontSize: 12.sp)),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          _buildStoreCard(
            context,
            name: 'مركز الخير للمستلزمات',
            category: 'أسمدة وبذور زراعية',
            rating: '4.8',
            distance: '450 م',
          ),
        ],
      );
    }
  }

  Widget _buildStoreCard(
    BuildContext context, {
    required String name,
    required String category,
    required String rating,
    required String distance,
  }) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: .circular(12.r),
          border: Border.all(color: const Color(0xFFDEEBE1)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '$rating • $category',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: const Color(0xFF3F4940),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFF7FF7AA),
                    borderRadius: .circular(20.r),
                  ),
                  child: Text(
                    distance,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF00522C),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
