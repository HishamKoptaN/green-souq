import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';

import '../../../../../domain/entities/sign_up_req_entity.dart';
import '../../../widgets/sign_up_actions.dart';
import 'store_sign_up_form.dart';

class StoreSignUpBody extends StatelessWidget {
  const StoreSignUpBody({
    super.key,
    required this.signUpReq,
    required this.formzSubmissionStatus,
  });

  final SignUpReqEntity signUpReq;
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Gap(50.h),
          Form(
            autovalidateMode: .onUserInteraction,
            child: StoreSignUpForm(signUpReq: signUpReq),
          ),
          SizedBox(height: 25.h),
          SignUpActions(formzSubmissionStatus: formzSubmissionStatus),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
