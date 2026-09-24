import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/entities/sign_up_req_entity.dart';
import 'registration_form_fields.dart';
import 'registration_header_card.dart';

class FarmerSignUpForm extends StatelessWidget {
  const FarmerSignUpForm({super.key, required this.signUpReq});
  final SignUpReqEntity signUpReq;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 20.h,
      children: [
        const RegistrationHeaderCard(),
        RegistrationFormFields(signUpReq: signUpReq),
      ],
    );
  }
}
