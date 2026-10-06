import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/feedback/custom_error_widg.dart';
import '../../../../../custom_pagination_widget.dart';
import '../../../../posts/posts/present/bloc/posts_bloc.dart';
import '../../../domain/entities/profile_entity.dart';
import '../../bloc/profile_bloc.dart';
import 'widgets/profile_body.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    getIt<PostsBloc>().add(.watch(type: 'me', userId: null));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaginationWidget(
      bottomReachedCallback: () {
        getIt<PostsBloc>().add(const .fetchNext());
      },
      slivers: [
        SliverToBoxAdapter(
          child: BlocConsumer<ProfileBloc, ProfileState>(
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
                    formzSubmissionStatus: loadedState.formzSubmissionStatus,
                    profile: loadedState.profileState.profile,
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
                      profile: ProfileEntity(id: 0),
                      formzSubmissionStatus: .initial,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildDivider() {
    return const Divider(height: 1, indent: 16, endIndent: 16);
  }
}
