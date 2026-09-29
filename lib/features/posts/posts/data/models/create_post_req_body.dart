import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/post_type.dart';
import 'create_occasion_req_body.dart';
import 'create_poll_req_body.dart';
import 'create_serv_req_req_body.dart';
part 'create_post_req_body.freezed.dart';
part 'create_post_req_body.g.dart';

@freezed
abstract class CreatePostReqBody with _$CreatePostReqBody {
  const factory CreatePostReqBody({
    @JsonKey(name: "type") PostType? type,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "post_id") int? postId,
    @JsonKey(ignore: true) Uint8List? image,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(ignore: true) Uint8List? video,
    @JsonKey(name: "video_url") String? videoUrl,
    @JsonKey(name: "pdf_name") String? pdfName,
    @JsonKey(ignore: true) Uint8List? pdf,
    bool? hasDraft,
    @JsonKey(name: "pdf_url") String? pdfUrl,
    @JsonKey(name: "original_post_id") int? originalPostId,
    @JsonKey(name: "publish_at", includeIfNull: false) String? publishAt,
    @JsonKey(ignore: true)
    @Default(CreateOccasionReqBody())
    CreateOccasionReqBody createOccasionReqBody,
    @JsonKey(ignore: true)
    @Default(CreateServReqReqBody())
    CreateServReqReqBody createServReqReqBody,
    @JsonKey(ignore: true) @Default(CreatePollReqBody()) CreatePollReqBody poll,
    @JsonKey(ignore: true) NewsCompanySocialBody? newsCompanySocial,
  }) = _CreatePostReqBody;
  factory CreatePostReqBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePostReqBodyFromJson(json);
  static CreatePostReqBody empty() => const CreatePostReqBody();
}

extension CreatePostReqModelX on CreatePostReqBody {
  bool hasContent() {
    return content != null || content!.isNotEmpty;
  }

  bool get hasContentToPost {
    final hasContent = content != null && content!.trim().isNotEmpty;
    final hasImage = image != null;
    final hasVideo = video != null;
    final hasPdf = pdf != null;
    return hasContent || hasImage || hasVideo || hasPdf;
  }

  Future<FormData> toFormData() async {
    final formData = FormData();
    if (type != null) {
      formData.fields.add(MapEntry("type", type!.name));
    }
    if (content != null) {
      formData.fields.add(MapEntry("content", content!));
    }
    if (postId != null) {
      formData.fields.add(MapEntry("post_id", postId.toString()));
    }
    if (publishAt != null) {
      formData.fields.add(MapEntry("publish_at", publishAt!));
    }
    if (image != null) {
      formData.files.add(
        MapEntry(
          "image",
          MultipartFile.fromBytes(image!, filename: "image.jpg"),
        ),
      );
    }

    if (video != null) {
      formData.files.add(
        MapEntry(
          "video",
          MultipartFile.fromBytes(video!, filename: "video.mp4"),
        ),
      );
    }

    if (pdf != null) {
      formData.files.add(
        MapEntry("pdf", MultipartFile.fromBytes(pdf!, filename: "file.pdf")),
      );
    }
    if (pdfName != null) {
      formData.fields.add(MapEntry("pdf_name", pdfName!));
    }
    // Handling specific types
    switch (type) {
      case PostType.occasion:
        final oc = createOccasionReqBody;
        if (oc.image != null) {
          formData.files.add(
            MapEntry(
              "occasion[image]",
              MultipartFile.fromBytes(oc.image!, filename: "occasion.jpg"),
            ),
          );
        }
        if (oc.title != null) {
          formData.fields.add(MapEntry("occasion[title]", oc.title!));
        }
        if (oc.description != null) {
          formData.fields.add(
            MapEntry("occasion[description]", oc.description!),
          );
        }
        if (oc.link != null) {
          formData.fields.add(MapEntry("occasion[link]", oc.link!));
        }
        if (oc.startAt != null) {
          formData.fields.add(
            MapEntry("occasion[start_at]", oc.startAt!.toIso8601String()),
          );
        }
        if (oc.endAt != null) {
          formData.fields.add(
            MapEntry("occasion[end_at]", oc.endAt!.toIso8601String()),
          );
        }
        break;
      case PostType.poll:
        final pl = poll;
        if (pl.options.isNotEmpty == true) {
          final nonEmptyOptions = pl.options
              .where((option) => option.trim().isNotEmpty)
              .toList();
          for (int i = 0; i < nonEmptyOptions.length; i++) {
            formData.fields.add(
              MapEntry("poll[options][$i]", nonEmptyOptions[i]),
            );
          }
        }
        break;
      case PostType.sharedPost:
        if (originalPostId != null) {
          formData.fields.add(
            MapEntry("original_post_id", originalPostId.toString()),
          );
        }
        break;

      case PostType.post:
        final ncs = newsCompanySocial;
        final prefix = type?.name ?? "";
        if (ncs != null) {
          if (ncs.image != null) {
            formData.files.add(
              MapEntry(
                "$prefix[image]",
                MultipartFile.fromBytes(ncs.image!, filename: "$prefix.jpg"),
              ),
            );
          }
          if (ncs.title != null) {
            formData.fields.add(MapEntry("$prefix[title]", ncs.title!));
          }
          if (ncs.description != null) {
            formData.fields.add(
              MapEntry("$prefix[description]", ncs.description!),
            );
          }
          if (ncs.link != null) {
            formData.fields.add(MapEntry("$prefix[link]", ncs.link!));
          }
        }
        break;
      case PostType.scheduled:
      case PostType.draft:
      case null:
        break;
    }

    return formData;
  }
}

class NewsCompanySocialBody {
  final String? title;
  final String? description;
  final String? link;
  final Uint8List? image;

  NewsCompanySocialBody({this.title, this.description, this.link, this.image});
}
