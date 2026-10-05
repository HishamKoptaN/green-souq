import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:video_player/video_player.dart';

class CustomVideoPreview extends StatefulWidget {
  final Uint8List videoBytes;

  const CustomVideoPreview({
    super.key,
    required this.videoBytes,
  });

  @override
  State<CustomVideoPreview> createState() => _CustomVideoPreviewState();
}

class _CustomVideoPreviewState extends State<CustomVideoPreview> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _saveVideoToFile().then(
      (filePath) {
        _videoPlayerController = VideoPlayerController.file(
          File(
            filePath,
          ),
        )..initialize().then(
            (_) {
              setState(
                () {},
              );
            },
          );
      },
    );
  }

  Future<String> _saveVideoToFile() async {
    final tempDir = await Directory.systemTemp.createTemp();
    final tempFile = File('${tempDir.path}/video.mp4');
    await tempFile.writeAsBytes(widget.videoBytes);
    return tempFile.path;
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context,) {
    if (_videoPlayerController.value.isInitialized) {
      return SizedBox(
        height: 300,
        child: VideoPlayer(
          _videoPlayerController,
        ),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
