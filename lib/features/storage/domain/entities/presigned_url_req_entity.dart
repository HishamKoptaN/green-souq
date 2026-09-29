import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'presigned_url_req_entity.freezed.dart';

@freezed
abstract class PresignedUrlReqEntity with _$PresignedUrlReqEntity {
  const factory PresignedUrlReqEntity({
    @JsonKey(name: 'extension') String? extensionProperty,
  }) = _PresignedUrlReqEntity;
}
