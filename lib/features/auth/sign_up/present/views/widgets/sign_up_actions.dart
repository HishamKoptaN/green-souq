import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../../core/widgets/forms/translated_text.dart';
import '../../../../sign_in/present/views/sign_in_view.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpActions extends StatelessWidget {
  const SignUpActions({super.key, required this.formzSubmissionStatus});
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          onPressed: formzSubmissionStatus.isSuccess
              ? () {
                  context.read<SignUpBloc>().add(const .signUp());
                }
              : null,
          child: formzSubmissionStatus.isInProgress
              ? const CustomCircularProgress()
              : TrText(
                  'إنشاء الحساب',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: .center,
          children: [
            TrText('لديك حساب بالفعل؟'),
            TextButton(
              onPressed: () {
                context.go(SignInView.routeName);
              },
              child: TrText(
                'تسجيل الدخول',
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
