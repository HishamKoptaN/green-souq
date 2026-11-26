import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/complaint_model.dart';
import '../../domain/entities/complaint_entity.dart';
import '../../domain/repo/complaints_repo.dart';

abstract class ComplaintsRemoteDataSource {
  Future<List<ComplaintModel>> getComplaints(String userId);
  Future<void> createComplaint(ComplaintModel complaint);
}

@LazySingleton(as: ComplaintsRemoteDataSource)
class ComplaintsRemoteDataSourceImpl implements ComplaintsRemoteDataSource {
  final FirebaseFirestore _firestore;

  ComplaintsRemoteDataSourceImpl(this._firestore, FirebaseAuth auth);

  @override
  Future<List<ComplaintModel>> getComplaints(String userId) async {
    final snapshot = await _firestore
        .collection('complaints')
        .where('userId', isEqualTo: userId)
        .get();
    final complaints = snapshot.docs
        .map((doc) => ComplaintModel.fromMap(doc.data(), doc.id))
        .toList();
    complaints.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return complaints;
  }

  @override
  Future<void> createComplaint(ComplaintModel complaint) async {
    await _firestore.collection('complaints').add(complaint.toMap());
  }
}

@LazySingleton(as: ComplaintsRepo)
class ComplaintsRepoImpl implements ComplaintsRepo {
  final ComplaintsRemoteDataSource _remoteDataSource;
  final FirebaseAuth _auth;

  ComplaintsRepoImpl(this._remoteDataSource, this._auth);

  @override
  Future<List<ComplaintEntity>> getComplaints() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      return const <ComplaintEntity>[];
    }
    final models = await _remoteDataSource.getComplaints(userId);
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<void> createComplaint(ComplaintEntity complaint) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      throw StateError('Cannot create a complaint while signed out');
    }
    final model = ComplaintModel(
      id: complaint.id,
      title: complaint.title,
      description: complaint.description,
      createdAt: complaint.createdAt,
      userId: userId,
    );
    await _remoteDataSource.createComplaint(model);
  }
}
