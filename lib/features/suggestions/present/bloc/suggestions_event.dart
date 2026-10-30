part of 'suggestions_bloc.dart';

@freezed
abstract class SuggestionsEvent with _$SuggestionsEvent {
  const factory SuggestionsEvent.started() = _Started;
  const factory SuggestionsEvent.create({
    required String title,
    required String description,
  }) = _Create;
}
