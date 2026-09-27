import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dio/dio.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/utils/global_variable.dart';
import '../../../../core/widgets/forms/translated_text.dart';
import '../../domain/entities/location_entity.dart';
import '../../domain/repo/location_repo.dart';

@LazySingleton(as: LocationRepo)
class LocationRepoImpl implements LocationRepo {
  final _nots$ = BehaviorSubject<LocationEntity?>.seeded(
    const LocationEntity(),
  );
  @override
  Stream<LocationEntity?> watch() {
    return _nots$.stream;
  }

  @override
  Future<ExecuteGuard<void>> getLocation() async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) {
        showLocationServiceDisabledDialog();
        return .failure(errorInfo: ErrorInfo());
      }
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == .denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == .deniedForever) {
        showPermissionDeniedDialog();
        return .failure(errorInfo: ErrorInfo());
      }
      _startPositionStream();
      return .success(data: null);
    } catch (e, st) {
      return .failure(
        errorInfo: ErrorHandler.handle(error: e, stackTrace: st),
      );
    }
  }

  void _startPositionStream() async {
    Geolocator.getPositionStream(
          locationSettings: const LocationSettings(
            accuracy: .high,
            distanceFilter: 10,
          ),
        )
        .throttleTime(const Duration(seconds: 4))
        .listen((Position position) async {
          await _updateLocationState(position);
        });
  }

  Future<void> _updateLocationState(Position position) async {
    final latLng = LatLng(position.latitude, position.longitude);
    final placeName = await getPlaceName(latLng);
    final currentVal = _nots$.value;
    _nots$.add(
      LocationEntity(
        currentLocation: latLng,
        selectedPoint: currentVal?.selectedPoint ?? latLng,
        placeName: placeName.isNotEmpty
            ? placeName
            : (currentVal?.placeName ?? 'لم يتم تحديد الموقع بعد..'),
      ),
    );
  }

  @override
  Future<String> getPlaceName(LatLng point) async {
    try {
      final dio = Dio();
      final url =
          'https://nominatim.openstreetmap.org/reverse?format=json&lat=${point.latitude}&lon=${point.longitude}&zoom=18&addressdetails=1';
      final response = await dio.get(
        url,
        options: Options(
          headers: {'User-Agent': 'GreenSouqApp/1.0', 'Accept-Language': 'ar'},
        ),
      );
      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        final address = data['address'] as Map<String, dynamic>?;
        if (address != null) {
          final governorate = address['state'] ?? address['region'] ?? '';
          final district =
              address['county'] ??
              address['city_district'] ??
              address['state_district'] ??
              address['municipality'] ??
              '';
          final village =
              address['village'] ??
              address['hamlet'] ??
              address['town'] ??
              address['city'] ??
              address['suburb'] ??
              address['neighbourhood'] ??
              address['road'] ??
              '';

          final List<String> parts = [];
          if (governorate.isNotEmpty) parts.add(governorate);
          if (district.isNotEmpty && district != governorate) {
            parts.add(district);
          }
          if (village.isNotEmpty &&
              village != district &&
              village != governorate) {
            parts.add(village);
          }

          if (parts.isNotEmpty) {
            return parts.join('، ');
          }
        }
        return data['display_name'] ?? '';
      }
    } catch (e) {}
    return '';
  }

  static void showLocationServiceDisabledDialog() {
    showDialog(
      context: GlobalVariable.currentContext!,
      builder: (context) {
        return AlertDialog(
          title: const TrText('خدمة الموقع معطلة'),
          content: const TrText(
            'يرجى تفعيل خدمة الموقع في إعدادات الجهاز لتحديد موقعك الحالي',
            softWrap: true,
            overflow: .visible,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const TrText('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Geolocator.openLocationSettings();
              },
              child: const TrText('فتح الإعدادات'),
            ),
          ],
        );
      },
    );
  }

  static void showPermissionDeniedDialog() {
    showDialog(
      context: GlobalVariable.currentContext!,
      builder: (context) {
        return AlertDialog(
          title: const TrText('إذن الموقع مرفوض'),
          content: const TrText(
            'تم رفض إذن الوصول إلى الموقع بشكل دائم. يرجى تفعيل الإذن من إعدادات التطبيق',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const TrText('إلغاء'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Geolocator.openAppSettings();
              },
              child: const TrText('فتح الإعدادات'),
            ),
          ],
        );
      },
    );
  }
}
