import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:green/features/auth/sign_in/present/bloc/sign_in_bloc.dart';

import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../../../core/widgets/forms/translated_text.dart';
import '../../../domain/entities/sign_in_req_entity.dart';
import 'sign_in_form.dart';

class WelcomeCart extends StatelessWidget {
  const WelcomeCart({
    super.key,
    required this.signInReq,
    required this.formzSubmissionStatus,
  });
  final FormzSubmissionStatus formzSubmissionStatus;
  final SignInReqEntity signInReq;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        borderRadius: .circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          _buildCardHeader(context),
          SizedBox(height: 2.h),
          Row(
            children: [
              SizedBox(width: 10.w),
              Text(
                "أهلاً بك! سجّل دخولك للوصول إلى شبكة السوق الأخضر",
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          SignInForm(signInReq: signInReq),
          FilledButton(
            onPressed: formzSubmissionStatus.isSuccess
                ? () {
                    context.read<SignInBloc>().add(
                      .signIn(type: .emailAndPass),
                    );
                  }
                : null,
            child: formzSubmissionStatus.isInProgress
                ? const CustomCircularProgress()
                : const TrText('تسجيل الدخول'),
          ),
          SizedBox(height: 16.h),
          _buildSeparator(context),
          SizedBox(height: 16.h),
          OutlinedButton(
            onPressed: () {
              context.read<SignInBloc>().add(.signIn(type: .google));
            },
            style: OutlinedButton.styleFrom(
              minimumSize: Size(.infinity, 42.h),
              backgroundColor: context.colorScheme.surfaceContainerLowest,
              side: BorderSide(
                color: context.colorScheme.outline.withValues(alpha: 0.2),
              ),
              shape: RoundedRectangleBorder(borderRadius: .circular(8)),
            ),
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "تسجيل الدخول بواسطة Google",
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
                SizedBox(width: 8.w),
                SvgPicture.asset(
                  'assets/icons/google.svg',
                  width: 20.r,
                  height: 20.r,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardHeader(BuildContext context) {
    return Row(
      children: [
        Container(height: 20.h, width: 4.w, color: context.colorScheme.primary),
        const SizedBox(width: 8),
        Text(
          "تسجيل الدخول",
          style: context.textTheme.titleLarge?.copyWith(fontWeight: .bold),
        ),
      ],
    );
  }

  Widget _buildSeparator(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "أو",
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.outline,
            ),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
