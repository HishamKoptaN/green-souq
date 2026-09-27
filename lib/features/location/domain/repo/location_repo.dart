import 'package:error_handler/error_handler.dart';
import 'package:latlong2/latlong.dart';

import '../entities/location_entity.dart';

abstract class LocationRepo {
  Stream<LocationEntity?> watch();
  Future<ExecuteGuard<void>> getLocation();
  Future<String> getPlaceName(LatLng point);
}
