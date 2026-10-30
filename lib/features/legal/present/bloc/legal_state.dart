import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/legal_content_entity.dart';

part 'legal_state.freezed.dart';

@freezed
abstract class LegalState with _$LegalState {
  const factory LegalState.initial() = _Initial;
  const factory LegalState.loading() = _Loading;
  const factory LegalState.loaded(LegalContentEntity entity) = _Loaded;
  const factory LegalState.error(String message) = _Error;
}
