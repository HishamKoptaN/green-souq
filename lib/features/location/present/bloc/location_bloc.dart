import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/location_use_cases.dart';
part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

@lazySingleton
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationUseCases locationUseCases;
  LocationBloc({required this.locationUseCases}) : super(const .loaded()) {
    on<LocationEvent>((event, emit) async {
      await event.when(
        determinePosition: () async {
          await state.mapOrNull(
            loaded: (st) async {
              try {
                emit(st.copyWith(loading: true));
                await locationUseCases.getLocation();
                await emit.forEach(
                  locationUseCases.watch(),
                  onData: (data) {
                    return st.copyWith(
                      currentLocation: data?.currentLocation,
                      placeName: data?.placeName ?? '',
                      loading: false,
                    );
                  },
                );
              } catch (e) {
                emit(.failure(errorInfo: ErrorHandler.handle(error: e)));
              }
            },
          );
        },
        selectPoint: (point) async {
          await state.mapOrNull(
            loaded: (st) async {
              try {
                emit(st.copyWith(loading: true));
                final placeName = await locationUseCases.getPlaceName(point);
                emit(
                  st.copyWith(
                    selectedPoint: point,
                    placeName: placeName.isNotEmpty ? placeName : st.placeName,
                    loading: false,
                  ),
                );
              } catch (e) {
                emit(.failure(errorInfo: ErrorHandler.handle(error: e)));
              }
            },
          );
        },
      );
    });
    add(const .determinePosition());
  }
}
