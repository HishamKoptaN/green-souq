import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/widgets/forms/custom_phone_form_field.dart';
import '../../../../../../../core/widgets/forms/custom_text_form_field.dart';
import '../../../../../../../custom_text_form_header.dart';
import '../../../../domain/entities/sign_up_req_entity.dart';
import '../../../bloc/sign_up_bloc.dart';

class RegistrationFormFields extends StatelessWidget {
  const RegistrationFormFields({super.key, required this.signUpReq});
  final SignUpReqEntity signUpReq;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTextField(
          key: const Key('name_field'),
          context: context,
          initialValue: '',
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(name: .dirty(value: v)),
              ),
            );
          },
          label: "اسم المزرعة أو المزارع",
          hint: "مثال: مزرعة النخيل الخضراء / سعد الحارثي",
          icon: Icons.agriculture,
          isOptional: false,
          isPhone: false,
          isPassword: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          key: const Key('phone_field'),
          context: context,
          initialValue: '',
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(phone: .dirty(v))),
            );
          },
          label: "رقم الجوال لتأكيد الحساب (OTP)",
          hint: "",
          icon: Icons.smartphone,
          isPhone: true,
          isOptional: false,
          isPassword: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          key: const Key('email_field'),
          context: context,
          initialValue: '',
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(email: .dirty(v))),
            );
          },
          label: "البريد الإلكتروني للعمليات",
          hint: "email@domain.com",
          icon: Icons.alternate_email,
          isOptional: true,
          isPhone: false,
          isPassword: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          key: const Key('password_field'),
          context: context,
          initialValue: '',
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(password: .dirty(v))),
            );
          },
          label: "كلمة المرور",
          hint: "••••••••",
          icon: Icons.lock,
          isPassword: true,
          isOptional: false,
          isPhone: false,
        ),
        SizedBox(height: 16.h),
        _buildTextField(
          key: const Key('confirm_password_field'),
          context: context,
          initialValue: '',
          onChanged: (v) {
            getIt<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(confirmPassword: .dirty(v)),
              ),
            );
          },
          label: "تأكيد كلمة المرور",
          hint: "••••••••",
          icon: Icons.verified_user,
          isPassword: true,
          isOptional: false,
          isPhone: false,
        ),
        SizedBox(height: 24.h),
        FilledButton(
          key: const Key('signUp_button'),
          onPressed: () {
            getIt<SignUpBloc>().add(.signUp());
          },
          child: const Text("متابعة وتأكيد الحساب (إرسال رمز OTP)"),
        ),
      ],
    );
  }

  Widget _buildTextField({
    Key? key,
    required BuildContext context,
    required String initialValue,
    required Function(String) onChanged,
    required String label,
    required String hint,
    required IconData icon,
    required bool isOptional,
    required bool isPhone,
    required bool isPassword,
  }) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTextFormHeader(
          icon: icon,
          label: label,
          tag: isOptional ? "اختياري" : "مطلوب",
        ),
        SizedBox(height: 8.h),
        isPhone
            ? CustomPhoneFormField(
                key: key,
                onChanged: (phone) {
                  getIt<SignUpBloc>().add(
                    .dataChanged(
                      signUpReq: signUpReq.copyWith(
                        phone: .dirty(phone.completeNumber),
                      ),
                    ),
                  );
                },
              )
            : CustomTextFormField(
                key: key,
                initialValue: initialValue,
                onChanged: onChanged,
                hintText: hint,
                suffixIcon: isPassword ? const Icon(Icons.visibility) : null,
                obscureText: isPassword,
              ),
      ],
    );
  }
}
