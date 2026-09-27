part of 'location_bloc.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.determinePosition() = _DeterminePosition;
  const factory LocationEvent.selectPoint({required LatLng point}) =
      _SelectPoint;
}
