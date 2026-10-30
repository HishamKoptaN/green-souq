import 'package:injectable/injectable.dart';
import '../../domain/entities/suggestion_entity.dart';
import '../../domain/repositories/suggestion_repository.dart';
import '../datasources/suggestion_remote_datasource.dart';
import '../models/suggestion_model.dart';

@LazySingleton(as: SuggestionRepository)
class SuggestionRepositoryImpl implements SuggestionRepository {
  final SuggestionRemoteDataSource _remoteDataSource;

  SuggestionRepositoryImpl(this._remoteDataSource);

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
