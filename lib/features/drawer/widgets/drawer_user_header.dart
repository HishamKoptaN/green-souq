import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/feedback/custom_error_widg.dart';
import '../../profile/present/bloc/profile_bloc.dart';
import 'drawer_user_info_card.dart';

class DrawerUserHeader extends StatelessWidget {
  const DrawerUserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    {
      return BlocBuilder<ProfileBloc, ProfileState>(
        bloc: getIt<ProfileBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (st) {
              return DrawerUserInfoCard(profile: st.editableProfileReq);
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
                child: SizedBox(height: 80.h),
              );
            },
          );
        },
      );
    }
  }
}
