import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/custom_error_widg.dart';
import '../../../posts/posts/present/bloc/posts_bloc.dart';
import '../bloc/profile_bloc.dart';
import 'profile_body.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    // getIt<PostsBloc>().add(.getPosts(type: 'me', userId: null));
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      getIt<PostsBloc>().state.mapOrNull(
        loaded: (st) {
          if (st.postsRes.meta.hasNextPage && !st.isCreatePostLoading) {
            // getIt<PostsBloc>().add(.getPosts(type: 'me', userId: null));
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
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
                    editableProfile: loadedState.editableProfileReq,
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
        ),
      ],
    );
  }

  Widget buildDivider() {
    return const Divider(height: 1, indent: 16, endIndent: 16);
  }
}
