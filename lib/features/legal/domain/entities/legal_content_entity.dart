import 'package:freezed_annotation/freezed_annotation.dart';

part 'legal_content_entity.freezed.dart';

@freezed
abstract class LegalContentEntity with _$LegalContentEntity {
  const factory LegalContentEntity({
    @Default('') String title,
    @Default('') String content,
  }) = _LegalContentEntity;
}
