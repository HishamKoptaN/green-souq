import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/sign_up_bloc.dart';
import 'types/farmer/farmer_sign_up_view.dart';
import 'types/sales_engineer/sales_engineer_sign_up_body.dart';
import 'types/shop/store_sign_up_body.dart';
import 'widgets/sign_up_actions.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key, required this.userType});
  final UserType userType;
  static const String routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<SignUpBloc>()
          ..add(.dataChanged(signUpReq: SignUpReqEntity(userType: userType)));
      },
      child: Theme(
        data: context.theme,
        child: CustomScaffold(
          scroll: true,
          body: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return state.maybeMap(
                loaded: (state) {
                  return Column(
                    spacing: 14.h,
                    children: [
                      switch (userType) {
                        //.company => CompanySignUpBody(
                        //  signUpReq: state.signUpReq,
                        //  formzSubmissionStatus: state.formzSubmissionStatus,
                        //),
                        .shop => StoreSignUpBody(
                          signUpReq: state.signUpReq,
                          formzSubmissionStatus: state.formzSubmissionStatus,
                        ),
                        .salesEngineer => SalesEngineerSignUpBody(
                          signUpReq: state.signUpReq,
                          formzSubmissionStatus: state.formzSubmissionStatus,
                        ),
                        .farmer => FarmerSignUpForm(signUpReq: state.signUpReq),
                        UserType.technicalSupportEngineer =>
                          throw UnimplementedError(),
                        // TODO: Handle this case.
                        UserType.jobSeeker => throw UnimplementedError(),
                      },
                      SignUpActions(
                        formzSubmissionStatus: state.formzSubmissionStatus,
                      ),
                    ],
                  );
                },
                orElse: () {
                  return const CustomCircularProgress();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
