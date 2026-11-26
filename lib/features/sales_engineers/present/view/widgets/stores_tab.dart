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
              color: colors.primaryContainer,
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
                      style: textTheme.labelSmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text('قرية برنشت - العياط', style: textTheme.titleMedium),
                  ],
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primary,
                    foregroundColor: colors.onPrimary,
                  ),
                  onPressed: () {
                    {
                      openReviewModal('مركز الخير للمستلزمات');
                    }
                  },
                  icon: Icon(Icons.rate_review, size: 16.r),
                  label: Text('تقييم محل', style: textTheme.labelMedium),
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
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final textTheme = theme.textTheme;
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: .circular(12.r),
          border: Border.all(color: colors.outlineVariant),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(name, style: textTheme.titleMedium),
                    SizedBox(height: 4.h),
                    Text(
                      '$rating • $category',
                      style: textTheme.labelSmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: colors.primaryContainer,
                    borderRadius: .circular(20.r),
                  ),
                  child: Text(
                    distance,
                    style: textTheme.labelSmall?.copyWith(
                      color: colors.onPrimaryContainer,
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
