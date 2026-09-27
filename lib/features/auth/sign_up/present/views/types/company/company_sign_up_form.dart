import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs/generic_form_input.dart';

import '../../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../../../core/widgets/forms/custom_phone_form_field.dart';
import '../../../../domain/entities/sign_up_req_entity.dart';
import '../../../bloc/sign_up_bloc.dart';

class CompanySignUpForm extends StatelessWidget {
  final SignUpReqEntity signUpReq;

  const CompanySignUpForm({super.key, required this.signUpReq});

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: .onUserInteractionIfError,
      child: Column(
        spacing: 4.h,
        children: [
          CustomAuthTextFormField(
            initialValue: signUpReq.name?.value,
            labelText: 'الاسم التجاري أو القانوني للشركة / المصنع ',
            isRequired: true,
            hintText: 'مثال: الشركة الوطنية للصناعات والأسمدة الزراعية',
            prefixIcon: const Icon(Icons.corporate_fare),
            onChanged: (v) {
              context.read<SignUpBloc>().add(
                .dataChanged(
                  signUpReq: signUpReq.copyWith(name: .dirty(value: v)),
                ),
              );
            },
            validator: (value) {
              return GenericFormInput.dirty(value: value ?? '').error?.name;
            },
          ),
          CustomPhoneFormField(
            labelText: "رقم هاتف المنشأة / الشركة",
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
            labelText: "البريد الإلكتروني",
            isRequired: true,
            hintText: 'procurement@gmail.com',
            prefixIcon: const Icon(Icons.email_outlined),
            textInputType: .emailAddress,
            onChanged: (v) {
              context.read<SignUpBloc>().add(
                .dataChanged(signUpReq: signUpReq.copyWith(email: .dirty(v))),
              );
            },
            validator: (v) {
              return signUpReq.email?.errorMessage;
            },
          ),
          CustomAuthTextFormField(
            labelText: "كلمة المرور",
            isRequired: true,
            hintText: '**********',
            initialValue: signUpReq.password?.value,
            prefixIcon: const Icon(Icons.lock_outline),
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
              return GenericFormInput.dirty(value: value ?? '').error?.name;
            },
          ),
          CustomAuthTextFormField(
            labelText: "تأكيد كلمة المرور",
            isRequired: true,
            hintText: '**********',
            initialValue: signUpReq.confirmPassword?.value,
            prefixIcon: const Icon(Icons.lock_outline),
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
              return value == signUpReq.password?.value
                  ? null
                  : 'كلمتا المرور غير متطابقتين';
            },
          ),
        ],
      ),
    );
  }
}
