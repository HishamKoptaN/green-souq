import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../../../../core/widgets/forms/custom_phone_form_field.dart';
import '../../../../domain/entities/sign_up_req_entity.dart';
import '../../../bloc/sign_up_bloc.dart';

class RegistrationFormFields extends StatelessWidget {
  const RegistrationFormFields({super.key, required this.signUpReq});
  final SignUpReqEntity signUpReq;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.h,
      children: [
        CustomAuthTextFormField(
          initialValue: signUpReq.name?.value ?? '',
          labelText: "اسم المزرعة أو المزارع",
          isRequired: true,
          onChanged: (v) {
            context.read<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(name: .dirty(value: v)),
              ),
            );
          },
          prefixIcon: Icon(Icons.agriculture),
          hintText: "مثال: مزرعة النخيل الخضراء / سعد الحارثي",
        ),
        CustomPhoneFormField(
          onChanged: (phone) {
            context.read<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(
                  phone: .dirty(phone.completeNumber),
                ),
              ),
            );
          },
          labelText: 'رقم الهاتف',
          isRequired: true,
        ),
        CustomAuthTextFormField(
          initialValue: signUpReq.email?.value ?? '',
          onChanged: (v) {
            context.read<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(email: .dirty(v))),
            );
          },
          labelText: "البريد الإلكتروني",
          isRequired: true,
          hintText: "email@gmail.com",
          prefixIcon: Icon(Icons.alternate_email),
        ),
        CustomAuthTextFormField(
          initialValue: '',
          onChanged: (v) {
            context.read<SignUpBloc>().add(
              .dataChanged(signUpReq: signUpReq.copyWith(password: .dirty(v))),
            );
          },
          labelText: "كلمة المرور",
          isRequired: true,
          hintText: "••••••••",
          prefixIcon: Icon(Icons.lock),
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
        ),
        CustomAuthTextFormField(
          initialValue: '',
          onChanged: (v) {
            context.read<SignUpBloc>().add(
              .dataChanged(
                signUpReq: signUpReq.copyWith(confirmPassword: .dirty(v)),
              ),
            );
          },
          labelText: "تأكيد كلمة المرور",
          isRequired: true,
          hintText: "••••••••",
          prefixIcon: Icon(Icons.lock),
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
        ),
      ],
    );
  }
}
