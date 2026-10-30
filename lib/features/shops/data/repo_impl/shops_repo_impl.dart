import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:green/core/mapper/meta_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/bus_events/app_event_bus.dart';
import '../../../../core/bus_events/global_events.dart';
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

  ShopsRepoImpl(this.api, this.locationRepo) {
    AppEventBus.on<RatingUpdatedEvent>().listen((event) {
      if (event.rateableType == 'user') {
        log('arrived user');
        _updateLocalRating(storeId: event.rateableId, newRating: event.newRating);
      }
    });
  }

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
          if (userLocation == null || (lat == 0 && lng == 0)) return shop;
          final distance = (Geolocator.distanceBetween(
                        userLocation.latitude,
                        userLocation.longitude,
                        lat,
                        lng,
                      ) /
                      1000)
              .toStringAsFixed(1);
          return shop.copyWith(distance: distance);
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
            ...res.shops?.map((e) => e.toEntity()) ?? [],
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
  Future<ExecuteGuard<void>> show({required int id}) async {
    try {
      return await api.show(id: id.toString()).then((result) {
        _nots$.add(_nots$.value.copyWith(shopDetails: result.toEntity()));
        return .success(data: null);
      });
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  void _updateLocalRating({required int storeId, required int newRating}) {
    _nots$.add(
      _nots$.value.copyWith(
        shopDetails: _nots$.value.shopDetails.copyWith(rating: newRating),
      ),
    );
  }
}
