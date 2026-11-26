import 'dart:js_interop';
import 'dart:typed_data';
// ignore: undefined_prefixed_name
import 'dart:ui_web' as ui;

import 'package:web/web.dart' as web;

/// نخزن كل الفيديوهات التي تم تسجيلها
final Map<String, web.HTMLVideoElement> _registeredVideos = {};

String registerWebVideo({Uint8List? videoBytes, String? videoUrl}) {
  if (videoBytes == null && videoUrl == null) {
    throw ArgumentError('Either videoBytes or videoUrl must be provided.');
  }

  String finalUrl;
  if (videoBytes != null) {
    final blob = web.Blob(
      [videoBytes.toJS].toJS,
      web.BlobPropertyBag(type: 'video/mp4'),
    );
    finalUrl = web.URL.createObjectURL(blob);
  } else {
    finalUrl = videoUrl!;
  }

  final viewId = 'videoElement-${finalUrl.hashCode}';

  final video = web.HTMLVideoElement()
    ..src = finalUrl
    ..controls = true
    ..autoplay = false
    ..style.borderRadius = '12px'
    ..style.width = '100%'
    ..style.height = '100%'
    ..style.objectFit = 'cover'
    ..setAttribute('playsinline', 'true');
  // حفظ المرجع
  _registeredVideos[viewId] = video;
  ui.platformViewRegistry.registerViewFactory(viewId, (int viewId) => video);
  return viewId;
}

/// دالة لإيقاف الفيديو عند الحاجة
void disposeWebVideo(String viewId) {
  final video = _registeredVideos[viewId];
  if (video != null) {
    video.pause();
    video.src = '';
    video.load();
    _registeredVideos.remove(viewId);
  }
}
