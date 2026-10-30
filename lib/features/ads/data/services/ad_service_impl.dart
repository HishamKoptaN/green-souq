import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../domain/repositories/ad_repository.dart';
import '../helpers/ad_helper.dart';

class AdManager {
  static late final AdRepository _instance;

  static Future<void> init() async {
    if (kIsWeb) {
      _instance = NoOpAdService();
    } else {
      _instance = MobileAdService();
    }

    try {
      await _instance.initialize();
    } catch (e) {
      _instance = NoOpAdService();
    }
  }

  static AdRepository get instance => _instance;
}

class NoOpAdService implements AdRepository {
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

class MobileAdService implements AdRepository {
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
