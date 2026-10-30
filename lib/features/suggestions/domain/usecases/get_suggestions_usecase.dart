import 'package:injectable/injectable.dart';
import '../entities/suggestion_entity.dart';
import '../repositories/suggestion_repository.dart';

@lazySingleton
class GetSuggestionsUseCase {
  final SuggestionRepository _repository;

  GetSuggestionsUseCase(this._repository);

  Future<List<SuggestionEntity>> call() async {
    return await _repository.getSuggestions();
  }
}
