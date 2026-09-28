import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_serv_req_req_body.freezed.dart';
part 'create_serv_req_req_body.g.dart';

@freezed
abstract class CreateServReqReqBody with _$CreateServReqReqBody {
  const factory CreateServReqReqBody({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "details") String? details,
    @JsonKey(name: "specialization_id") int? specializationId,
  }) = _CreateServReqReqBody;
  factory CreateServReqReqBody.fromJson(Map<String, dynamic> json) =>
      _$CreateServReqReqBodyFromJson(json);
  static CreateServReqReqBody empty() => const CreateServReqReqBody();
}

extension CreateServReqReqBodyX on CreateServReqReqBody {
  bool? isValid() {
    final hasTitle = title != null && title!.trim().isNotEmpty;
    final hasDetails = details != null && details!.trim().isNotEmpty;
    final hasSpecialization = specializationId != null;

    return hasTitle && hasDetails && hasSpecialization;
  }

  bool? hasAnyData() {
    final hasTitle = title != null && title!.trim().isNotEmpty;
    final hasDetails = details != null && details!.trim().isNotEmpty;
    final hasSpecialization = specializationId != null;

    return hasTitle || hasDetails || hasSpecialization;
  }
}
