import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';

import '../../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../../../core/widgets/forms/custom_phone_form_field.dart';
import '../../../../domain/entities/sign_up_req_entity.dart';
import '../../../bloc/sign_up_bloc.dart';

class SalesEngineerSignUpForm extends StatelessWidget {
  final SignUpReqEntity signUpReq;

  const SalesEngineerSignUpForm({super.key, required this.signUpReq});

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: .onUserInteractionIfError,
      child: Column(
        crossAxisAlignment: .start,
        spacing: 4.h,
        children: [
          CustomAuthTextFormField(
            initialValue: signUpReq.name?.value,
            labelText: 'الاسم',
            isRequired: true,
            hintText: 'مثال: أحمد عبد الله الشمري',
            prefixIcon: Icon(
              Icons.person,
              color: context.colorScheme.onSurfaceVariant,
            ),
            onChanged: (v) {
              context.read<SignUpBloc>().add(
                .dataChanged(
                  signUpReq: signUpReq.copyWith(name: .dirty(value: v)),
                ),
              );
            },
            validator: (value) {
              return signUpReq.name?.errorMessage;
            },
          ),
          CustomPhoneFormField(
            labelText: 'رقم الهاتف',
            isRequired: true,
            onChanged: (v) {
              context.read<SignUpBloc>().add(
                .dataChanged(
                  signUpReq: signUpReq.copyWith(
                    phone: .dirty(v.completeNumber),
                  ),
                ),
              );
            },
          ),
          CustomAuthTextFormField(
            initialValue: signUpReq.email?.value,
            labelText: 'البريد الإلكتروني',
            isRequired: true,
            hintText: 'أدخل بريدك الإلكتروني',
            onChanged: (v) {
              context.read<SignUpBloc>().add(
                .dataChanged(signUpReq: signUpReq.copyWith(email: .dirty(v))),
              );
            },
            prefixIcon: const Icon(Icons.email_outlined),
            validator: (value) {
              return EmailFormInput.dirty(value ?? '').error?.name;
            },
          ),
          CustomAuthTextFormField(
            labelText: 'كلمة السر',
            isRequired: true,
            hintText: '٨ خانات تتضمن حروف وأرقام',
            initialValue: signUpReq.password?.value,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: context.colorScheme.onSurfaceVariant,
            ),
            obscureText: signUpReq.obscurePassword,
            onChanged: (v) {
              context.read<SignUpBloc>().add(
                .dataChanged(
                  signUpReq: signUpReq.copyWith(password: .dirty(v)),
                ),
              );
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
            labelText: 'تأكيد كلمة السر',
            isRequired: true,
            hintText: 'أعد كتابة كلمة المرور',
            prefixIcon: Icon(
              Icons.lock_outline,
              color: context.colorScheme.onSurfaceVariant,
            ),
            obscureText: signUpReq.obscurePassword,
            onChanged: (v) {
              context.read<SignUpBloc>().add(
                .dataChanged(
                  signUpReq: signUpReq.copyWith(confirmPassword: .dirty(v)),
                ),
              );
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
              return signUpReq.confirmPassword?.errorMessage;
            },
          ),
        ],
      ),
    );
  }
}
