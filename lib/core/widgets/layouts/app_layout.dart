import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../language/view/select_language.dart';
import '../../theme/extensions/theme_ext.dart';
import '../forms/translated_text.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({
    super.key,
    required this.route,
    required this.body,
    required this.showAppBar,
    this.backArow = true,
  });
  final String route;
  final Widget body;
  final bool showAppBar;
  final bool backArow;

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: widget.showAppBar
          ? AppBar(
              backgroundColor: context.colorScheme.surface,
              elevation: 0,
              leading: widget.backArow
                  ? IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: context.colorScheme.onSurface,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  : null,
              title: TrText(
                widget.route,
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.colorScheme.onSurface,
                ),
              ),
              centerTitle: true,
              actions: const [LanguageIconButton(), SizedBox(width: 8)],
            )
          : null,
      body: widget.body,
    );
  }
}

class LanguageIconButton extends StatelessWidget {
  const LanguageIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.language, color: context.colorScheme.onSurface),
      onPressed: () {
        context.goNamed(SelectLanguageView.routeName);
      },
    );
  }
}
