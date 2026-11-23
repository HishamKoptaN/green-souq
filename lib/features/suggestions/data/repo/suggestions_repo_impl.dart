import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/suggestion_entity.dart';
import '../../domain/repo/suggestions_repo.dart';
import '../datasources/suggestions_remote_data_source.dart';
import '../models/suggestion_model.dart';

@LazySingleton(as: SuggestionsRepo)
class SuggestionsRepoImpl implements SuggestionsRepo {
  final SuggestionsRemoteDataSource _remoteDataSource;
  final FirebaseAuth _auth;

  SuggestionsRepoImpl(this._remoteDataSource, this._auth);

  @override
  Future<List<SuggestionEntity>> getSuggestions() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      return const <SuggestionEntity>[];
    }
    return await _remoteDataSource.getSuggestions(userId);
  }

  @override
  Future<void> createSuggestion(SuggestionEntity suggestion) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      throw StateError('Cannot create a suggestion while signed out');
    }
    final model = SuggestionModel(
      id: suggestion.id,
      title: suggestion.title,
      description: suggestion.description,
      createdAt: suggestion.createdAt,
      userId: userId,
    );
    await _remoteDataSource.createSuggestion(model);
  }
}
