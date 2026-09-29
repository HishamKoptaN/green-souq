import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreCard extends StatelessWidget {
  final String title;
  final String category;
  final String distance;
  final double rating;
  final IconData imageIcon;
  final bool isNew;
  final String searchQuery;
  final VoidCallback onReview;
  final Function(String) onToast;

  const StoreCard({
    super.key,
    required this.title,
    required this.category,
    required this.distance,
    required this.rating,
    required this.imageIcon,
    this.isNew = false,
    required this.searchQuery,
    required this.onReview,
    required this.onToast,
  });

  @override
  Widget build(BuildContext context) {
    {
      if (searchQuery.isNotEmpty &&
          !title.toLowerCase().contains(searchQuery) &&
          !category.toLowerCase().contains(searchQuery)) {
        {
          return const SizedBox.shrink();
        }
      }

      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: .circular(12.r),
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow
                  .withValues(alpha: 0.02),
              blurRadius: 4.r,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer
                            .withValues(alpha: 0.3),
                        borderRadius: .circular(12.r),
                      ),
                      child: Icon(
                        imageIcon,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            Icon(Icons.star, size: 14.r, color: Colors.amber),
                            SizedBox(width: 4.w),
                            Text(
                              '$rating',
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' • ',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                            ),
                            Text(
                              category,
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: .symmetric(horizontal: 10.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: isNew
                        ? Theme.of(context).colorScheme.tertiaryContainer
                        : Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: .circular(20.r),
                  ),
                  child: Text(
                    distance,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: isNew
                          ? Theme.of(context).colorScheme.onTertiaryContainer
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Divider(color: Theme.of(context).colorScheme.outlineVariant),
            SizedBox(height: 4.h),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      onToast('جاري الاتصال بالمحل...');
                    },
                    icon: Icon(
                      Icons.call,
                      size: 16.r,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    label: Text(
                      'اتصال مباشر',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outlineVariant,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: .circular(8.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: onReview,
                    icon: Icon(Icons.rate_review, size: 16.r),
                    label: Text(
                      'تقييم وزيارة',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: .circular(8.r),
                      ),
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
