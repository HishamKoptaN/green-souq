import 'package:geolocator/geolocator.dart';
import 'package:green/core/mapper/meta_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:rxdart/rxdart.dart';

import '../../../location/domain/entities/location_entity.dart';
import '../../../location/domain/repo/location_repo.dart';
import '../../domain/entities/sales_engineers_res_entity.dart';
import '../../domain/repo/sales_engineers_repo.dart';
import '../datasources/sales_engineers_api.dart';
import '../mappers/sales_engineer_mapper.dart';

@Singleton(as: SalesEngineersRepo)
class SalesEngineersRepoImpl implements SalesEngineersRepo {
  final SalesEngineersApi api;
  final LocationRepo locationRepo;

  SalesEngineersRepoImpl(this.api, this.locationRepo);
  final _nots$ = BehaviorSubject<SalesEngineersResEntity>.seeded(
    SalesEngineersResEntity(),
  );
  @override
  Stream<SalesEngineersResEntity> watch() {
    return Rx.combineLatest2<
          SalesEngineersResEntity,
          LocationEntity?,
          SalesEngineersResEntity
        >(_nots$.stream, locationRepo.watch(), (
          salesEngineersEntity,
          locationEntity,
        ) {
          final userLocation = locationEntity?.currentLocation;
          final updatedEngineers = salesEngineersEntity.salesEngineers.map((
            engineer,
          ) {
            final lat = double.tryParse(engineer.latitude ?? '') ?? 0;
            final lng = double.tryParse(engineer.longitude ?? '') ?? 0;
            if (userLocation == null || (lat == 0 && lng == 0)) {
              return engineer;
            }
            final distanceInMeters = Geolocator.distanceBetween(
              userLocation.latitude,
              userLocation.longitude,
              lat,
              lng,
            );
            final distanceKm = distanceInMeters / 1000;
            return engineer.copyWith(distance: distanceKm.toStringAsFixed(1));
          }).toList();
          updatedEngineers.sort((a, b) {
            return (double.tryParse(a.distance) ?? .infinity).compareTo(
              .tryParse(b.distance) ?? double.infinity,
            );
          });
          return salesEngineersEntity.copyWith(
            salesEngineers: updatedEngineers,
          );
        })
        .distinct();
  }

  @override
  Future<ExecuteGuard<void>> getSalesEngineers({
    int? page,
    String? query,
  }) async {
    try {
      final res = await api.getSalesEngineers(page: page, query: query);
      final isFirstPage = page == null || page == 1;
      _nots$.add(
        _nots$.value.copyWith(
          salesEngineers: [
            if (!isFirstPage) ..._nots$.value.salesEngineers,
            ...res.salesEngineers?.map((e) {
                  return e.toEntity();
                }) ??
                [],
          ],
          meta: res.meta?.toEntity() ?? _nots$.value.meta,
        ),
      );
      return .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
