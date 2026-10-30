import 'package:injectable/injectable.dart';
import '../../domain/entities/suggestion_entity.dart';
import '../../domain/repo/suggestions_repo.dart';
import '../datasources/suggestions_remote_data_source.dart';
import '../models/suggestion_model.dart';

@LazySingleton(as: SuggestionsRepo)
class SuggestionsRepoImpl implements SuggestionsRepo {
  final SuggestionsRemoteDataSource _remoteDataSource;

  SuggestionsRepoImpl(this._remoteDataSource);

  @override
  Future<List<SuggestionEntity>> getSuggestions() async {
    return await _remoteDataSource.getSuggestions();
  }

  @override
  Future<void> createSuggestion(SuggestionEntity suggestion) async {
    final model = SuggestionModel(
      id: suggestion.id,
      title: suggestion.title,
      description: suggestion.description,
      createdAt: suggestion.createdAt,
    );
    await _remoteDataSource.createSuggestion(model);
  }
}
