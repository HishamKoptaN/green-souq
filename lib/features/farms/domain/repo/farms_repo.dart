import 'package:error_handler/error_handler.dart';
import '../entities/farm_entity.dart';

abstract class FarmsRepo {
  Future<ExecuteGuard<List<FarmEntity>>> getFarms();
  Future<ExecuteGuard<void>> addFarm(FarmEntity farm);
}
