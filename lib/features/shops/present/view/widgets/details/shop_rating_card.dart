import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_overall_stars.dart';
import 'package:green/features/shops/present/view/widgets/details/shop_rating_header.dart';

import '../../../../../../core/widgets/forms/custom_text_form_field.dart';
import '../../../../domain/entities/shop_entity.dart';

class ShopRatingCard extends StatelessWidget {
  const ShopRatingCard({
    super.key,
    required this.shop,
    required this.notesController,
    required this.onAppendNote,
    required this.onSubmit,
  });

  final ShopEntity shop;
  final TextEditingController notesController;
  final ValueChanged<String> onAppendNote;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    {
      return Theme(
        data: context.theme.copyWith(
          inputDecorationTheme: context.theme.inputDecorationTheme.copyWith(
            hintStyle: context.theme.inputDecorationTheme.hintStyle?.copyWith(
              color: context.colorScheme.onSurface,
            ),
            fillColor: context.colorScheme.surfaceContainerLow,
          ),
        ),
        child: Container(
          padding: .all(16.r),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerLowest,
            borderRadius: .circular(12.r),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.shadow.withValues(alpha: 0.04),
                blurRadius: 4.r,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 16.h,
            children: [
              const ShopRatingHeader(),
              ShopOverallStars(shop: shop),
              //CustomTextFormField(
              //  initialValue: '',
              //  onChanged: onAppendNote,
              //  maxLines: 3,
              //  hintText: 'اكتب ملاحظتك المهنية هنا',
              //),
              //FilledButton.icon(
              //  onPressed: onSubmit,
              //  style: ElevatedButton.styleFrom(
              //    minimumSize: Size(double.infinity, 40.h),
              //  ),
              //  label: Text('اعتماد وحفظ تقييم المحل'),
              //  icon: Icon(Icons.check_circle),
              //),
            ],
          ),
        ),
      );
    }
  }
}
