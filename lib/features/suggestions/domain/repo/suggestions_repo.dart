import '../entities/suggestion_entity.dart';

abstract class SuggestionsRepo {
  Future<List<SuggestionEntity>> getSuggestions();
  Future<void> createSuggestion(SuggestionEntity suggestion);
}
