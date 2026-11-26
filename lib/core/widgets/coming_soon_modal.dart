import 'package:flutter/material.dart';
import 'package:green/core/utils/global_variable.dart';

import '../theme/extensions/theme_ext.dart';
import 'coming_soon_widget.dart';

void openComingSoonModal({required String title, required String desc}) {
  final context = GlobalVariable.currentContext!;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: context.colorScheme.surface.withValues(alpha: 0),
    builder: (context) {
      return ComingSoonWidget(title: title, desc: desc);
    },
  );
}
