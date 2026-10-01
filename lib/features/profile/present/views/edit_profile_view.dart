import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/custom_error_widg.dart';
import '../../../../core/widgets/forms/auth_text_form_field.dart';
import '../../../../core/widgets/forms/custom_phone_form_field.dart';
import '../../../../core/widgets/forms/translated_text.dart';
import '../../../../core/widgets/loading/custom_circular_progress.dart';
import '../bloc/profile_bloc.dart';
import 'profile_body.dart';
import 'widgets/profile_avatar.dart';

class EditProfileView extends StatelessWidget {
  EditProfileView({super.key});
  static const String routeName = 'edit-profile';
  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scroll: true,
      appBar: AppBar(title: TrText('تعديل بيانات الملف الشخصي')),
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
                crossAxisAlignment: .center,
                spacing: 4.h,
                children: [
                  ProfileAvatar(
                    path:
                        st.editableProfileReq.avatar?.path ??
                        st.editableProfileReq.avatarPath ??
                        '',
                    isEditing: true,
                    onEditImageTap: () async {
                      await _imagePicker.pickImage(source: .gallery).then((
                        pickedImage,
                      ) {
                        getIt<ProfileBloc>().add(
                          .dataChanged(
                            editableProfileReq: st.editableProfileReq.copyWith(
                              avatar: pickedImage,
                            ),
                          ),
                        );
                      });
                    },
                  ),
                  Gap(25.h),
                  CustomAuthTextFormField(
                    initialValue: st.editableProfileReq.name?.value,
                    labelText: 'ألاسم',
                    isRequired: true,
                    prefixIcon: Icon(Icons.person_rounded),
                    onChanged: (v) {
                      getIt<ProfileBloc>().add(
                        .dataChanged(
                          editableProfileReq: st.editableProfileReq.copyWith(
                            name: .dirty(value: v),
                          ),
                        ),
                      );
                    },
                  ),
                  CustomAuthTextFormField(
                    initialValue: st.editableProfileReq.bio,
                    prefixIcon: Icon(Icons.description_outlined),
                    labelText: 'نبذة عنك',
                    onChanged: (v) {
                      getIt<ProfileBloc>().add(
                        .dataChanged(
                          editableProfileReq: st.editableProfileReq.copyWith(
                            bio: v,
                          ),
                        ),
                      );
                    },
                  ),
                  CustomAuthTextFormField(
                    initialValue: st.editableProfileReq.address,
                    prefixIcon: Icon(Icons.location_on),
                    labelText: 'العنوان',
                    onChanged: (v) {
                      getIt<ProfileBloc>().add(
                        .dataChanged(
                          editableProfileReq: st.editableProfileReq.copyWith(
                            address: v,
                          ),
                        ),
                      );
                    },
                  ),
                  CustomPhoneFormField(
                    labelText: 'رقم الموبايل',
                    isRequired: true,
                    onChanged: (v) {
                      getIt<ProfileBloc>().add(
                        .dataChanged(
                          editableProfileReq: st.editableProfileReq.copyWith(
                            phone: v.completeNumber,
                          ),
                        ),
                      );
                    },
                  ),
                  Gap(50.h),
                  Row(
                    mainAxisAlignment: .center,
                    children: [
                      Expanded(
                        child: FilledButton.tonalIcon(
                          onPressed: st.formzSubmissionStatus.isSuccess
                              ? () {
                                  getIt<ProfileBloc>().add(
                                    const .updateProfile(),
                                  );
                                }
                              : null,
                          style: FilledButton.styleFrom(
                            maximumSize: Size(140.w, 36.h),
                            minimumSize: Size(140.w, 36.h),
                            shape: RoundedRectangleBorder(borderRadius: .zero),
                          ),
                          label: st.formzSubmissionStatus.isInProgress
                              ? const CustomCircularProgress()
                              : const TrText('حفظ'),
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            getIt<ProfileBloc>().add(
                              .dataChanged(
                                editableProfileReq:
                                    st.editableProfileReq.original ??
                                    st.editableProfileReq,
                              ),
                            );
                          },
                          style: FilledButton.styleFrom(
                            maximumSize: Size(140.w, 36.h),
                            minimumSize: Size(140.w, 36.h),
                            shape: RoundedRectangleBorder(borderRadius: .zero),
                          ),
                          label: const TrText('إلغاء'),
                          icon: const Icon(Icons.cancel),
                        ),
                      ),
                    ],
                  ),
                ],
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
                  editableProfile: null,
                  formzSubmissionStatus: .initial,
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget buildDivider() {
    return const Divider(height: 1, indent: 16, endIndent: 16);
  }
}
