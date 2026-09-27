import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:latlong2/latlong.dart';

import '../../core/widgets/forms/translated_text.dart';
import '../../core/di/dependency_injection.dart';
import 'present/bloc/location_bloc.dart';

class PickLocationView extends StatelessWidget {
  PickLocationView({super.key});
  static const String routeName = 'pick-location';

  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationBloc, LocationState>(
      bloc: getIt<LocationBloc>(),
      listener: (_, _) {},
      builder: (c, state) {
        return state.maybeMap(
          loaded: (st) {
            Future.delayed(.zero, () {
              _mapController.move(st.selectedPoint, 15.0);
            });
            return Scaffold(
              appBar: AppBar(title: const TrText('اختر موقع التوزيع')),
              body: Expanded(
                child: Stack(
                  children: [
                    FlutterMap(
                      mapController: _mapController,
                      options: MapOptions(
                        initialCenter: st.selectedPoint,
                        initialZoom: 13.0,
                        onTap: (tapPosition, point) {
                          getIt<LocationBloc>().add(.selectPoint(point: point));
                        },
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.muein.orders',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: st.selectedPoint,
                              width: 80.r,
                              height: 80.r,
                              child: Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 40.r,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (st.loading)
                      Container(
                        color: Colors.black54,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: .center,
                            children: [
                              CircularProgressIndicator(color: Colors.white),
                              Text(
                                'جاري تحديد موقعك...',
                                style: context.textTheme.titleMedium?.copyWith(
                                  fontWeight: .bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton.small(
                onPressed: () {
                  getIt<LocationBloc>().add(.determinePosition());
                },
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
                child: const Icon(Icons.my_location, color: Colors.red),
              ),
              bottomNavigationBar: SafeArea(
                minimum: .only(right: 16.w, left: 16.w, bottom: 16.h),
                child: Column(
                  mainAxisSize: .min,
                  children: [
                    if (st.placeName.isNotEmpty)
                      Container(
                        padding: .all(10.r),
                        margin: .only(bottom: 8.h),
                        decoration: BoxDecoration(
                          color: context.colorScheme.surfaceContainerLow,
                          borderRadius: .circular(8.r),
                          border: .all(
                            color: context.colorScheme.outlineVariant,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.place,
                              color: context.colorScheme.primary,
                              size: 20.r,
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Text(
                                st.placeName,
                                style: context.textTheme.bodyMedium?.copyWith(
                                  fontWeight: .bold,
                                  color: context.colorScheme.onSurface,
                                ),
                                maxLines: 2,
                                overflow: .ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          LatLng(
                            st.selectedPoint.latitude,
                            st.selectedPoint.longitude,
                          ),
                        );
                      },
                      child: const Text('تأكيد الموقع'),
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
          failure: (st) {
            return Center(
              child: Text('Failed to load data: ${st.errorInfo.message}'),
            );
          },
        );
      },
    );
  }
}
