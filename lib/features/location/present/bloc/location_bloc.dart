import 'package:error_handler/error_handler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/utils/global_variable.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/widgets/forms/translated_text.dart';
part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

@lazySingleton
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const .loaded()) {
    on<LocationEvent>((event, emit) async {
      await event.when(
        determinePosition: () async {
          await state.mapOrNull(
            loaded: (st) async {
              try {
                emit(st.copyWith(loading: true));
                final LatLng? currentLatLng = await determinePosition();
                emit(st.copyWith(loading: false));

                if (currentLatLng != null) {
                  emit(
                    st.copyWith(selectedPoint: currentLatLng, loading: false),
                  );
                }
              } catch (e) {
                emit(.failure(errorInfo: ErrorHandler.handle(error: e)));
              }
            },
          );
        },
      );
    });
    add(.determinePosition());
  }

  static Future<LatLng?> determinePosition() async {
    bool serviceEnabled = await isLocationServiceEnabled();
    if (!serviceEnabled) {
      showLocationServiceDisabledDialog();
      return null;
    }

    LocationPermission permission = await checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await requestPermission();
      if (permission == .denied) return null;
    }

    if (permission == .deniedForever) {
      showPermissionDeniedDialog();
      return null;
    }

    final Position? position = await getCurrentPosition();
    if (position == null) return null;

    return LatLng(position.latitude, position.longitude);
  }

  static Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  static Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  static Future<LocationPermission> requestPermission() async {
    return await Geolocator.requestPermission();
  }

  static Future<Position?> getCurrentPosition() async {
    try {
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      return null;
    }
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
