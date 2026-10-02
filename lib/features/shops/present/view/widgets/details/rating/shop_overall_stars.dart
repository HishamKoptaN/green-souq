import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/domain/entities/shop_entity.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../ratings/present/bloc/ratings_bloc.dart';

class ShopOverallStars extends StatefulWidget {
  const ShopOverallStars({super.key, required this.shop});

  final ShopEntity shop;

  @override
  State<ShopOverallStars> createState() => _ShopOverallStarsState();
}

class _ShopOverallStarsState extends State<ShopOverallStars> {
  late int _currentRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.shop.initialRating;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .all(16.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLow.withValues(alpha: 0.5),
          borderRadius: .circular(16.r),
          border: Border.all(
            color: context.colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
        child: Column(
          children: [
            Text(
              'اضغط لتعديل تقييمك للمحل',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: .bold,
                color: context.colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 12.h),
            Directionality(
              textDirection: .ltr,
              child: Row(
                mainAxisAlignment: .center,
                spacing: 8.w,
                children: List.generate(5, (index) {
                  final starVal = index + 1;
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _currentRating = starVal;
                      });
                    },
                    borderRadius: .circular(20.r),
                    child: Padding(
                      padding: .all(4.r),
                      child: Icon(
                        Icons.star,
                        size: 32.r,
                        color: starVal <= _currentRating
                            ? Colors.amber.shade600
                            : context.colorScheme.outlineVariant,
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              _getRatingDescription(_currentRating),
              style: context.textTheme.titleSmall?.copyWith(
                color: _getRatingColor(context, _currentRating),
                fontWeight: .bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4.h),
            Text(
              'يمكنك تعديل تقييمك في أي وقت بالضغط على النجوم',
              style: context.textTheme.labelSmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
                fontSize: 10.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.h),
            //ShopRatingFormSection(
            //  notesController: widget.notesController,
            //  onAppendNote: widget.onAppendNote,
            //  onSubmit: widget.onSubmit,
            //),
            FilledButton.icon(
              onPressed: () {
                getIt<RatingsBloc>().add(
                  .rate(
                    id: int.parse(widget.shop.id),
                    value: getIt<RatingsBloc>().state.selectedRating ?? 0,
                    type: 'user',
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Row(
                      spacing: 8.w,
                      children: [
                        Icon(
                          Icons.task_alt,
                          color: context.colorScheme.inversePrimary,
                          size: 20.r,
                        ),
                        const Text(
                          'تم حفظ وتحديث تقييم المحل بنجاح في شبكة المندوبين',
                        ),
                      ],
                    ),
                    backgroundColor: context.colorScheme.inverseSurface,
                    behavior: .floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(12.r),
                    ),
                  ),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                foregroundColor: context.colorScheme.onPrimary,
                padding: .symmetric(vertical: 12.h),
                shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
              ),
              icon: Icon(
                Icons.save,
                size: 16.r,
                color: widget.shop.hasChanges(_currentRating)
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.5,
                      ),
              ),
              label: Text(
                'حفظ واعتماد التقييم',
                style: context.textTheme.labelMedium?.copyWith(
                  color: widget.shop.hasChanges(_currentRating)
                      ? context.colorScheme.onPrimary
                      : context.colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.5,
                        ),
                  fontWeight: .bold,
                ),
              ),
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

  Color _getRatingColor(BuildContext context, int rating) {
    switch (rating) {
      case 1:
        return context.colorScheme.error;
      case 2:
      case 3:
        return context.colorScheme.tertiary;
      case 4:
      case 5:
        return context.colorScheme.primary;
      default:
        return context.colorScheme.primary;
    }
  }
}
