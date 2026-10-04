import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/post_type.dart';
part 'create_post_req_body.freezed.dart';
part 'create_post_req_body.g.dart';

@freezed
abstract class CreatePostModel with _$CreatePostModel {
  const factory CreatePostModel({
    @JsonKey(name: "type") PostType? type,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "post_id") int? postId,
    @JsonKey(name: "media") List<Map<String, dynamic>>? media,
  }) = _CreatePostModel;
  factory CreatePostModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePostModelFromJson(json);
}

extension CreatePostReqModelX on CreatePostModel {
  bool hasContent() {
    return content != null || content!.isNotEmpty;
  }

  bool get hasContentToPost {
    final hasContent = content != null && content!.trim().isNotEmpty;
    return hasContent;
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
    if (media != null && media!.isNotEmpty) {
      for (int i = 0; i < media!.length; i++) {
        final item = media![i];
        if (item['path'] != null) {
          formData.fields.add(MapEntry("media[$i][path]", item['path']));
        }
        if (item['file_path'] != null) {
          formData.fields.add(
            MapEntry("media[$i][file_path]", item['file_path']),
          );
        }
        if (item['storage'] != null) {
          formData.fields.add(MapEntry("media[$i][storage]", item['storage']));
        }
        if (item['provider'] != null) {
          formData.fields.add(
            MapEntry("media[$i][provider]", item['provider']),
          );
        }
      }
    }
    switch (type) {
      case PostType.post:
      case null:
        break;
    }

    return formData;
  }
}
