import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/custom_error_widg.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../bloc/profile_bloc.dart';
import 'profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocConsumer<ProfileBloc, ProfileState>(
          bloc: getIt<ProfileBloc>(),
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                context.showSuccessSnackBar(
                  title: 'تم تحديث الملف الشخصي بنجاح',
                );
              },
              failure: (error) {
                context.showErrorSnackBar(title: error);
              },
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loaded: (loadedState) {
                return ProfileBody(
                  profile: loadedState.profile,
                  formzSubmissionStatus: loadedState.formzSubmissionStatus,
                  updateProfileReq: loadedState.updateProfileReq,
                );
              },
              failure: (state) {
                return CustomErrorWidget(
                  retryText: 'إعادة المحاولة',
                  message: state.error,
                  onRetry: () {
                    getIt<ProfileBloc>().add(const .getProfile());
                  },
                );
              },
              orElse: () {
                return Skeletonizer(
                  enabled: true,
                  enableSwitchAnimation: true,
                  child: ProfileBody(
                    updateProfileReq: null,
                    profile: ProfileResEntity(),
                    formzSubmissionStatus: .initial,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget buildDivider() {
    return const Divider(height: 1, indent: 16, endIndent: 16);
  }
}
