import 'package:flutter/material.dart';
import 'package:green/core/utils/global_variable.dart';

import 'coming_soon_widget.dart';

void openComingSoonModal({required String title, required String desc}) {
  showModalBottomSheet(
    context: GlobalVariable.currentContext!,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return ComingSoonWidget(title: title, desc: desc);
    },
  );
}
