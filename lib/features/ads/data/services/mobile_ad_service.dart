import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../domain/services/base_ad_service.dart';
import '../ad_helper.dart';

class MobileAdService implements BaseAdService {
  @override
  Future<void> initialize() async {
    await MobileAds.instance.initialize();
  }

  @override
  void showInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) => ad.show(),
        onAdFailedToLoad: (error) => debugPrint('Ad failed: $error'),
      ),
    );
  }

  @override
  Widget getBannerAdWidget() {
    return const SizedBox.shrink();
  }
}
