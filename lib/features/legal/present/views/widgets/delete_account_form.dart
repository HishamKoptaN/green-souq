import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/extensions/theme_ext.dart';

class DeleteAccountForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController identifierController;
  final TextEditingController reasonController;
  final VoidCallback onSubmit;

  const DeleteAccountForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.identifierController,
    required this.reasonController,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '2. نموذج طلب الحذف',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.primary,
          ),
        ),
        SizedBox(height: 12.h),
        Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'الاسم الكامل',
                  hintText: 'أدخل اسمك الكامل',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'الرجاء إدخال الاسم الكامل';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              TextFormField(
                controller: identifierController,
                decoration: const InputDecoration(
                  labelText: 'البريد الإلكتروني أو رقم الهاتف المسجل بالحساب',
                  hintText: 'example@domain.com أو 01000000000',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'الرجاء إدخال البريد الإلكتروني أو رقم الهاتف';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              TextFormField(
                controller: reasonController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'سبب الحذف (اختياري)',
                  hintText: 'أخبرنا بالسبب لتحسين خدماتنا...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  foregroundColor: context.colorScheme.onPrimary,
                  padding: .symmetric(vertical: 14.h),
                ),
                onPressed: onSubmit,
                child: Text(
                  'إرسال طلب الحذف',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
