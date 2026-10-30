import 'package:injectable/injectable.dart';
import '../entities/suggestion_entity.dart';
import '../repo/suggestions_repo.dart';

@lazySingleton
class CreateSuggestionUseCase {
  final SuggestionsRepo _repo;

  CreateSuggestionUseCase(this._repo);

  Future<void> call(SuggestionEntity suggestion) async {
    return await _repo.createSuggestion(suggestion);
  }
}
