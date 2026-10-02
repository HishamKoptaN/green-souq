import 'package:error_handler/error_handler.dart';

abstract class RatingsRepo {
  Future<ExecuteGuard<void>> rate({
    required int id,
    required String type,
    required int rating,
  });
}
