import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:green/core/widgets/forms/auth_text_form_field.dart';
import 'package:green/core/widgets/forms/custom_phone_form_field.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/auth/sign_up/present/bloc/sign_up_bloc.dart';

import 'location_widget.dart';

class StoreSignUpForm extends StatelessWidget {
  final SignUpReqEntity signUpReq;
  const StoreSignUpForm({super.key, required this.signUpReq});
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: .onUserInteraction,
      child: Column(
        spacing: 4.h,
        children: [
          CustomAuthTextFormField(
            initialValue: signUpReq.name?.value,
            labelText: 'اسم المحل أو المعرض التجاري',
            isRequired: true,
            hintText: 'مثال: الواحة الخضراء للمستلزمات الزراعية',
            onChanged: (v) {
              _update(context, signUpReq.copyWith(name: .dirty(value: v)));
            },
            prefixIcon: const Icon(Icons.domain),
            validator: (v) {
              return signUpReq.name?.emptyMessage;
            },
          ),
          LocationWidget(signUpReq: signUpReq),
          CustomPhoneFormField(
            labelText: 'رقم الموبايل',
            isRequired: true,
            onChanged: (v) {
              _update(
                context,
                signUpReq.copyWith(phone: .dirty(v.completeNumber)),
              );
            },
          ),
          CustomAuthTextFormField(
            initialValue: signUpReq.email?.value,
            labelText: 'البريد الإلكتروني',
            isRequired: true,
            hintText: 'أدخل بريدك الإلكتروني',
            onChanged: (v) {
              _update(context, signUpReq.copyWith(email: .dirty(v)));
            },
            prefixIcon: const Icon(Icons.email_outlined),
            validator: (value) {
              return EmailFormInput.dirty(value ?? '').error?.name;
            },
          ),
          CustomAuthTextFormField(
            initialValue: signUpReq.password?.value,
            labelText: 'كلمة المرور',
            isRequired: true,
            hintText: '**********',
            prefixIcon: const Icon(Icons.lock_outline),
            obscureText: signUpReq.obscurePassword,
            onChanged: (v) {
              _update(context, signUpReq.copyWith(password: .dirty(v)));
            },
            suffixIcon: IconButton(
              icon: Icon(
                signUpReq.obscurePassword
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
              onPressed: () {
                context.read<SignUpBloc>().add(
                  .dataChanged(
                    signUpReq: signUpReq.copyWith(
                      obscurePassword: !signUpReq.obscurePassword,
                    ),
                  ),
                );
              },
            ),
            validator: (value) {
              return PasswordFormInput.dirty(value ?? '').error?.name;
            },
          ),
          CustomAuthTextFormField(
            initialValue: signUpReq.confirmPassword?.value,
            labelText: 'تأكيد كلمة المرور',
            isRequired: true,
            hintText: '**********',
            prefixIcon: const Icon(Icons.lock_reset_outlined),
            obscureText: signUpReq.obscurePassword,
            onChanged: (v) {
              _update(context, signUpReq.copyWith(confirmPassword: .dirty(v)));
            },
            suffixIcon: IconButton(
              icon: Icon(
                signUpReq.obscurePassword
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
              onPressed: () {
                context.read<SignUpBloc>().add(
                  .dataChanged(
                    signUpReq: signUpReq.copyWith(
                      obscurePassword: !signUpReq.obscurePassword,
                    ),
                  ),
                );
              },
            ),
            validator: (value) {
              return value == signUpReq.password?.value
                  ? null
                  : 'كلمتا المرور غير متطابقتين';
            },
          ),
        ],
      ),
    );
  }

  void _update(BuildContext context, SignUpReqEntity updatedReq) {
    context.read<SignUpBloc>().add(.dataChanged(signUpReq: updatedReq));
  }
}
