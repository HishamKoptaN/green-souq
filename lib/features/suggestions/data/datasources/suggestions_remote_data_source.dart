import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../models/suggestion_model.dart';

abstract class SuggestionsRemoteDataSource {
  Future<List<SuggestionModel>> getSuggestions();
  Future<void> createSuggestion(SuggestionModel suggestion);
}

@LazySingleton(as: SuggestionsRemoteDataSource)
class SuggestionsRemoteDataSourceImpl implements SuggestionsRemoteDataSource {
  final FirebaseFirestore _firestore;

  SuggestionsRemoteDataSourceImpl(this._firestore);

  @override
  Future<List<SuggestionModel>> getSuggestions() async {
    final querySnapshot = await _firestore
        .collection('suggestions')
        .orderBy('createdAt', descending: true)
        .get();

    return querySnapshot.docs
        .map((doc) => SuggestionModel.fromMap(doc.data(), doc.id))
        .toList();
  }

  @override
  Future<void> createSuggestion(SuggestionModel suggestion) async {
    await _firestore.collection('suggestions').add(suggestion.toMap());
  }
}
