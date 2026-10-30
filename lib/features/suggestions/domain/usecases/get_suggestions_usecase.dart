import 'package:injectable/injectable.dart';
import '../entities/suggestion_entity.dart';
import '../repo/suggestions_repo.dart';

@lazySingleton
class GetSuggestionsUseCase {
  final SuggestionsRepo _repo;

  GetSuggestionsUseCase(this._repo);

  Future<List<SuggestionEntity>> call() async {
    return await _repo.getSuggestions();
  }
}
