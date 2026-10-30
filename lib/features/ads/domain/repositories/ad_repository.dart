import 'package:flutter/widgets.dart';

abstract class AdRepository {
  Future<void> initialize();
  void showInterstitialAd();
  Widget getBannerAdWidget();
}
