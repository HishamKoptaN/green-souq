import 'package:flutter/material.dart';
import '../../domain/services/base_ad_service.dart';

class NoOpAdService implements BaseAdService {
  @override
  Future<void> initialize() async {}

  @override
  void showInterstitialAd() {
    debugPrint('الإعلانات غير مدعومة على هذه المنصة');
  }

  @override
  Widget getBannerAdWidget() {
    return const SizedBox.shrink();
  }
}
