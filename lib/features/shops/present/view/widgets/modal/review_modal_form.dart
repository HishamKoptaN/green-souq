import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';

class ReviewModalForm extends StatefulWidget {
  const ReviewModalForm({super.key, required this.onSubmitted});
  final VoidCallback onSubmitted;

  @override
  State<ReviewModalForm> createState() {
    return _ReviewModalFormState();
  }
}

class _ReviewModalFormState extends State<ReviewModalForm> {
  int _rating = 5;

  @override
  Widget build(BuildContext context) {
    {
      return Column(
        crossAxisAlignment: .start,
        children: [
          Divider(height: 24.h),
          Center(
            child: Text(
              'تقييمك الإجمالي للتعامل التجاري',
              style: context.textTheme.titleMedium?.copyWith(fontWeight: .bold, color: context.colorScheme.onSurface),
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: .center,
            children: List.generate(5, (index) {
              {
                return IconButton(
                  onPressed: () {
                    {
                      setState(() {
                        _rating = index + 1;
                      });
                    }
                  },
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: context.colorScheme.tertiary,
                    size: 32.r,
                  ),
                );
              }
            }),
          ),
          SizedBox(height: 12.h),
          Text('ملاحظات سرية لمناديب الشركة:', style: context.textTheme.bodyMedium?.copyWith(fontWeight: .bold, color: context.colorScheme.onSurface)),
          SizedBox(height: 8.h),
          TextField(
            maxLines: 2,
            decoration: InputDecoration(
              hintText: 'اكتب ملاحظاتك حول التاجر، شروط الدفع...',
              hintStyle: context.textTheme.bodySmall?.copyWith(color: context.colorScheme.onSurfaceVariant),
              filled: true,
              fillColor: context.colorScheme.surfaceContainerHighest,
              border: OutlineInputBorder(borderRadius: .circular(8.r), borderSide: BorderSide.none),
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: .infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                {
                  Navigator.pop(context);
                  widget.onSubmitted();
                }
              },
              icon: Icon(Icons.check_circle, color: context.colorScheme.onPrimary),
              label: Text(
                'اعتماد التقييم الميداني وإرساله',
                style: context.textTheme.titleSmall?.copyWith(color: context.colorScheme.onPrimary, fontWeight: .bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                padding: .symmetric(vertical: 14.h),
                shape: RoundedRectangleBorder(borderRadius: .circular(8.r)),
              ),
            ),
          ),
        ],
      );
    }
  }
}
