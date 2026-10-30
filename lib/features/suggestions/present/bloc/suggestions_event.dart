import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestions_event.freezed.dart';

@freezed
abstract class SuggestionsEvent with _$SuggestionsEvent {
  const factory SuggestionsEvent.create({
    required String title,
    required String description,
  }) = _Create;

