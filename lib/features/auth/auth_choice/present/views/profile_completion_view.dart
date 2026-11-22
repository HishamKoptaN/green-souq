import 'package:error_handler/error_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:green/core/widgets/feedback/app_snackbar.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/home/present/view/home.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../sign_up/domain/use_cases/sign_up_use_cases.dart';
import 'widgets/account_type_selector_widget.dart';

class ProfileCompletionView extends StatefulWidget {
  const ProfileCompletionView({super.key});
  static const String routeName = 'profile-completion';
  @override
  State<ProfileCompletionView> createState() => _ProfileCompletionViewState();
}

class _ProfileCompletionViewState extends State<ProfileCompletionView> {
  final _nameController = TextEditingController(
    text: FirebaseAuth.instance.currentUser?.displayName ?? '',
  );
  UserType _userType = UserType.shop;
  bool _submitting = false;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      context.showErrorSnackBar(title: 'خطأ', message: 'الرجاء إدخال الاسم');
      return;
    }
    setState(() => _submitting = true);
    final result = await getIt<SignUpUseCases>().completeProfile(
      name: name,
      userType: _userType,
    );
    if (!mounted) return;
    await result.when(
      success: (data) async {
        context.go('/${HomeView.routeName}');
      },
      failure: (error) {
        setState(() => _submitting = false);
        context.showErrorSnackBar(title: 'خطأ', message: error.message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scroll: true,
      body: Column(
        crossAxisAlignment: .start,
        spacing: 12.h,
        children: [
          Text('أكمل بيانات حسابك', style: context.textTheme.headlineSmall),
          CustomAuthTextFormField(
            controller: _nameController,
            labelText: 'الاسم',
            hintText: 'اكتب اسمك',
            prefixIcon: const Icon(Icons.person_outlined),
          ),
          AccountTypeSelectorWidget(
            selectedType: _userType,
            onChanged: (type) => setState(() => _userType = type),
          ),
          Gap(8.h),
          FilledButton.tonalIcon(
            onPressed: _submitting ? null : _submit,
            label: Text(_submitting ? 'جارٍ الحفظ...' : 'متابعة'),
            icon: _submitting
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.arrow_forward_ios, size: 16),
            iconAlignment: .end,
          ),
        ],
      ),
    );
  }
}
