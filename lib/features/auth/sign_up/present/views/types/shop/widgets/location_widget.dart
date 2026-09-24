import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/widgets/forms/translated_text.dart';
import 'package:green/features/auth/sign_up/present/bloc/sign_up_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../../../../core/widgets/forms/custom_text_form_header.dart';
import '../../../../../../../location/pick_location_view.dart';
import '../../../../../../../location/present/bloc/location_bloc.dart';
import '../../../../../domain/entities/sign_up_req_entity.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key, required this.signUpReq});
  final SignUpReqEntity signUpReq;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationBloc, LocationState>(
      bloc: getIt<LocationBloc>(),
      listener: (_, state) async {
        await state.mapOrNull(
          failure: (st) {
            context.showErrorSnackBar(
              title: st.errorInfo.title,
              message: st.errorInfo.message,
            );
          },
        );
      },
      builder: (c, state) {
        return state.maybeMap(
          loaded: (st) {
            return Column(
              crossAxisAlignment: .start,
              spacing: 4.h,
              children: [
                CustomTextFormHeader(
                  tag: 'مطلوب',
                  icon: Icon(
                    Icons.location_on,
                    size: 18.r,
                    color: context.colorScheme.primary,
                  ),
                  labelText: "تحديد موقع المحل على الخريطة",
                ),
                Container(
                  decoration: BoxDecoration(
                    color: context.colorScheme.surfaceContainerLowest,
                    borderRadius: .circular(12.r),
                    border: .all(color: context.colorScheme.outlineVariant),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.03),
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  clipBehavior: .antiAlias,
                  child: Column(
                    children: [
                      Container(
                        height: 120.h,
                        width: .infinity,
                        color: context.colorScheme.surface,
                        child: Stack(
                          alignment: .center,
                          children: [
                            FlutterMap(
                              options: MapOptions(
                                initialCenter: LatLng(
                                  st.selectedPoint.latitude,
                                  st.selectedPoint.longitude,
                                ),
                                initialZoom: 5.0,
                                interactionOptions: InteractionOptions(
                                  flags:
                                      InteractiveFlag.all &
                                      ~InteractiveFlag.rotate,
                                ),
                              ),
                              children: [
                                TileLayer(
                                  urlTemplate: 'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
                                  subdomains: const ['a', 'b', 'c', 'd'],
                                ),
                              ],
                            ),
                            Container(
                              padding: .all(40.r),
                              decoration: BoxDecoration(
                                color: context.colorScheme.primary.withValues(
                                  alpha: 0.3,
                                ),
                                shape: .circle,
                              ),
                            ),
                            Container(
                              padding: .all(40.r),
                              decoration: BoxDecoration(
                                color: context.colorScheme.primaryContainer
                                    .withValues(alpha: 0.2),
                                shape: .circle,
                              ),
                            ),
                            Column(
                              mainAxisSize: .min,
                              children: [
                                Container(
                                  padding: .symmetric(
                                    horizontal: 8.w,
                                    vertical: 2.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.primary,
                                    borderRadius: .circular(9999),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.2,
                                        ),
                                        blurRadius: 4,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisSize: .min,
                                    children: [
                                      Icon(
                                        Icons.storefront,
                                        size: 12.r,
                                        color: context.colorScheme.onPrimary,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        "موقع المحل",
                                        style: context.textTheme.labelSmall
                                            ?.copyWith(
                                              fontWeight: .bold,
                                              color:
                                                  context.colorScheme.onPrimary,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.location_on,
                                  size: 32.r,
                                  color: context.colorScheme.primary,
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 8.h,
                              left: 10.w,
                              child: InkWell(
                                onTap: () async {
                                  final LatLng? result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return const PickLocationView();
                                      },
                                    ),
                                  );
                                  if (result != null && context.mounted) {
                                    saveLoc(context, result);
                                  }
                                },
                                child: Container(
                                  padding: .symmetric(
                                    horizontal: 8.w,
                                    vertical: 4.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: context
                                        .colorScheme
                                        .surfaceContainerLow
                                        .withValues(alpha: 0.9),
                                    borderRadius: .circular(4.r),
                                    border: .all(
                                      color: context.colorScheme.outlineVariant
                                          .withValues(alpha: 0.5),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: .min,
                                    children: [
                                      Icon(
                                        Icons.touch_app,
                                        size: 13.r,
                                        color: context.colorScheme.primary,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        "اسحب أو انقر لتعديل المكان",
                                        style: context.textTheme.labelSmall
                                            ?.copyWith(
                                              color:
                                                  context.colorScheme.onSurface,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: .all(12.r),
                        color: context.colorScheme.surfaceContainerLow,
                        child: Column(
                          children: [
                            Container(
                              padding: .all(10.r),
                              decoration: BoxDecoration(
                                color: context.colorScheme.surfaceContainer,
                                borderRadius: .circular(8.r),
                                border: .all(
                                  color:
                                      context.colorScheme.surfaceContainerHigh,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 32.w,
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                      color: context.colorScheme.primary
                                          .withValues(alpha: 0.1),
                                      borderRadius: .circular(8.r),
                                    ),
                                    child: Icon(
                                      Icons.pin_drop,
                                      size: 18.r,
                                      color: context.colorScheme.primary,
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          "العنوان المحدد للمحل:",
                                          style: context.textTheme.bodySmall
                                              ?.copyWith(
                                                color:
                                                    context.colorScheme.outline,
                                              ),
                                        ),
                                        SizedBox(height: 2.h),
                                        TrText(
                                          st.loading
                                              ? "جاري التحديد عبر الأقمار الصناعية (GPS)..."
                                              : ((signUpReq
                                                        .latitude
                                                        ?.isValid) ??
                                                    false)
                                              ? '${signUpReq.latitude?.value}, ${signUpReq.longitude?.value}'
                                              : 'لم يتم تحديد موقع',
                                          style: context.textTheme.bodySmall
                                              ?.copyWith(
                                                color: context
                                                    .colorScheme
                                                    .onSurface,
                                                fontWeight: .bold,
                                              ),
                                          maxLines: 1,
                                          overflow: .ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.h),
                            OutlinedButton.icon(
                              onPressed: () async {
                                getIt<LocationBloc>().add(.determinePosition());
                                await Future.wait<dynamic>([
                                  getIt<LocationBloc>().stream.firstWhere((
                                    state,
                                  ) {
                                    return state.maybeMap(
                                      loaded: (st) {
                                        return !st.loading;
                                      },
                                      orElse: () {
                                        return true;
                                      },
                                    );
                                  }),
                                ]).timeout(
                                  Duration(seconds: 5),
                                  onTimeout: () {
                                    return [true];
                                  },
                                );
                                if (context.mounted) {
                                  saveLoc(context, st.selectedPoint);
                                }
                              },
                              icon: Icon(
                                Icons.my_location,
                                size: 15.r,
                                color: context.colorScheme.primary,
                              ),
                              label: Text(
                                "تحديد موقعي الحالي تلقائياً",
                                style: context.textTheme.labelSmall?.copyWith(
                                  color: context.colorScheme.primary,
                                  fontWeight: .bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 14.r,
                      color: context.colorScheme.primary,
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        "يساعد تحديد الموقع بدقة في توجيه شاحنات التوريد وحساب تكاليف النقل.",
                        style: context.textTheme.bodySmall?.copyWith(
                          color: context.colorScheme.outline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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

  void saveLoc(BuildContext context, LatLng result) {
    context.read<SignUpBloc>().add(
      .dataChanged(
        signUpReq: signUpReq.copyWith(
          latitude: .dirty(value: result.latitude.toString()),
          longitude: .dirty(value: result.longitude.toString()),
        ),
      ),
    );
  }
}
