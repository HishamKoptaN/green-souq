import 'package:geolocator/geolocator.dart';
import 'package:green/core/mapper/meta_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:rxdart/rxdart.dart';

import '../../../location/domain/entities/location_entity.dart';
import '../../../location/domain/repo/location_repo.dart';
import '../../domain/entities/shops_res_entity.dart';
import '../../domain/repo/shops_repo.dart';
import '../datasources/shops_api.dart';
import '../mappers/shop_mapper.dart';

@Singleton(as: ShopsRepo)
class ShopsRepoImpl implements ShopsRepo {
  final ShopsApi api;
  final LocationRepo locationRepo;

  ShopsRepoImpl(this.api, this.locationRepo);
  final _nots$ = BehaviorSubject<ShopsResEntity>.seeded(ShopsResEntity());
  @override
  Stream<ShopsResEntity> watch() {
    return Rx.combineLatest2<ShopsResEntity, LocationEntity?, ShopsResEntity>(
      _nots$.stream,
      locationRepo.watch(),
      (shopsEntity, locationEntity) {
        final userLocation = locationEntity?.currentLocation;
        final updatedShops = shopsEntity.shops.map((shop) {
          final lat = double.tryParse(shop.latitude ?? '') ?? 0;
          final lng = double.tryParse(shop.longitude ?? '') ?? 0;
          if (userLocation == null || (lat == 0 && lng == 0)) {
            return shop;
          }
          final distanceInMeters = Geolocator.distanceBetween(
            userLocation.latitude,
            userLocation.longitude,
            lat,
            lng,
          );
          final distanceKm = distanceInMeters / 1000;
          return shop.copyWith(distance: distanceKm.toStringAsFixed(1));
        }).toList();
        updatedShops.sort((a, b) {
          return (double.tryParse(a.distance) ?? .infinity).compareTo(
            .tryParse(b.distance) ?? double.infinity,
          );
        });
        return shopsEntity.copyWith(shops: updatedShops);
      },
    ).distinct();
  }

  @override
  Future<ExecuteGuard<void>> getShops({int? page, String? query}) async {
    try {
      final res = await api.getShops(page: page, query: query);
      final isFirstPage = page == null || page == 1;
      _nots$.add(
        _nots$.value.copyWith(
          shops: [
            if (!isFirstPage) ..._nots$.value.shops,
            ...res.shops?.map((e) {
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

  @override
  Future<ExecuteGuard<void>> recordVisit({required String id}) async {
    try {
      await api.recordVisit(id);
      return const .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
