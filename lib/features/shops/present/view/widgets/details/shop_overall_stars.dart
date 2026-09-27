import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../ratings/present/bloc/ratings_bloc.dart';
import '../../../../domain/entities/shop_entity.dart';

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
    _currentRating = widget.shop.rating.round() > 0
        ? widget.shop.rating.round()
        : widget.shop.ratingAverage.round();
  }

  @override
  void didUpdateWidget(covariant ShopOverallStars oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.shop.rating != widget.shop.rating ||
        oldWidget.shop.ratingAverage != widget.shop.ratingAverage) {
      _currentRating = widget.shop.rating.round() > 0
          ? widget.shop.rating.round()
          : widget.shop.ratingAverage.round();
    }
  }

  void _showConfirmationDialog(int starVal) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: .circular(16.r)),
          title: Text(
            'تأكيد التقييم',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          content: Text(
            'هل أنت متأكد من رغبتك في تقييم المحل بـ $starVal نجوم؟',
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              child: Text(
                'إلغاء',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                foregroundColor: context.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
              ),
              onPressed: () {
                Navigator.pop(dialogContext);
                setState(() {
                  _currentRating = starVal;
                });
                getIt<RatingsBloc>().add(
                  .rate(id: widget.shop.id, rating: starVal),
                );
              },
              child: const Text('تأكيد'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow.withValues(alpha: 0.6),
        borderRadius: .circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          Text(
            'تقييمك للمحل',
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: .bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          Gap(4.h),
          Row(
            mainAxisAlignment: .center,
            children: List.generate(5, (index) {
              final starVal = index + 1;
              return IconButton(
                onPressed: () {
                  _showConfirmationDialog(starVal);
                },
                icon: Icon(
                  Icons.star,
                  size: 28.r,
                  color: starVal <= _currentRating
                      ? Colors.amber
                      : context.colorScheme.tertiary,
                ),
              );
            }),
          ),
          Text(
            getRatingLabel(_currentRating),
            style: context.textTheme.titleSmall?.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: .bold,
            ),
          ),
          Gap(12.h),
          Text(
            'يمكنك تعديل تقييمك في أي وقت بالضغط على النجوم',
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
            textAlign: .center,
          ),
        ],
      ),
    );
  }

  String getRatingLabel(int rating) {
    switch (rating) {
      case 1:
        return 'ضعيف ولا ينصح بالتعامل معه';
      case 2:
        return 'أقل من المتوسط - يحتاج حذر';
      case 3:
        return 'متوسط - مقبول';
      case 4:
        return 'جيد جداً - ننصح به';
      case 5:
        return 'ممتاز - موثوق للغاية';
      default:
        return 'قم باختيار التقييم';
    }
  }
}
