import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/forms/translated_text.dart';
import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../../home/present/view/home.dart';
import '../../../onboarding/present/bloc/onboarding_bloc.dart';
import '../bloc/role_intro_cubit.dart';
import 'widgets/role_intro_benefit_card.dart';
import 'widgets/role_intro_bottom_bar.dart';
import 'widgets/role_intro_header.dart';

/// شاشة تعريفية مخصصة لكل نوع مستخدم، مبنية من تصاميم Stitch.
class RoleIntroView extends StatefulWidget {
  const RoleIntroView({super.key, required this.userType});

  final UserType userType;

  @override
  State<RoleIntroView> createState() => _RoleIntroViewState();
}

class _RoleIntroViewState extends State<RoleIntroView> {
  late final RoleIntroCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<RoleIntroCubit>(param1: widget.userType);
    _cubit.viewed();
  }

  void _continue() {
    getIt<OnboardingBloc>().add(const .completed());
    context.go('/${HomeView.routeName}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RoleIntroCubit, RoleIntroState>(
        bloc: _cubit,
        builder: (context, state) {
          final slide = state.slide;
          return SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final wide = constraints.maxWidth >= 900;
                final content = SingleChildScrollView(
                  padding: .symmetric(horizontal: 20.w, vertical: 16.h),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 680.w),
                    child: Column(
                      crossAxisAlignment: .start,
                      spacing: 12.h,
                      children: [
                        Align(
                          alignment: .centerLeft,
                          child: TextButton.icon(
                            onPressed: _continue,
                            icon: const FaIcon(FontAwesomeIcons.xmark, size: 14),
                            label: const TrText('تخطي'),
                          ),
                        ),
                        RoleIntroHeader(slide: slide),
                        for (final benefit in slide.benefits)
                          RoleIntroBenefitCard(benefit: benefit),
                        if (slide.footerNote != null)
                          Text(
                            slide.footerNote!,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        RoleIntroBottomBar(
                          slide: slide,
                          enabled: _cubit.canContinue,
                          onContinue: _continue,
                        ),
                      ],
                    ),
                  ),
                );
                if (!wide) {
                  return content;
                }
                return Row(
                  children: [
                    Expanded(child: content),
                    Container(width: 240.w, color: Theme.of(context).colorScheme.primaryContainer),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
