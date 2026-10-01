import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'presigned_url_res_model.freezed.dart';
part 'presigned_url_res_model.g.dart';

@freezed
abstract class PresignedUrlResModel with _$PresignedUrlResModel {
  const factory PresignedUrlResModel({
    @JsonKey(name: 'provider') required String provider,
    @JsonKey(name: 'upload_url') String? uploadUrl,
    @JsonKey(name: 'file_path') String? filePath,
    @JsonKey(name: 'content_type') String? contentType,
    @JsonKey(name: 'overwrite') dynamic overwrite,
    @JsonKey(name: 'public_id') dynamic publicId,
    @JsonKey(name: 'timestamp') dynamic timestamp,
    @JsonKey(name: 'api_key') String? apiKey,
    @JsonKey(name: 'signature') String? signature,
  }) = _PresignedUrlResModel;

  factory PresignedUrlResModel.fromJson(Map<String, Object?> json) =>
      _$PresignedUrlResModelFromJson(json);
}
