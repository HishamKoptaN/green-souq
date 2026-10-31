import '../../domain/entities/complaint_entity.dart';
import '../../domain/repo/complaints_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetComplaintsUseCase {
  final ComplaintsRepo _repo;

  GetComplaintsUseCase(this._repo);

  Future<List<ComplaintEntity>> call() async {
    return await _repo.getComplaints();
  }
}
