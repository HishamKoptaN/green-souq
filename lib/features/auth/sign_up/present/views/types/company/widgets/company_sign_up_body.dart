import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../domain/entities/sign_up_req_entity.dart';
import 'company_sign_up_form.dart';

class CompanySignUpBody extends StatelessWidget {
  const CompanySignUpBody({
    super.key,
    required this.signUpReq,
    required this.formzSubmissionStatus,
  });

  final SignUpReqEntity signUpReq;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .center,
      spacing: 8.h,
      children: [
        _buildHeaderCard(context),
        CompanySignUpForm(signUpReq: signUpReq),
      ],
    );
  }

  Widget _buildHeaderCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow,
        borderRadius: .circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      clipBehavior: .antiAlias,
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.1,
              child: Container(color: context.colorScheme.primaryContainer),
            ),
          ),
          Padding(
            padding: .all(8.r),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  spacing: 4.w,
                  children: [
                    Container(
                      padding: .all(6.r),
                      decoration: BoxDecoration(
                        color: context.colorScheme.surfaceContainerLowest
                            .withValues(alpha: 0.8),
                        shape: .circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 20.r,
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                    Container(
                      padding: .symmetric(horizontal: 10.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary,
                        borderRadius: .circular(9999),
                      ),
                      child: Row(
                        mainAxisSize: .min,
                        children: [
                          Icon(
                            Icons.verified,
                            size: 14.r,
                            color: context.colorScheme.surfaceContainerLowest,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "حساب شركات ومصانع B2B Enterprise",
                            style: context.theme.textTheme.bodySmall?.copyWith(
                              fontWeight: .w400,
                              color: context.colorScheme.surfaceContainerLowest,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: .symmetric(horizontal: 8.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: context.colorScheme.tertiaryFixed,
                        borderRadius: .circular(9999),
                      ),
                      child: Text(
                        "معتمد",
                        style: context.theme.textTheme.bodySmall?.copyWith(
                          fontWeight: .w500,
                          color: context.colorScheme.onTertiaryFixed,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Text(
                  "تسجيل شركة أو جهة توريد زراعية",
                  style: context.theme.textTheme.titleMedium?.copyWith(
                    fontWeight: .w900,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  "انضم كجهة معتمدة لعرض منتجاتك، فتح مناقصات وتوريدات، وإدارة شبكة الموزعين المعتمدين في منصة GreenLink.",
                  style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
