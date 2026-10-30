import 'package:freezed_annotation/freezed_annotation.dart';

part 'legal_event.freezed.dart';

@freezed
abstract class LegalEvent with _$LegalEvent {
  const factory LegalEvent.started(String type) = _Started;
}
