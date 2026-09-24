part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.loading() = _Loading;
  const factory LocationState.loaded({
    @Default(false) bool loading,
    @Default(LatLng(29.705642034112014, 31.260244920352523))
    LatLng selectedPoint,
  }) = _Loaded;
  const factory LocationState.failure({required ErrorInfo errorInfo}) =
      _Failure;
}
