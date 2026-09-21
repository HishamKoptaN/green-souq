import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:gap/gap.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/forms/auth_text_form_field.dart';
import 'package:green/core/widgets/forms/custom_phone_form_field.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/auth/sign_up/present/bloc/sign_up_bloc.dart';

import '../../../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../../../custom_text_form_header.dart';
import 'commercial_register_field.dart';
import 'store_header_widget.dart';

class StoreSignUpForm extends StatelessWidget {
  final SignUpReqEntity signUpReq;
  const StoreSignUpForm({super.key, required this.signUpReq});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoreHeaderWidget(),
        Gap(12.h),
        CustomTextFormHeader(
          label: 'اسم المحل أو المعرض التجاري',
          icon: Icons.store,
          tag: 'مطلوب',
        ),
        SizedBox(height: 6.h),
        CustomAuthTextFormField(
          key: const Key('shop_name_field'),
          initialValue: signUpReq.name?.value,
          hintText: 'مثال: الواحة الخضراء للمستلزمات الزراعية',
          onChanged: (v) {
            _update(signUpReq.copyWith(name: .dirty(value: v)));
          },
          prefixIcon: const Icon(Icons.domain),
          validator: (value) {
            return GenericFormInput.dirty(value: value ?? '').error?.name;
          },
        ),
        SizedBox(height: 12.h),
        CustomTextFormHeader(label: 'رقم الموبايل', icon: Icons.phone_iphone),
        SizedBox(height: 6.h),
        CustomPhoneFormField(
          key: const Key('phone_field'),
          onChanged: (v) {
            _update(signUpReq.copyWith(phone: .dirty(v.completeNumber)));
          },
        ),
        SizedBox(height: 12.h),
        CustomTextFormHeader(
          label: 'كلمة المرور',
          icon: Icons.lock_outline,
          tag: '٨ خانات كحد أدنى',
        ),
        SizedBox(height: 6.h),
        CustomAuthTextFormField(
          key: const Key('password_field'),
          initialValue: signUpReq.password?.value,
          hintText: 'أدخل كلمة مرور قوية',
          suffixIcon: Icon(
            signUpReq.obscurePassword ? Icons.visibility_off : Icons.visibility,
            color: context.colorScheme.outline,
          ),
          prefixIcon: const Icon(Icons.lock_outline),
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            _update(signUpReq.copyWith(password: .dirty(v)));
          },
          validator: (value) {
            return PasswordFormInput.dirty(value ?? '').error?.name;
          },
        ),
        SizedBox(height: 12.h),
        CustomTextFormHeader(
          label: 'تأكيد كلمة المرور',
          icon: Icons.lock_reset,
        ),
        const SizedBox(height: 6),
        CustomAuthTextFormField(
          key: const Key('confirm_password_field'),
          initialValue: signUpReq.confirmPassword?.value,
          hintText: 'أعد كتابة كلمة المرور',
          suffixIcon: Icon(
            signUpReq.obscurePassword ? Icons.visibility_off : Icons.visibility,
            color: context.colorScheme.outline,
          ),
          prefixIcon: const Icon(Icons.lock_reset_outlined),
          obscureText: signUpReq.obscurePassword,
          showPasswordToggle: true,
          onChanged: (v) {
            _update(signUpReq.copyWith(confirmPassword: .dirty(v)));
          },
          validator: (value) {
            return value == signUpReq.password?.value
                ? null
                : 'كلمتا المرور غير متطابقتين';
          },
        ),
        SizedBox(height: 12.h),
        CommercialRegisterField(
          onChanged: (v) {
            // _update(signUpReq.copyWith(commercialRegister: .dirty(v)));
          },
        ),
        SizedBox(height: 12.h),
      ],
    );
  }

  void _update(SignUpReqEntity updatedReq) {
    getIt<SignUpBloc>().add(.dataChanged(signUpReq: updatedReq));
  }
}
