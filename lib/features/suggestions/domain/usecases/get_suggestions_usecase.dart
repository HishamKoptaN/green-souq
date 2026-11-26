import 'package:injectable/injectable.dart';

import '../entities/suggestion_entity.dart';
import '../repo/suggestions_repo.dart';

abstract interface class GetSuggestionsUseCaseContract {
  Future<List<SuggestionEntity>> call();
}

@lazySingleton
class GetSuggestionsUseCase implements GetSuggestionsUseCaseContract {
  final SuggestionsRepo _repo;

  GetSuggestionsUseCase(this._repo);

  @override
  Future<List<SuggestionEntity>> call() async {
    return await _repo.getSuggestions();
  }
}
