import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:green/core/theme/core/extensions/theme_ext.dart';

import '../../../../../domain/entities/sign_up_req_entity.dart';
import 'representative_sign_up_form.dart';

class RepresentativeSignUpBody extends StatelessWidget {
  const RepresentativeSignUpBody({
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
      children: [
        Gap(10.h),
        Padding(
          padding: .symmetric(horizontal: 0.w, vertical: 0.h),
          child: Container(
            padding: .all(2.r),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF7ED),
              borderRadius: .circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.03),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: .start,
              children: [
                Container(
                  padding: .all(6.r),
                  decoration: BoxDecoration(
                    color: const Color(0xFF006838),
                    borderRadius: .circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF006838).withValues(alpha: 0.3),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Icon(Icons.badge, color: Colors.white, size: 24.r),
                ),
                Gap(16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'اعتماد الهوية التجارية',
                            style: context.textTheme.labelSmall?.copyWith(
                              color: context.colorScheme.primary,
                            ),
                          ),
                          Gap(6.w),
                          Container(
                            width: 6.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                              color: context.colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      Gap(4.h),
                      Text(
                        'تسجيل مندوب مبيعات ميداني',
                        style: context.textTheme.headlineSmall,
                      ),
                      Gap(4.h),
                      Text(
                        'سجّل حسابك لبدء استلام خطوط السير والطلبيات المباشرة وتتبع عمولاتك بدقة.',
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colorScheme.outline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: .symmetric(horizontal: 0.w, vertical: 10.h),
          child: Container(
            height: 120.h,
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerHigh,
              borderRadius: .circular(16.r),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuAHsjhkQCXUw27BUkoMdsJ8H-Q9eqNS3W72IhtsDKtTGIQvKM6ifkZwLmekwOmIcx2FonHp0RCP_EbxcnzqdpJGP8CJGNoR0s35egM4CWgo3AgEcBCoccyR7s9uS-lRopKuuFsYO6wpdIgbx7CPakXobhnA_AS2JoYeHq7Y2dtmIPF7O5tkqMfjtmKiQqYkmrloeThlr9zTaq9p8ICegPwKoR40Wlr2LjswlYPIfhNbl4wSF4IzckMaJA',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: context.colorScheme.surfaceContainerHigh,
                      );
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: .circular(16.r),
                    gradient: LinearGradient(
                      begin: .topCenter,
                      end: .bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color(0xFF28332C).withValues(alpha: 0.9),
                      ],
                    ),
                  ),
                  padding: .all(16.r),
                  alignment: .bottomCenter,
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.storefront,
                            color: context.colorScheme.secondary,
                            size: 20.r,
                          ),
                          Gap(8.w),
                          Text(
                            'أكثر من +٤٥٠ موزع ومتجر بانتظار عروضك',
                            style: context.textTheme.labelMedium?.copyWith(
                              color: context.colorScheme.onSecondary,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: .symmetric(horizontal: 8.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: context.colorScheme.secondary,
                          borderRadius: .circular(6.r),
                        ),
                        child: Text(
                          'نشط الآن',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: context.colorScheme.onSecondary,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(12.h),
        Form(
          autovalidateMode: .onUserInteraction,
          child: SalesRepresentativeSignUpForm(signUpReq: signUpReq),
        ),
        Gap(16.h),
        Container(
          padding: .all(16.r),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerHighest,
            borderRadius: .circular(16.r),
          ),
          child: Row(
            crossAxisAlignment: .start,
            children: [
              Icon(
                Icons.explore,
                color: context.colorScheme.onTertiaryContainer,
                size: 24.r,
              ),
              Gap(12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'ميزة استكشاف خط السير الفوري',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: .bold,
                      ),
                    ),
                    Gap(4.h),
                    Text(
                      'ستتمكن فور تفعيل حسابك من استعراض خريطة تفاعلية للمحلات والمزارع المجاورة لخط سيرك اليومي وإصدار الفواتير المعتمدة.',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: context.colorScheme.outline,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Gap(24.h),
        FilledButton(
          key: const Key('signUp_button'),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: .center,
            children: [
              Text('إنشاء الحساب'),
              Gap(8.w),
              Icon(
                Icons.arrow_forward,
                color: context.colorScheme.onPrimary,
                size: 20.r,
              ),
            ],
          ),
        ),
        Gap(32.h),
      ],
    );
  }
}
