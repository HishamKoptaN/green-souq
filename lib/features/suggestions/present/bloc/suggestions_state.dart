import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/suggestion_entity.dart';

part 'suggestions_state.freezed.dart';

@freezed
abstract class SuggestionsState with _$SuggestionsState {
  const factory SuggestionsState.initial() = _Initial;
  const factory SuggestionsState.loading() = _Loading;
  const factory SuggestionsState.loaded(List<SuggestionEntity> suggestions) =
      _Loaded;
  const factory SuggestionsState.error(String message) = _Error;
}
