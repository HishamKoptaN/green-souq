import 'dart:typed_data';

String registerWebVideo({
  required Uint8List? videoBytes,
  required String? videoUrl,
}) {
  throw UnsupportedError(
    'This functionality is only available on the Web.',
  );
}

void disposeWebVideo(String viewId) {
  // no-op
}