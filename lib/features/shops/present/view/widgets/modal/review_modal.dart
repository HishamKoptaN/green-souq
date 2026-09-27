import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import 'review_modal_form.dart';

class ReviewModal extends StatelessWidget {
  const ReviewModal({
    super.key,
    required this.storeName,
    required this.onSubmitted,
  });
  final String storeName;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        padding: .fromLTRB(
          16.w,
          16.h,
          16.w,
          MediaQuery.of(context).viewInsets.bottom + 16.h,
        ),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: const .vertical(top: Radius.circular(20)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36.r,
                        height: 36.r,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary.withValues(
                            alpha: 0.1,
                          ),
                          shape: .circle,
                        ),
                        child: Icon(
                          Icons.verified,
                          color: context.colorScheme.primary,
                          size: 20.r,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'تقييم المندوب الميداني المعتمد',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          Text(
                            storeName,
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: .bold,
                              color: context.colorScheme.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      {
                        Navigator.pop(context);
                      }
                    },
                    icon: Icon(
                      Icons.close,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              ReviewModalForm(onSubmitted: onSubmitted),
            ],
          ),
        ),
      );
    }
  }
}
