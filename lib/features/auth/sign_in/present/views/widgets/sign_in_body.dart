import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/forms/translated_text.dart';
import '../../../../auth_choice/present/views/select_account_type_view.dart';
import '../../../domain/entities/sign_in_req_entity.dart';
import 'sign_in_header.dart';
import 'welcome_card.dart';

class SignInBody extends StatelessWidget {
  final SignInReqEntity signInReq;
  final FormzSubmissionStatus formzSubmissionStatus;
  const SignInBody({
    super.key,
    required this.signInReq,
    required this.formzSubmissionStatus,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        mainAxisSize: .min,
        spacing: 6.h,
        children: [
          SignInHeader(),
          WelcomeCart(
            signInReq: signInReq,
            formzSubmissionStatus: formzSubmissionStatus,
          ),
          _buildTrustRow(context),
          _buildSignUpFooter(context),
          Row(
            mainAxisAlignment: .center,
            children: [
              TrText(
                "ندعم سلاسل التوريد الزراعية في مصر وقريبا العالم العربي",
                style: context.textTheme.bodySmall,
              ),
              SizedBox(width: 4.w),
              Icon(Icons.eco, size: 16.r, color: context.colorScheme.primary),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTrustRow(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      crossAxisAlignment: .center,
      spacing: 12.w,
      children: [
        _buildTrustItem(context, Icons.agriculture, "سوق محاصيل فوري"),
        _buildTrustItem(context, Icons.shield, "ضمان الدفع"),
        _buildTrustItem(context, Icons.local_shipping, "ربط لوجستي"),
      ],
    );
  }

  Widget _buildTrustItem(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        TrText(text, style: context.textTheme.bodySmall),
        SizedBox(width: 4.w),
        Icon(icon, size: 16.r, color: context.colorScheme.primary),
      ],
    );
  }

  Widget _buildSignUpFooter(BuildContext context) {
    return Container(
      padding: .all(16.r),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow,
        borderRadius: .circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: .spaceBetween,
        children: [
          TrText(
            'جديد في شبكة السوق ألاخضر ؟',
            style: context.textTheme.titleMedium?.copyWith(fontWeight: .w700),
          ),
          TrText(
            'انضم لآلاف مهندسين المبيعات و المزارعين والموردين والشركات الزراعية',
            style: context.textTheme.titleSmall?.copyWith(
              color: context.colorScheme.onSurface.withValues(alpha: 0.8),
            ),
          ),
          Gap(16.h),
          FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: context.colorScheme.onPrimary,
              foregroundColor: context.colorScheme.primary,
            ),
            onPressed: () {
              context.go(SelectAccountTypeView.routeName);
            },
            label: const TrText("إنشاء حساب"),
            icon: Icon(Icons.person_add_alt, size: 22.r),
          ),
        ],
      ),
    );
  }
}
