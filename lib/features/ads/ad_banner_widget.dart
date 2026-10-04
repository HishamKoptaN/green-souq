import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_helper.dart';

class AdManager {
  static late final BaseAdService _instance;

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

  static BaseAdService get instance => _instance;
}

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

abstract class BaseAdService {
  Future<void> initialize();
  void showInterstitialAd();
  Widget getBannerAdWidget();
}

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

class AdBannerWidget extends StatefulWidget {
  const AdBannerWidget({super.key});

  @override
  State<AdBannerWidget> createState() => _AdBannerWidgetState();
}

class _AdBannerWidgetState extends State<AdBannerWidget> {
  BannerAd? _bannerAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
          debugPrint('فشل تحميل الإعلان: $err');
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isAdLoaded && _bannerAd != null) {
      return Container(
        decoration: BoxDecoration(borderRadius: .circular(12.r)),
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      );
    }
    return const SizedBox.shrink();
  }
}
