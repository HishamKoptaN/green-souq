import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/extensions/theme_ext.dart';
import '../../../home/present/view/home.dart';
import '../bloc/onboarding_bloc.dart';
import 'widgets/onboarding_bottom_bar.dart';
import 'widgets/onboarding_skip_button.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  static const String routeName = 'onboarding';

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _finish() {
    getIt<OnboardingBloc>().add(const .completed());
    context.go('/${HomeView.routeName}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: BlocBuilder<OnboardingBloc, OnboardingState>(
        bloc: getIt<OnboardingBloc>(),
        builder: (context, state) {
          return state.maybeWhen(
            ready: (slides, currentPageIndex, isCompleted) {
              final isLast = currentPageIndex == slides.length - 1;
              return Stack(
                fit: .expand,
                children: [
                  PageView.builder(
                    controller: _controller,
                    itemCount: slides.length,
                    onPageChanged: (index) {
                      getIt<OnboardingBloc>().add(
                        .pageChanged(pageIndex: index),
                      );
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slides[index].imagePath,
                        fit: .cover,
                        width: double.infinity,
                        height: double.infinity,
                      );
                    },
                  ),
                  Positioned(
                    top: 16.h,
                    left: 16.w,
                    child: OnboardingSkipButton(onSkip: _finish),
                  ),
                  Positioned(
                    left: 20.w,
                    right: 20.w,
                    bottom: 88.h,
                    child: OnboardingBottomBar(
                      count: slides.length,
                      currentIndex: currentPageIndex,
                      onNext: () {
                        if (isLast) {
                          _finish();
                          return;
                        }
                        _controller.animateToPage(
                          currentPageIndex + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                ],
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
