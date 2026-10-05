import 'dart:html' as html;
import 'dart:typed_data';
// ignore: undefined_prefixed_name
import 'dart:ui_web' as ui;
/// نخزن كل الفيديوهات التي تم تسجيلها
final Map<String, html.VideoElement> _registeredVideos = {};

String registerWebVideo({
  Uint8List? videoBytes,
  String? videoUrl,
}) {
  if (videoBytes == null && videoUrl == null) {
    throw ArgumentError('Either videoBytes or videoUrl must be provided.');
  }

  String finalUrl;
  if (videoBytes != null) {
    final blob = html.Blob([videoBytes], 'video/mp4');
    finalUrl = html.Url.createObjectUrlFromBlob(blob);
  } else {
    finalUrl = videoUrl!;
  }

  final viewId = 'videoElement-${finalUrl.hashCode}';

  final video = html.VideoElement()
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
  ui.platformViewRegistry.registerViewFactory(
    viewId,
    (int viewId) => video,
  );
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
