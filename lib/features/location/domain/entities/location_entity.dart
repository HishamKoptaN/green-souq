import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
part 'location_entity.freezed.dart';

@freezed
abstract class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    LatLng? currentLocation,
    @Default(LatLng(29.70, 31.260)) LatLng selectedPoint,
    @Default('لم يتم تحديد الموقع بعد..') String placeName,
  }) = _LocationEntity;
}
