import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:green/core/widgets/forms/auth_text_form_field.dart';
import 'package:green/core/widgets/forms/custom_phone_form_field.dart';

import '../../../../domain/entities/sign_up_req_entity.dart';
import '../../../bloc/sign_up_bloc.dart';

/// نموذج تسجيل باحث عن عمل في المنظومة الزراعية.
class JobSeekerSignUpView extends StatelessWidget {
  const JobSeekerSignUpView({super.key, required this.signUpReq});

  final SignUpReqEntity signUpReq;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Form(
      autovalidateMode: .onUserInteraction,
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16.h,
        children: [
          Container(
            padding: .all(16.r),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
              borderRadius: .circular(12.r),
            ),
            child: Text(
              'تسجيل باحث عن عمل',
              style: theme.textTheme.headlineSmall,
            ),
          ),
          CustomAuthTextFormField(
            initialValue: signUpReq.name?.value ?? '',
            labelText: 'الاسم الكامل',
            isRequired: true,
            prefixIcon: const Icon(Icons.person_outline),
            onChanged: (value) {
              context.read<SignUpBloc>().add(
                    .dataChanged(
                      signUpReq: signUpReq.copyWith(
                        name: GenericFormInput.dirty(value: value),
                      ),
                    ),
                  );
            },
            validator: (value) {
              return GenericFormInput.dirty(value: value ?? '').errorMessage;
            },
          ),
          CustomPhoneFormField(
            labelText: 'رقم الهاتف',
            isRequired: true,
            onChanged: (phone) {
              context.read<SignUpBloc>().add(
                    .dataChanged(
                      signUpReq: signUpReq.copyWith(
                        phone: .dirty(phone.completeNumber),
                        isValidNumber: phone.isValidNumber(),
                      ),
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }
}
