import 'package:dartz/dartz.dart';
import 'package:error_handler/error_handler.dart';
import '../entities/farm_entity.dart';

abstract class FarmsRepo {
  Future<ExecuteGuard<List<FarmEntity>>> getFarms();
  Future<Either<Exception, void>> addFarm(FarmEntity farm);
}
