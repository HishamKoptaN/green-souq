import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommercialRegisterField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const CommercialRegisterField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'رقم السجل التجاري أو البطاقة الضريبية',
          style: TextStyle(fontSize: 14.sp),
        ),
        SizedBox(height: 8.h),
        TextField(
          key: const Key('commercial_register_field'),
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: 'اختياري - لتوثيق الحساب',
            prefixIcon: const Icon(Icons.badge),
            border: OutlineInputBorder(borderRadius: .circular(12.r)),
          ),
        ),
      ],
    );
  }
}
