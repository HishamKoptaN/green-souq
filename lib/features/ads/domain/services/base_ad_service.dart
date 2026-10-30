import 'package:flutter/widgets.dart';

abstract class BaseAdService {
  Future<void> initialize();
  void showInterstitialAd();
  Widget getBannerAdWidget();
}
