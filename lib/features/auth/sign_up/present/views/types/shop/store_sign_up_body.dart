import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../../../domain/entities/sign_up_req_entity.dart';
import 'widgets/registration/shop_registration_fields.dart';
import 'widgets/store_header_widget.dart';
import 'widgets/store_sign_up_form.dart';

class StoreSignUpBody extends StatelessWidget {
  const StoreSignUpBody({
    super.key,
    required this.signUpReq,
    required this.formzSubmissionStatus,
    this.userType = UserType.shop,
  });

  final SignUpReqEntity signUpReq;
  final FormzSubmissionStatus formzSubmissionStatus;
  final UserType userType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .center,
      spacing: 6.h,
      children: [
        StoreHeaderWidget(userType: userType),
        ShopRegistrationFields(signUpReq: signUpReq),
        StoreSignUpForm(signUpReq: signUpReq),
      ],
    );
  }
}
