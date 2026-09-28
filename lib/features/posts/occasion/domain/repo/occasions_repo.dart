import 'package:error_handler/error_handler.dart';

abstract class OcassionsRepo {
  Future<ExecuteGuard<void>> toggleOcassionInterest({required int? id});
}
