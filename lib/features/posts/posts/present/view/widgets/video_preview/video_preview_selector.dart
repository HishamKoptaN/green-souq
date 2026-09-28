import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'web_video_preview.dart';
import 'custom_video_preview.dart';

class VideoPreviewSelector extends StatelessWidget {
  final Uint8List? videoBytes;
  final String? videoUrl;

  const VideoPreviewSelector({
    super.key,
    required this.videoBytes,
    required this.videoUrl,
  });
  @override
  Widget build(BuildContext context,) {
    if (kIsWeb) {
      if (videoBytes == null && (videoUrl == null || videoUrl!.isEmpty)) {
        return const SizedBox.shrink();
      }
      return WebVideoPreview(
        videoBytes: videoBytes,
        videoUrl: videoUrl,
      );
    } else {
      if (videoBytes == null) {
        return const SizedBox.shrink();
      }
      return CustomVideoPreview(
        videoBytes: videoBytes!,
      );
    }
  }
}
