import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_poll_req_body.freezed.dart';
part 'create_poll_req_body.g.dart';

@freezed
abstract class CreatePollReqBody with _$CreatePollReqBody {
  const factory CreatePollReqBody({
    @JsonKey(name: "period") int? period,
    @JsonKey(name: "options") @Default(["", ""]) List<String> options,
  }) = _CreatePollReqBody;
  factory CreatePollReqBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePollReqBodyFromJson(json);
  static CreatePollReqBody empty() => const CreatePollReqBody();
}

extension CreatePollReqBodyX on CreatePollReqBody {
  CreatePollReqBody addOption(String option) {
    if (option.trim().isEmpty || options.length >= 9) return this;
    return copyWith(options: [...options, option]);
  }

  CreatePollReqBody updateOption(int index, String newValue) {
    final newOptions = [...options];
    if (index < newOptions.length) {
      newOptions[index] = newValue;
    }
    return copyWith(options: newOptions);
  }

  CreatePollReqBody removeLastOption() {
    if (options.length <= 2) return this;
    return copyWith(options: options.sublist(0, options.length - 1));
  }

  bool isValid() {
    return period != null &&
        options.where((e) => e.trim().isNotEmpty).length >= 2;
  }

  bool hasAnyData({required String content}) {
    return period != null ||
        content.isNotEmpty ||
        options.any((e) => e.trim().isNotEmpty);
  }
}
