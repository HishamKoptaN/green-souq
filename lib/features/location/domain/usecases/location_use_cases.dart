import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:latlong2/latlong.dart';

import '../entities/location_entity.dart';
import '../repo/location_repo.dart';

@lazySingleton
class LocationUseCases {
  final LocationRepo locationRepo;
  LocationUseCases(this.locationRepo);
  Stream<LocationEntity?> watch() {
    return locationRepo.watch();
  }

  Future<ExecuteGuard<void>> getLocation() async {
    return await locationRepo.getLocation();
  }
  Future<String> getPlaceName(LatLng point) async {
    return await locationRepo.getPlaceName(point);
  }
}
