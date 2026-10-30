import 'package:injectable/injectable.dart';
import '../entities/suggestion_entity.dart';
import '../repositories/suggestion_repository.dart';

@lazySingleton
class CreateSuggestionUseCase {
  final SuggestionRepository _repository;

  CreateSuggestionUseCase(this._repository);

  Future<void> call(SuggestionEntity suggestion) async {
    return await _repository.createSuggestion(suggestion);
  }
}
