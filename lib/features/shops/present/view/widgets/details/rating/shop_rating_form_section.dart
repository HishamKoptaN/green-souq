import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

class ShopRatingFormSection extends StatelessWidget {
  const ShopRatingFormSection({
    super.key,
    required this.notesController,
    required this.onAppendNote,
    required this.onSubmit,
  });

  final TextEditingController notesController;
  final ValueChanged<String> onAppendNote;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'ملاحظة ميدانية خاصة بك (اختياري)',
            style: context.textTheme.labelSmall?.copyWith(
              fontWeight: .bold,
              color: context.colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 6.h),
          TextField(
            controller: notesController,
            onChanged: onAppendNote,
            maxLines: 2,
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurface,
            ),
            decoration: InputDecoration(
              hintText:
                  'أضف أي تفاصيل تفيد زملاءك الميدانيين (مثل: يفضل الدفع كاش، مواعيد الاستلام صباحاً...)',
              hintStyle: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
                fontSize: 11.sp,
              ),
              filled: true,
              fillColor: context.colorScheme.surfaceContainerLowest,
              border: OutlineInputBorder(
                borderRadius: .circular(12.r),
                borderSide: BorderSide(
                  color: context.colorScheme.outlineVariant,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: .circular(12.r),
                borderSide: BorderSide(
                  color: context.colorScheme.outlineVariant.withValues(alpha: 0.6),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: .circular(12.r),
                borderSide: BorderSide(
                  color: context.colorScheme.primary,
                ),
              ),
              contentPadding: .all(10.r),
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            spacing: 8.w,
            children: [
             
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: context.colorScheme.outlineVariant,
                  ),
                  borderRadius: .circular(12.r),
                ),
                child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('إرفاق محضر زيارة أو صورة')),
                    );
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 20.r,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  tooltip: 'إرفاق محضر زيارة أو صورة',
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
