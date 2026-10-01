import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_req_entity.freezed.dart';

@freezed
abstract class UploadReqEntity with _$UploadReqEntity {
  const factory UploadReqEntity({
    required String provider,
    required File file,
    String? uploadUrl,
    String? filePath,
    String? contentType,
    dynamic overwrite,
    dynamic publicId,
    dynamic timestamp,
    String? apiKey,
    String? signature,
  }) = _UploadReqEntity;
}
