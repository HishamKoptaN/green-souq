import 'package:flutter/material.dart';

class HoverWrapper extends StatelessWidget {
  final Widget child;
  final MouseCursor cursor;

  const HoverWrapper({
    super.key,
    required this.child,
    this.cursor = SystemMouseCursors.click,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(cursor: cursor, child: child);
  }
}
