import 'package:dartz/dartz.dart';
import '../entities/farm_entity.dart';

abstract class FarmsRepo {
  Future<Either<Exception, List<FarmEntity>>> getFarms();
  Future<Either<Exception, void>> addFarm(FarmEntity farm);
}
