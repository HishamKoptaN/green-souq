import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/store_card.dart';

class StoresTabView extends StatelessWidget {
  final bool isMapView;
  final TextEditingController searchController;
  final String searchQuery;
  final VoidCallback onToggleMap;
  final Function(String) onToast;
  final Function(String) onReview;

  const StoresTabView({
    super.key,
    required this.isMapView,
    required this.searchController,
    required this.searchQuery,
    required this.onToggleMap,
    required this.onToast,
    required this.onReview,
  });

  @override
  Widget build(BuildContext context) {
    {
      return ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: .all(16.r),
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.pin_drop,
                        size: 18.r,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'مكانك الحالي',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                        ),
                        Text(
                          'قرية برنشت - العياط',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: .all(16.r),
            child: Column(
              children: [
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'ابحث عن محل زراعي أو تاجر...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.surface,
                    border: OutlineInputBorder(
                      borderRadius: .circular(12.r),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: .circular(12.r),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: .symmetric(horizontal: 16.w),
            child: Column(
              children: [
                StoreCard(
                  title: 'مركز الخير للمستلزمات',
                  category: 'أسمدة وبذور زراعية',
                  distance: '450 م',
                  rating: 4.8,
                  imageIcon: Icons.store,
                  searchQuery: searchQuery,
                  onReview: () => onReview('مركز الخير للمستلزمات'),
                  onToast: onToast,
                ),
                SizedBox(height: 12.h),
                StoreCard(
                  title: 'مؤسسة الغيث للمبيدات الزراعية',
                  category: 'مبيدات حشرية وفطريات',
                  distance: '1.2 كم',
                  rating: 4.5,
                  imageIcon: Icons.compost,
                  searchQuery: searchQuery,
                  onReview: () => onReview('مؤسسة الغيث للمبيدات الزراعية'),
                  onToast: onToast,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
        ],
      );
    }
  }
}
