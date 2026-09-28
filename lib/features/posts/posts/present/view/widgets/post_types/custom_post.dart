import 'package:flutter/material.dart';
import 'package:green/core/utils/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/utils/app_colors.dart';
import '../../../../data/models/posts_res_model.dart';
import '../expandable_text.dart';
import '../video_preview/video_preview_selector.dart';

class CustomPost extends StatefulWidget {
  const CustomPost({super.key, required this.post});
  final Post post;
  @override
  State<CustomPost> createState() => _CustomPostState();
}

class _CustomPostState extends State<CustomPost> {
  bool showVideo = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.post.postable?.content != null) ...[
          const SizedBox(height: 12),
          ExpandableText(
            text: widget.post.postable?.content ?? '',
            style: TextStyles.bold16,
          ),
        ],
        if (widget.post.postable?.image != null) ...[
          const SizedBox(height: 12),
          //CustomImagePost(image: widget.post.postable?.image),
        ],
        if (widget.post.postable?.video != null) ...[
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: showVideo
                ? AspectRatio(
                    aspectRatio: 16 / 9,
                    child: VideoPreviewSelector(
                      videoBytes: null,
                      videoUrl: widget.post.postable?.video ?? '',
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        showVideo = true;
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        widget.post.postable?.thumbnailUrl != null
                            ? Image.network(
                                widget.post.postable!.thumbnailUrl!,
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.broken_image,
                                    color: Colors.grey,
                                  );
                                },
                              )
                            : Container(
                                width: double.infinity,
                                height: 200,
                                color: Colors.black12,
                              ),
                        const Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                          size: 64,
                        ),
                      ],
                    ),
                  ),
          ),
        ],
        if (widget.post.postable?.pdf != null) ...[
          const SizedBox(height: 12),
          InkWell(
            onTap: () async {
              final pdfUrl = widget.post.postable?.pdf;
              final uri = Uri.parse(pdfUrl!);
              await launchUrl(uri, mode: .externalApplication);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.darkGreyColor),
              ),
              child: Row(
                children: [
                  const Icon(Icons.picture_as_pdf, color: Colors.red, size: 40),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      widget.post.postable?.pdfName ?? "ملف PDF مرفق",
                      style: TextStyles.medium14.copyWith(
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }
}
