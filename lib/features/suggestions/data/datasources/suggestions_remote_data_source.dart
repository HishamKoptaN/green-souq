import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../models/suggestion_model.dart';

abstract class SuggestionsRemoteDataSource {
  Future<List<SuggestionModel>> getSuggestions(String userId);
  Future<void> createSuggestion(SuggestionModel suggestion);
}

@LazySingleton(as: SuggestionsRemoteDataSource)
class SuggestionsRemoteDataSourceImpl implements SuggestionsRemoteDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  SuggestionsRemoteDataSourceImpl(this._firestore, this._auth);

  @override
  Future<List<SuggestionModel>> getSuggestions(String userId) async {
    final snapshot = await _firestore
        .collection('suggestions')
        .where('userId', isEqualTo: userId)
        .get();
    final suggestions = snapshot.docs
        .map((doc) => SuggestionModel.fromMap(doc.data(), doc.id))
        .toList();
    suggestions.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return suggestions;
  }

  @override
  Future<void> createSuggestion(SuggestionModel suggestion) async {
    await _firestore.collection('suggestions').add(suggestion.toMap());
  }
}
