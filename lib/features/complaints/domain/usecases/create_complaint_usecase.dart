import '../../domain/entities/complaint_entity.dart';
import '../../domain/repo/complaints_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateComplaintUseCase {
  final ComplaintsRepo _repo;

  CreateComplaintUseCase(this._repo);

  Future<void> call(ComplaintEntity complaint) async {
    return await _repo.createComplaint(complaint);
  }
}
