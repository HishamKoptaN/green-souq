import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs/generic_form_input.dart';
import 'package:green/core/di/dependency_injection.dart';

import '../../../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../domain/entities/sign_up_req_entity.dart';
import '../../../../bloc/sign_up_bloc.dart';

class CompanySignUpForm extends StatelessWidget {
  final SignUpReqEntity signUpReq;

  const CompanySignUpForm({super.key, required this.signUpReq});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        CustomAuthTextFormField(
          key: const Key('name_field'),
          initialValue: signUpReq.name?.value,
          hintText: 'اسم الشركة',
          prefixIcon: const Icon(Icons.domain_outlined),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(name: .dirty(value: v)),
              ),
            );
          },
          validator: (value) {
            return GenericFormInput.dirty(value: value ?? '').error?.name;
          },
        ),
        CustomAuthTextFormField(
          key: const Key('email_field'),
          initialValue: signUpReq.email?.value,
          hintText: 'البريد الإلكتروني',
          prefixIcon: const Icon(Icons.email_outlined),
          keyboardType: TextInputType.emailAddress,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(email: .dirty(v))),
            );
          },
          validator: (value) {
            return GenericFormInput.dirty(value: value ?? '').error?.name;
          },
        ),
        CustomAuthTextFormField(
          key: const Key('phone_field'),
          initialValue: signUpReq.phone?.value,
          hintText: 'رقم الهاتف',
          prefixIcon: const Icon(Icons.phone_outlined),
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(phone: .dirty(v))),
            );
          },
          validator: (value) {
            return GenericFormInput.dirty(value: value ?? '').error?.name;
          },
        ),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          hintText: 'كلمة المرور',
          initialValue: signUpReq.password?.value,
          prefixIcon: const Icon(Icons.lock_outline),
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(password: .dirty(v))),
            );
          },
          validator: (value) {
            return GenericFormInput.dirty(value: value ?? '').error?.name;
          },
        ),
        CustomAuthTextFormField(
          key: const Key('confirm_password_field'),
          initialValue: signUpReq.confirmPassword?.value,
          hintText: 'تأكيد كلمة المرور',
          prefixIcon: const Icon(Icons.lock_outline),
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
            return value == signUpReq.password?.value
                ? null
                : 'كلمتا المرور غير متطابقتين';
          },
        ),
      ],
    );
  }
}
