import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/sign_in_bloc.dart';
import 'widgets/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'sign-in';
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        inputDecorationTheme: context.theme.inputDecorationTheme.copyWith(
          filled: true,
          fillColor: context.colorScheme.surfaceContainerLow.withValues(
            alpha: 0.5,
          ),
          border: .none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.colorScheme.outline.withValues(alpha: 0.5),
            ),
            borderRadius: .circular(6.r),
          ),
        ),
      ),
      child: CustomScaffold(
        scroll: true,
        body: BlocProvider(
          create: (context) {
            return getIt<SignInBloc>();
          },
          child: BlocConsumer<SignInBloc, SignInState>(
            listener: (context, state) async {
              await state.mapOrNull(
                failure: (state) {
                  context.showErrorSnackBar(
                    title: state.errorInfo.title,
                    message: state.errorInfo.message,
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                loaded: (loaded) {
                  return SignInBody(
                    signInReq: loaded.signInReq,
                    formzSubmissionStatus: loaded.formzSubmissionStatus,
                  );
                },
                orElse: () {
                  return const Center(child: CustomCircularProgress());
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
