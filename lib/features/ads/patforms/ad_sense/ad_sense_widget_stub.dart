import 'package:flutter/material.dart';

class AdSenseWidget extends StatelessWidget {
  final String adClient;
  final String adSlot;
  final double width;
  final double height;

  const AdSenseWidget({
    super.key,
    required this.adClient,
    required this.adSlot,
    this.width = 320,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
