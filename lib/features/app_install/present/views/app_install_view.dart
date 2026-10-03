import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/app_install_features_section.dart';
import '../widgets/app_install_guide_section.dart';
import '../widgets/app_install_hero_section.dart';
import '../widgets/app_install_pwa_section.dart';
import '../widgets/app_install_security_banner.dart';
import '../widgets/app_install_stores_section.dart';

class AppInstallView extends StatelessWidget {
  const AppInstallView({super.key});

  static const String routeName = 'install';

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            'تثبيت تطبيق السوق الأخضر',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: .symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: const [
              AppInstallHeroSection(),
              AppInstallSecurityBanner(),
              AppInstallFeaturesSection(),
              AppInstallStoresSection(),
              AppInstallPwaSection(),
              AppInstallGuideSection(),
            ],
          ),
        ),
      );
    }
  }
}
