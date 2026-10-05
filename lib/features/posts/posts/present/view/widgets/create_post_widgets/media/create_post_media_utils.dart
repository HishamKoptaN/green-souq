import 'package:image_picker/image_picker.dart';

bool isVideoFile(XFile file) {
  final path = file.path.toLowerCase();
  final mimeType = file.mimeType?.toLowerCase() ?? '';
  if (mimeType.startsWith('video/')) return true;
  return path.endsWith('.mp4') ||
      path.endsWith('.mov') ||
      path.endsWith('.avi') ||
      path.endsWith('.mkv') ||
      path.endsWith('.webm') ||
      path.endsWith('.m4v') ||
      path.endsWith('.3gp');
}
