import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../data/models/complaint_model.dart';
import '../../domain/entities/complaint_entity.dart';
import '../../domain/repo/complaints_repo.dart';

abstract class ComplaintsRemoteDataSource {
  Future<List<ComplaintModel>> getComplaints();
  Future<void> createComplaint(ComplaintModel complaint);
}

@LazySingleton(as: ComplaintsRemoteDataSource)
class ComplaintsRemoteDataSourceImpl implements ComplaintsRemoteDataSource {
  final FirebaseFirestore _firestore;

  ComplaintsRemoteDataSourceImpl(this._firestore);

  @override
  Future<List<ComplaintModel>> getComplaints() async {
    final snapshot = await _firestore
        .collection('complaints')
        .orderBy('createdAt', descending: true)
        .get();
    return snapshot.docs.map((doc) {
      return ComplaintModel.fromMap(doc.data(), doc.id);
    }).toList();
  }

  @override
  Future<void> createComplaint(ComplaintModel complaint) async {
    await _firestore.collection('complaints').add(complaint.toMap());
  }
}

@LazySingleton(as: ComplaintsRepo)
class ComplaintsRepoImpl implements ComplaintsRepo {
  final ComplaintsRemoteDataSource _remoteDataSource;

  ComplaintsRepoImpl(this._remoteDataSource);

  @override
  Future<List<ComplaintEntity>> getComplaints() async {
    return await _remoteDataSource.getComplaints();
  }

  @override
  Future<void> createComplaint(ComplaintEntity complaint) async {
    final model = ComplaintModel(
      id: complaint.id,
      title: complaint.title,
      description: complaint.description,
      createdAt: complaint.createdAt,
    );
    await _remoteDataSource.createComplaint(model);
  }
}
