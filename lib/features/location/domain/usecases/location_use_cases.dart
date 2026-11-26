import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:latlong2/latlong.dart';

import '../entities/location_entity.dart';
import '../repo/location_repo.dart';

abstract interface class LocationUseCasesContract {
  Stream<LocationEntity?> watch();
  Future<ExecuteGuard<void>> getLocation();
  Future<String> getPlaceName(LatLng point);
}

@lazySingleton
class LocationUseCases implements LocationUseCasesContract {
  final LocationRepo locationRepo;
  LocationUseCases(this.locationRepo);
  @override
  Stream<LocationEntity?> watch() {
    return locationRepo.watch();
  }

  @override
  Future<ExecuteGuard<void>> getLocation() async {
    return await locationRepo.getLocation();
  }

  @override
  Future<String> getPlaceName(LatLng point) async {
    return await locationRepo.getPlaceName(point);
  }
}
