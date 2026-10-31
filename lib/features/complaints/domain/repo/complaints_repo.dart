import '../entities/complaint_entity.dart';

abstract class ComplaintsRepo {
  Future<List<ComplaintEntity>> getComplaints();
  Future<void> createComplaint(ComplaintEntity complaint);
}
