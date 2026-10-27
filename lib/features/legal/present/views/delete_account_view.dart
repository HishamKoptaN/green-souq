import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/extensions/theme_ext.dart';
import 'widgets/delete_account_data_section.dart';
import 'widgets/delete_account_form.dart';
import 'widgets/delete_account_notice_card.dart';
import 'widgets/delete_account_steps_section.dart';

class DeleteAccountView extends StatefulWidget {
  static const String routeName = 'delete-account';

  const DeleteAccountView({super.key});

  @override
  State<DeleteAccountView> createState() {
    return _DeleteAccountViewState();
  }
}

class _DeleteAccountViewState extends State<DeleteAccountView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _identifierController = TextEditingController();
  final _reasonController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _identifierController.dispose();
    _reasonController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      final name = _nameController.text.trim();
      final identifier = _identifierController.text.trim();
      final reason = _reasonController.text.trim();

      final subject = Uri.encodeComponent('طلب حذف الحساب');
      final body = Uri.encodeComponent(
        'الاسم الكامل: $name\nالبريد الإلكتروني أو رقم الهاتف: $identifier\nسبب الحذف: $reason',
      );
      final emailUri = Uri.parse(
        'mailto:support@greensouq.app?subject=$subject&body=$body',
      );

      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'تعذر فتح تطبيق البريد الإلكتروني. يرجى المراسلة مباشرة على support@greensouq.app',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onError,
                ),
              ),
              backgroundColor: context.colorScheme.error,
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('طلب حذف الحساب', style: context.textTheme.titleLarge),
        centerTitle: true,
      ),
      body: ListView(
        padding: .all(16.r),
        children: [
          Text(
            'طلب حذف الحساب والبيانات',
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.primary,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            'السوق الأخضر (Green Souq)',
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: 16.h),
          const DeleteAccountNoticeCard(),
          SizedBox(height: 24.h),
          const DeleteAccountStepsSection(),
          SizedBox(height: 24.h),
          DeleteAccountForm(
            formKey: _formKey,
            nameController: _nameController,
            identifierController: _identifierController,
            reasonController: _reasonController,
            onSubmit: _submitForm,
          ),
          SizedBox(height: 24.h),
          const DeleteAccountDataSection(),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
