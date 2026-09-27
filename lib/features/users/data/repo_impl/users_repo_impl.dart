import 'package:geolocator/geolocator.dart';
import 'package:green/core/mapper/meta_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:rxdart/rxdart.dart';

import '../../../location/domain/entities/location_entity.dart';
import '../../../location/domain/repo/location_repo.dart';
import '../../domain/entities/users_res_entity.dart';
import '../../domain/repo/users_repo.dart';
import '../datasources/users_api.dart';
import '../mappers/user_mapper.dart';

@Singleton(as: UsersRepo)
class UsersRepoImpl implements UsersRepo {
  final UsersApi api;
  final LocationRepo locationRepo;

  UsersRepoImpl(this.api, this.locationRepo);
  final _nots$ = BehaviorSubject<UsersResEntity>.seeded(UsersResEntity());
  @override
  Stream<UsersResEntity> watch() {
    return Rx.combineLatest2<UsersResEntity, LocationEntity?, UsersResEntity>(
      _nots$.stream,
      locationRepo.watch(),
      (usersEntity, locationEntity) {
        final userLocation = locationEntity?.currentLocation;
        final updatedUsers = usersEntity.users.map((user) {
          final lat = double.tryParse(user.latitude ?? '') ?? 0;
          final lng = double.tryParse(user.longitude ?? '') ?? 0;

          if (userLocation == null || (lat == 0 && lng == 0)) {
            return user;
          }
          final distanceInMeters = Geolocator.distanceBetween(
            userLocation.latitude,
            userLocation.longitude,
            lat,
            lng,
          );
          final distanceKm = distanceInMeters / 1000;
          return user.copyWith(distance: distanceKm.toStringAsFixed(1));
        }).toList();
        updatedUsers.sort((a, b) {
          return (double.tryParse(a.distance) ?? double.infinity).compareTo(
            double.tryParse(b.distance) ?? double.infinity,
          );
        });
        return usersEntity.copyWith(users: updatedUsers);
      },
    ).distinct();
  }

  @override
  Future<ExecuteGuard<void>> getUsers({int? page, String? query}) async {
    try {
      final res = await api.getUsers(page: page, query: query);
      final isFirstPage = page == null || page == 1;
      _nots$.add(
        _nots$.value.copyWith(
          users: [
            if (!isFirstPage) ..._nots$.value.users,
            ...res.users?.map((e) {
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
