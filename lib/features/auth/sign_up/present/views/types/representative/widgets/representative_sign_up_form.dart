import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:gap/gap.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/theme/core/extensions/theme_ext.dart';

import '../../../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../../../../core/widgets/forms/custom_phone_form_field.dart';
import '../../../../../../../../custom_text_form_header.dart';
import '../../../../../domain/entities/sign_up_req_entity.dart';
import '../../../../bloc/sign_up_bloc.dart';

class SalesRepresentativeSignUpForm extends StatelessWidget {
  final SignUpReqEntity signUpReq;

  const SalesRepresentativeSignUpForm({super.key, required this.signUpReq});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTextFormHeader(
          icon: Icons.person,
          label: 'الاسم الكامل الثلاثي',
          tag: 'مطلوب *',
        ),
        Gap(8.h),
        CustomAuthTextFormField(
          key: const Key('name_field'),
          initialValue: signUpReq.name?.value,
          hintText: 'مثال: أحمد عبد الله الشمري',
          prefixIcon: Icon(
            Icons.person,
            color: context.colorScheme.onSurfaceVariant,
          ),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(name: .dirty(value: v)),
              ),
            );
          },
          validator: (value) {
            return signUpReq.name?.errorMessage;
          },
        ),
        Gap(14.h),
        CustomTextFormHeader(
          icon: Icons.phone,
          label: 'رقم الهاتف',
          tag: 'مطلوب *',
        ),
        Gap(6.h),
        CustomPhoneFormField(
          key: const Key('phone_field'),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(phone: .dirty(v.completeNumber)),
              ),
            );
          },
        ),
        Gap(8.h),
        Text(
          'كلمة المرور',
          style: context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        Gap(6.h),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          hintText: '٨ خانات تتضمن حروف وأرقام',
          initialValue: signUpReq.password?.value,
          prefixIcon: Icon(
            Icons.lock_outline,
            color: context.colorScheme.onSurfaceVariant,
          ),
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(password: .dirty(v))),
            );
          },
          validator: (value) {
            return PasswordFormInput.dirty(value ?? '').error?.name;
          },
        ),
        Gap(14.h),
        Text(
          'تأكيد كلمة المرور',
          style: context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
        Gap(6.h),
        CustomAuthTextFormField(
          key: const Key('confirm_password_field'),
          initialValue: signUpReq.confirmPassword?.value,
          hintText: 'أعد كتابة كلمة المرور',
          prefixIcon: Icon(
            Icons.lock_outline,
            color: context.colorScheme.onSurfaceVariant,
          ),
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(confirmPassword: .dirty(v)),
              ),
            );
          },
          validator: (value) {
            return signUpReq.confirmPassword?.errorMessage;
          },
        ),
      ],
    );
  }
}
