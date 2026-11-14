import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:go_router/go_router.dart';
import '../../../core/routing/require_sign_in.dart';
import '../../../core/widgets/forms/translated_text.dart';
import '../../auth/sign_in/present/views/sign_in_view.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/feedback/custom_error_widg.dart';
import '../../profile/present/bloc/profile_bloc.dart';
import 'drawer_user_info_card.dart';

class DrawerUserHeader extends StatelessWidget {
  const DrawerUserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    if (!isSignedIn) {
      return ListTile(
        leading: const Icon(Icons.person_outline),
        title: const TrText('أهلاً بك، زائر'),
        subtitle: const TrText('تسجيل الدخول'),
        onTap: () {
          context.go('/${SignInView.routeName}');
        },
      );
    }
    {
      return BlocBuilder<ProfileBloc, ProfileState>(
        bloc: getIt<ProfileBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (st) {
              return DrawerUserInfoCard(profile: st.profileState.profile!);
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
