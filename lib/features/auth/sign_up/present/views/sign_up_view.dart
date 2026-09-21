import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/sign_up_bloc.dart';
import 'types/company/widgets/company_sign_up_body.dart';
import 'types/farmer/farmer_sign_up_view.dart';
import 'types/representative/widgets/representative_sign_up_body.dart';
import 'types/store/widgets/store_sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key, required this.userType});
  final UserType userType;
  static const String routeName = 'sign-up';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: BlocBuilder<SignUpBloc, SignUpState>(
        bloc: getIt<SignUpBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              return switch (userType) {
                .farmer => FarmerSignUpForm(signUpReq: state.signUpReq),
                .company => CompanySignUpBody(
                  signUpReq: state.signUpReq,
                  formzSubmissionStatus: state.formzSubmissionStatus,
                ),
                .shop => StoreSignUpBody(
                  signUpReq: state.signUpReq,
                  formzSubmissionStatus: state.formzSubmissionStatus,
                ),
                .representative => RepresentativeSignUpBody(
                  signUpReq: state.signUpReq,
                  formzSubmissionStatus: state.formzSubmissionStatus,
                ),
              };
            },
            orElse: () {
              return const CustomCircularProgress();
            },
          );
        },
      ),
    );
  }
}
