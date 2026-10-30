import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../models/suggestion_model.dart';

abstract class SuggestionRemoteDataSource {
  Future<List<SuggestionModel>> getSuggestions();
  Future<void> createSuggestion(SuggestionModel suggestion);
}

@LazySingleton(as: SuggestionRemoteDataSource)
class SuggestionRemoteDataSourceImpl implements SuggestionRemoteDataSource {
  final FirebaseFirestore _firestore;

  SuggestionRemoteDataSourceImpl(this._firestore);

  @override
  Future<List<SuggestionModel>> getSuggestions() async {
    final snapshot = await _firestore.collection('suggestions').orderBy('createdAt', descending: true).get();
    return snapshot.docs.map((doc) {
      return SuggestionModel.fromMap(doc.data(), doc.id);
    }).toList();
  }

  @override
  Future<void> createSuggestion(SuggestionModel suggestion) async {
    await _firestore.collection('suggestions').add(suggestion.toMap());
  }
}
