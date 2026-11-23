import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../complaints/present/screens/complaints_screen.dart';
import '../../../suggestions/present/screens/suggestions_screen.dart';
import '../../service_tile.dart';

class SupportTiles extends StatelessWidget {
  const SupportTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ServiceTile(
          icon: Icons.feedback_outlined,
          title: 'الشكاوى',
          onTap: () {
            Navigator.of(context).pop();
            context.go(ComplaintsScreen.routeName);
          },
        ),
        ServiceTile(
          icon: Icons.lightbulb_outline,
          title: 'المقترحات',
          onTap: () {
            Navigator.of(context).pop();
            context.go(SuggestionsScreen.routeName);
          },
        ),
      ],
    );
  }
}
