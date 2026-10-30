import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (kIsWeb) {
      return '';
    }
    if (Platform.isAndroid) {
      return 'ca-app-pub-6433776359670248/6716350459';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-6433776359670248/6716350459';
    } else {
      return '';
    }
  }
}
