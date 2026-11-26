import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/language/view/select_language.dart';
import '../../core/widgets/forms/translated_text.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  static const String routeName = 'start';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          // Positioned.fill(
          // child: Image.asset(
          // 'assets/images/start_back.png',
          // fit: BoxFit.cover,
          // ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TrText(
                          'مرحبا بك',
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: colors.onPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        TrText(
                          'في',
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: colors.onPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        Image.asset('assets/logos/full_logo.png'),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 49.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        FilledButton.icon(
                          onPressed: () {
                            context.push(SelectLanguageView.routeName);
                          },
                          icon: SvgPicture.asset(
                            'assets/icons/iconoir_language.svg',
                            width: 24,
                            height: 24,
                            colorFilter: ColorFilter.mode(
                              colors.onPrimary,
                              BlendMode.srcIn,
                            ),
                          ),
                          label: const TrText('اختر اللغة'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
