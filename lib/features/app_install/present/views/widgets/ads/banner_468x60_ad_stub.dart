import 'package:flutter/material.dart';

class Banner468x60Ad extends StatelessWidget {
  const Banner468x60Ad({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class AdSenseInFeedWidget extends StatelessWidget {
  final String adSlot;
  final String? layoutKey;

  const AdSenseInFeedWidget({super.key, required this.adSlot, this.layoutKey});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
