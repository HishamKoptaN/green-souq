part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.loading() = _Loading;
  const factory LocationState.loaded({
    @Default(LatLng(29.70, 31.260)) LatLng selectedPoint,
    @Default('لم يتم تحديد الموقع بعد..') String placeName,
    LatLng? currentLocation,
    @Default(false) bool loading,
  }) = _Loaded;
  const factory LocationState.failure({required ErrorInfo errorInfo}) =
      _Failure;
}
