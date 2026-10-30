import 'package:injectable/injectable.dart';
import 'package:core/utils/guard/execute_guard.dart';
import '../entities/legal_content_entity.dart';
import '../repo/legal_repo.dart';

@lazySingleton
class GetLegalContentUseCase {
  const GetLegalContentUseCase(this._repo);

  final LegalRepo _repo;

  Future<ExecuteGuard<LegalContentEntity>> call(String type) async {
    {
      return await _repo.getLegalContent(type);
    }
  }
}
