import 'package:flutter/foundation.dart';
import '../../domain/services/base_ad_service.dart';
import '../../data/services/no_op_ad_service.dart';
import '../../data/services/mobile_ad_service.dart';

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
