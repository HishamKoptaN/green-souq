import 'package:freezed_annotation/freezed_annotation.dart';

part '../../presentation/bloc/suggestions_event.freezed.dart';

@freezed
abstract class SuggestionsEvent with _$SuggestionsEvent {
  const factory SuggestionsEvent.fetch() = _Fetch;
  const factory SuggestionsEvent.create({
    required String title,
    required String description,
  }) = _Create;
}
