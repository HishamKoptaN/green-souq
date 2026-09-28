import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_occasion_req_body.freezed.dart';
part 'create_occasion_req_body.g.dart';

@freezed
abstract class CreateOccasionReqBody with _$CreateOccasionReqBody {
  const factory CreateOccasionReqBody({
    @JsonKey(ignore: true) Uint8List? image,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "link") String? link,
    @JsonKey(name: "start_at") DateTime? startAt,
    @JsonKey(name: "end_at") DateTime? endAt,
    @JsonKey(name: "acceptTermsAndConditions") bool? acceptTermsAndConditions,
  }) = _CreateOccasionReqBody;
  factory CreateOccasionReqBody.fromJson(Map<String, dynamic> json) =>
      _$CreateOccasionReqBodyFromJson(json);
  static CreateOccasionReqBody empty() => const CreateOccasionReqBody();
}

extension CreateOccasionReqBodyValidator on CreateOccasionReqBody {
  bool isValid() {
    final hasImage = image != null;
    final hasTitle = title != null && title!.trim().isNotEmpty;
    final hasDesc = description != null && description!.trim().isNotEmpty;
    final hasLink = link != null && link!.trim().isNotEmpty;
    final accepted = acceptTermsAndConditions == true;
    final hasStart = startAt != null;
    final hasEnd = endAt != null;
    return hasImage &&
        hasTitle &&
        hasDesc &&
        hasLink &&
        accepted &&
        hasStart &&
        hasEnd;
  }

  bool hasAnyData() {
    return image != null ||
        (title?.trim().isNotEmpty ?? false) ||
        (description?.trim().isNotEmpty ?? false) ||
        (link?.trim().isNotEmpty ?? false) ||
        acceptTermsAndConditions == true ||
        startAt != null ||
        endAt != null;
  }
}
