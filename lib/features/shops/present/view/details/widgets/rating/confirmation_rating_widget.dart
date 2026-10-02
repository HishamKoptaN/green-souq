import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../ratings/present/bloc/ratings_bloc.dart';
import '../../../../../domain/entities/shop_entity.dart';
import '../../../../bloc/shops_bloc.dart';

class ConfirmationRatingWidget extends StatelessWidget {
  const ConfirmationRatingWidget({
    super.key,
    required this.starVal,
    required this.shop,
  });

  final int starVal;
  final ShopEntity shop;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: .vertical(top: .circular(24.r)),
          border: Border.all(
            color: context.colorScheme.primary.withValues(alpha: 0.2),
          ),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.primary.withValues(alpha: 0.15),
              blurRadius: 20.r,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        padding: .all(24.r),
        child: Column(
          mainAxisSize: .min,
          children: [
            Container(
              height: 4.h,
              width: 36.w,
              decoration: BoxDecoration(
                color: context.colorScheme.outlineVariant,
                borderRadius: .circular(2.r),
              ),
            ),
            Gap(16.h),
            Text(
              'تأكيد واعتماد التقييم',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: .bold,
                color: context.colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            Gap(8.h),
            Text(
              'يرجى مراجعة تفاصيل التقييم قبل نشره للشبكة الزراعية',
              style: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            Gap(16.h),
            Container(
              padding: .all(12.r),
              decoration: BoxDecoration(
                color: context.colorScheme.primaryContainer.withValues(alpha: 0.08),
                borderRadius: .circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    shop.name,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: .bold,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    '$starVal / 5 — ${_getRatingLabel(starVal)}',
                    style: context.textTheme.labelMedium?.copyWith(
                      fontWeight: .bold,
                      color: context.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            Gap(24.h),
            Row(
              spacing: 12.w,
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: .symmetric(vertical: 12.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: .circular(12.r),
                      ),
                    ),
                    onPressed: () => context.pop(),
                    child: Text(
                      'إلغاء',
                      style: context.textTheme.labelMedium?.copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colorScheme.primary,
                      foregroundColor: context.colorScheme.onPrimary,
                      padding: .symmetric(vertical: 12.h),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: .circular(12.r),
                      ),
                    ),
                    onPressed: () {
                      getIt<RatingsBloc>().add(
                        .rate(
                          id: int.parse(shop.id),
                          value: starVal,
                          type: 'user',
                        ),
                      );
                      context.pop();
                    },
                    child: const Text('تأكيد التقييم'),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

  String _getRatingDescription(int rating) {
    switch (rating) {
      case 1:
        return 'ضعيف ولا ينصح بالتعامل معه';
      case 2:
        return 'مقبول - يتطلب حذر ائتماني ودفع نقدي';
      case 3:
        return 'متوسط - التزام مقبول بالتوريدات';
      case 4:
        return 'جيد جداً - ننصح به ويسدد بانتظام';
      case 5:
        return 'ممتاز - عميل استراتيجي موثوق بنسبة 100%';
      default:
        return 'قم باختيار التقييم';
    }
  }

  String _getRatingLabel(int rating) {
    return _getRatingDescription(rating);
  }
}
