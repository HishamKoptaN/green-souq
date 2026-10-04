import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/custom_error_widg.dart';
import '../../../../core/widgets/forms/translated_text.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/entities/profile_state_entity.dart';
import '../bloc/profile_bloc.dart';
import 'profile_body.dart';
import 'widgets/profile_sticky_dock.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scroll: true,
      appBar: AppBar(title: const TrText('الملف الشخصي الميداني')),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        bloc: getIt<ProfileBloc>(),
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              context.showSuccessSnackBar(title: 'تم تحديث الملف الشخصي بنجاح');
            },
            failure: (error) {
              context.showErrorSnackBar(title: error);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loaded: (st) {
              return Column(
                children: [
                  ProfileBody(
                    profileState: st.profileState,
                    formzSubmissionStatus: st.formzSubmissionStatus,
                    // onAvatarTap: () async {
                    //   final picked = await _imagePicker.pickImage(
                    //     source: .gallery,
                    //   );
                    //   if (picked != null) {
                    //     getIt<ProfileBloc>().add(
                    //       .dataChanged(
                    //         editedProfile: st.editableProfileReq.copyWith(
                    //           avatar: picked,
                    //         ),
                    //       ),
                    //     );
                    //   }
                    // },
                  ),
                  ProfileStickyDock(
                    formzSubmissionStatus: st.formzSubmissionStatus,
                    onCancel: () {
                      getIt<ProfileBloc>().add(
                        .dataChanged(
                          editedProfile: st.profileState.editedProfile,
                        ),
                      );
                    },
                  ),
                ],
              );
            },
            failure: (st) {
              return CustomErrorWidget(
                retryText: 'إعادة المحاولة',
                message: st.error,
                onRetry: () {
                  getIt<ProfileBloc>().add(const .getProfile());
                },
              );
            },
            orElse: () {
              return Skeletonizer(
                enabled: true,
                child: ProfileBody(
                  profileState: ProfileStateEntity(
                    profile: ProfileEntity(id: 0),
                  ),
                  formzSubmissionStatus: .initial,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
