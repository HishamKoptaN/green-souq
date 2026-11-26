import 'package:injectable/injectable.dart';

import '../entities/suggestion_entity.dart';
import '../repo/suggestions_repo.dart';

abstract interface class CreateSuggestionUseCaseContract {
  Future<void> call(SuggestionEntity suggestion);
}

@lazySingleton
class CreateSuggestionUseCase implements CreateSuggestionUseCaseContract {
  final SuggestionsRepo _repo;

  CreateSuggestionUseCase(this._repo);

  @override
  Future<void> call(SuggestionEntity suggestion) async {
    return await _repo.createSuggestion(suggestion);
  }
}
