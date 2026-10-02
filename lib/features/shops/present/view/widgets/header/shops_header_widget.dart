import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../location/present/bloc/location_bloc.dart';

class ShopsHeaderWidget extends StatelessWidget {
  const ShopsHeaderWidget({super.key, required this.onToggle});
  final ValueChanged<bool> onToggle;

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        margin: AppPadding.internalChildSymmetric,
        padding: .all(12.r),
        decoration: BoxDecoration(
          color: context.colorScheme.surfaceContainerLowest,
          borderRadius: .circular(12.r),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.onSurface.withValues(alpha: 0.04),
              blurRadius: 8.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            BlocConsumer<LocationBloc, LocationState>(
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
                    return Row(
                      spacing: 8.w,
                      children: [
                        Container(
                          width: 40.r,
                          height: 40.r,
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary.withValues(
                              alpha: 0.1,
                            ),
                            shape: .circle,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                LucideIcons.mapPin,
                                color: context.colorScheme.primary,
                                size: 22.r,
                              ),
                              Positioned(
                                top: 4.r,
                                right: 4.r,
                                child: Container(
                                  width: 10.r,
                                  height: 10.r,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.primary,
                                    shape: .circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              'نطاق الملاحة والموقع الحالي',
                              style: context.textTheme.labelSmall?.copyWith(
                                color: context.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            Row(
                              spacing: 4.w,
                              children: [
                                Text(
                                  st.placeName,
                                  style: context.textTheme.titleMedium
                                      ?.copyWith(
                                        fontWeight: .bold,
                                        color: context.colorScheme.onSurface,
                                      ),
                                ),
                                Icon(
                                  LucideIcons.badgeCheck,
                                  color: context.colorScheme.primary,
                                  size: 18.r,
                                ),
                              ],
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
                      child: Text(
                        'Failed to load data: ${st.errorInfo.message}',
                      ),
                    );
                  },
                );
              },
            ),
            //Container(
            //  padding: .symmetric(horizontal: 12.w, vertical: 6.h),
            //  decoration: BoxDecoration(
            //    color: context.colorScheme.surfaceContainer,
            //    borderRadius: .circular(9999.r),
            //  ),
            //  child: Row(
            //    spacing: 4.w,
            //    children: [
            //      Text(
            //        'تغيير',
            //        style: context.textTheme.labelMedium?.copyWith(
            //          color: context.colorScheme.primary,
            //        ),
            //      ),
            //      Icon(
            //        LucideIcons.chevronDown,
            //        size: 16.r,
            //        color: context.colorScheme.primary,
            //      ),
            //    ],
            //  ),
            //),
          ],
        ),
      );
    }
  }
}
