import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../models/job_model.dart';

abstract class JobsFirebaseDataSource {
  Future<List<JobModel>> getJobs();
  Future<void> saveJob(JobModel job);
}

@LazySingleton(as: JobsFirebaseDataSource)
class JobsFirebaseDataSourceImpl implements JobsFirebaseDataSource {
  final FirebaseFirestore _firestore;

  JobsFirebaseDataSourceImpl(this._firestore);

  @override
  Future<List<JobModel>> getJobs() async {
    final snapshot = await _firestore.collection('jobs').get();
    return snapshot.docs.map((doc) {
      final data = doc.data();
      return JobModel.fromJson({...data, 'id': doc.id});
    }).toList();
  }

  @override
  Future<void> saveJob(JobModel job) async {
    await _firestore.collection('jobs').doc(job.id).set(job.toJson());
  }
}
