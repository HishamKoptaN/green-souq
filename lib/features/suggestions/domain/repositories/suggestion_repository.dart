import '../entities/suggestion_entity.dart';

abstract class SuggestionRepository {
  Future<List<SuggestionEntity>> getSuggestions();
  Future<void> createSuggestion(SuggestionEntity suggestion);
}
