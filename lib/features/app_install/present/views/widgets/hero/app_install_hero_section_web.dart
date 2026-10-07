import 'package:flutter/foundation.dart';
import 'package:web/web.dart' as web;

Future<String> detectDeviceArchitecturePlatform() async {
  final window = web.window;
  final navigator = window.navigator;
  try {
    final uaData = (navigator as dynamic).userAgentData;
    if (uaData != null) {
      final highEntropyValues = await (uaData.getHighEntropyValues([
        'architecture',
        'bitness',
      ]) as Future);
      final arch =
          highEntropyValues['architecture']?.toString().toLowerCase() ?? '';
      final bitness = highEntropyValues['bitness']?.toString() ?? '';

      if (arch.contains('arm')) {
        return bitness == '64' ? 'arm64-v8a' : 'armeabi-v7a';
      } else if (arch.contains('x86')) {
        return bitness == '64' ? 'x86_64' : 'x86';
      }
    }
  } catch (e) {
    debugPrint('UserAgentData error: $e');
  }
  final userAgent = navigator.userAgent.toLowerCase();

  if (userAgent.contains('aarch64') || userAgent.contains('arm64')) {
    return 'arm64-v8a';
  } else if (userAgent.contains('armv7') || userAgent.contains('armeabi')) {
    return 'armeabi-v7a';
  }

  return 'arm64-v8a';
}
