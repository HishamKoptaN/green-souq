import 'package:green/core/models/media_model.dart';

bool isVideoMedia(MediaModel media) {
  final path = media.filePath?.toLowerCase() ?? '';
  final fileType = media.fileType?.toLowerCase() ?? '';

  if (fileType == 'video' || fileType.startsWith('video/')) {
    return true;
  }

  return path.endsWith('.mp4') ||
      path.endsWith('.mov') ||
      path.endsWith('.avi') ||
      path.endsWith('.mkv') ||
      path.endsWith('.webm') ||
      path.endsWith('.m4v') ||
      path.endsWith('.3gp');
}

extension MediaModelExt on MediaModel {
  bool get isVideo => isVideoMedia(this);
}
