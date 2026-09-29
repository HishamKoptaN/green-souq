import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewModal extends StatefulWidget {
  final String storeName;
  final Function(String) onToast;

  const ReviewModal({
    super.key,
    required this.storeName,
    required this.onToast,
  });

  @override
  State<ReviewModal> createState() {
    {
      return _ReviewModalState();
    }
  }
}

class _ReviewModalState extends State<ReviewModal> {
  int selectedStars = 5;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: .vertical(top: .circular(20.r)),
        ),
        child: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .stretch,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary
                            .withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.verified,
                        color: Theme.of(context).colorScheme.primary,
                        size: 18.r,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'تقييم المندوب الميداني المعتمد',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                        ),
                        Text(
                          widget.storeName,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const Divider(),
            SizedBox(height: 8.h),
            Text(
              'تقييمك الإجمالي للتعامل التجاري',
              textAlign: .center,
              style: Theme.of(context).textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: .center,
              children: List.generate(5, (index) {
                {
                  return IconButton(
                    icon: Icon(
                      index < selectedStars ? Icons.star : Icons.star_border,
                      color: Theme.of(context).colorScheme.tertiary,
                      size: 28.r,
                    ),
                    onPressed: () {
                      setState(() {
                        selectedStars = index + 1;
                      });
                    },
                  );
                }
              }),
            ),
            SizedBox(height: 12.h),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                padding: .symmetric(vertical: 12.h),
                shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
              ),
              onPressed: () {
                Navigator.pop(context);
                widget.onToast(
                  'تم حفظ واعتماد تقييمك الميداني للمحل بنجاح (+50 نقطة)',
                );
              },
              icon: Icon(Icons.check_circle, size: 18.r),
              label: Text(
                'اعتماد التقييم الميداني وإرساله',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      );
    }
  }
}
