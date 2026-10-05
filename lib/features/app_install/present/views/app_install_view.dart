import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/custom_scaffold.dart';

import 'widgets/features/app_install_features_section.dart';
import 'widgets/guide/app_install_guide_section.dart';
import 'widgets/hero/app_install_hero_section.dart';
import 'widgets/pwa/app_install_pwa_section.dart';
import 'widgets/stores/app_install_stores_section.dart';

class AppInstallView extends StatelessWidget {
  const AppInstallView({super.key});

  static const String routeName = 'install';

  @override
  Widget build(BuildContext context) {
    {
      return CustomScaffold(
        scroll: true,
        // backgroundColor: context.colorScheme.onPrimary,
        appBar: AppBar(
          // title: Text(
          //   'تثبيت تطبيق السوق الأخضر',
          //   style: context.textTheme.titleLarge?.copyWith(
          //     color: context.colorScheme.onSurface,
          //     fontWeight: .bold,
          //   ),
          // ),
          centerTitle: true,
          backgroundColor: context.colorScheme.surfaceContainerLowest,
          elevation: 0,
        ),
        body: Column(
          spacing: 16.h,
          children: const [
            AppInstallHeroSection(),
            AppInstallStoresSection(),
            // AppInstallPwaSection(),
            AppInstallFeaturesSection(),
            AppInstallGuideSection(),
          ],
        ),
      );
    }
  }
}
