import 'package:universal_io/io.dart';

class AdHelper {
  static String get bannerAdUnitId {
    //if (kDebugMode) {
    //  return Platform.isAndroid
    //      ? 'ca-app-pub-3940256099942544/6300978111'
    //      : 'ca-app-pub-3940256099942544/2934735716';
    //}
    if (Platform.isAndroid) {
      return 'ca-app-pub-6433776359670248/6716350459';
    } else {
      throw UnsupportedError('Platform not supported');
    }
  }
}
