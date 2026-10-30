import 'package:core/utils/guard/execute_guard.dart';
import '../entities/legal_content_entity.dart';

abstract class LegalRepo {
  Future<ExecuteGuard<LegalContentEntity>> getLegalContent(String type);
}
