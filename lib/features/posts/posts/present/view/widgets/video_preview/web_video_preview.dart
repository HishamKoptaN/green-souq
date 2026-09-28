import 'dart:typed_data';
// ignore: avoid_web_libraries_in_flutter
// ✅ هذا مهم جداً لتجنب الخطأ
// ignore: undefined_prefixed_name
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'web_video_helper_stub.dart'
    if (dart.library.html) 'web_video_helper_web.dart';

class WebVideoPreview extends StatefulWidget {
  final Uint8List? videoBytes;
  final String? videoUrl;

  const WebVideoPreview({
    super.key,
    required this.videoBytes,
    required this.videoUrl,
  });

  @override
  State<WebVideoPreview> createState() => _WebVideoPreviewState();
}

class _WebVideoPreviewState extends State<WebVideoPreview> {
  late final String viewId;

  @override
  void initState() {
    super.initState();
    if (widget.videoBytes != null) {
      viewId = registerWebVideo(
        videoBytes: widget.videoBytes!,
        videoUrl: null,
      );
    } else if (widget.videoUrl != null) {
      viewId = registerWebVideo(
        videoBytes: null,
        videoUrl: widget.videoUrl!,
      );
    } else {
      throw Exception('Either videoBytes or videoUrl must be provided.');
    }
  }

  @override
  void dispose() {
    disposeWebVideo(
      viewId,
    );
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: 300,
      child: HtmlElementView(
        viewType: viewId,
      ),
    );
  }
}
