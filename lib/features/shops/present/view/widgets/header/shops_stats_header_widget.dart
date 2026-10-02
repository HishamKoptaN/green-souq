import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/theme/extensions/theme_ext.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../location/present/bloc/location_bloc.dart';
import '../../../../domain/entities/shops_res_entity.dart';

class ShopsStatsHeaderWidget extends StatelessWidget {
  final ShopsResEntity shopsResEntity;
  const ShopsStatsHeaderWidget({super.key, required this.shopsResEntity});

  @override
  Widget build(BuildContext context) {
    {
      return Padding(
        padding: AppPadding.internalChildSymmetric,
        child: BlocBuilder<LocationBloc, LocationState>(
          bloc: getIt<LocationBloc>(),
          builder: (context, locationState) {
            return locationState.maybeMap(
              loaded: (st) {
                if ((shopsResEntity.meta.total ?? 0) > 0) {
                  return Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Row(
                        spacing: 8.w,
                        children: [
                          Container(
                            width: 10.r,
                            height: 10.r,
                            decoration: BoxDecoration(
                              color: context.colorScheme.primary,
                              shape: .circle,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${shopsResEntity.meta.total} محل زراعي',
                                style: context.textTheme.labelMedium?.copyWith(
                                  fontWeight: .bold,
                                  color: context.colorScheme.onSurface,
                                ),
                              ),
                              Text(
                                ' نشط في نطاق ${st.placeName}',
                                style: context.textTheme.labelMedium?.copyWith(
                                  color: context.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 4.w,
                        children: [
                          Icon(
                            LucideIcons.arrowUpDown,
                            size: 16.r,
                            color: context.colorScheme.primary,
                          ),
                          Text(
                            'الأقرب مسافة',
                            style: context.textTheme.labelMedium?.copyWith(
                              color: context.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
                return const SizedBox.shrink();
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        ),
      );
    }
  }
}
