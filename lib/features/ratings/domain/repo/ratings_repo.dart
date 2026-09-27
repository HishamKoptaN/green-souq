import 'package:error_handler/error_handler.dart';

abstract class RatingsRepo {
  Future<ExecuteGuard<void>> rate({required String id, required int rating});
}
