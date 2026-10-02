import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/widgets/feedback/custom_empty_widget.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';
import 'package:green/features/ads/ad_banner_widget.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';
import 'package:green/features/sales_engineers/present/bloc/sales_engineers_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'engineer_card.dart';
import 'sales_engineers_banner.dart';
import 'sales_engineers_search_and_filters.dart';

class SalesEngineersContent extends StatelessWidget {
  const SalesEngineersContent({super.key, required this.state});

  final SalesEngineersState state;

  @override
  Widget build(BuildContext context) {
    {
      return state.maybeMap(
        loaded: (st) {
          {
            return SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: .start,
                spacing: 12.h,
                children: [
                  NetworkBannerCard(),
                  SalesEngineersSearchAndFilters(
                    onSearchChanged: (v) {
                      getIt<SalesEngineersBloc>().add(.search(query: v));
                    },
                  ),
                  st.isSearching
                      ? const Center(child: CustomCircularProgress())
                      : st.salesEngineersRes.salesEngineers.isEmpty
                      ? CustomEmptyWidget(
                          icon: Icon(
                            Icons.engineering_outlined,
                            size: 48.r,
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                          title: 'لا يوجد مهندسين مبيعات',
                          subtitle: 'لا يوجد مهندسين مبيعات متاحين حالياً',
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: st.salesEngineersRes.meta.hasNextPage
                              ? st.salesEngineersRes.salesEngineers.length + 1
                              : st.salesEngineersRes.salesEngineers.length,
                          separatorBuilder: (context, index) {
                            return Gap(12.h);
                          },
                          itemBuilder: (context, index) {
                            if (index ==
                                st.salesEngineersRes.salesEngineers.length) {
                              return Skeletonizer(
                                enabled: true,
                                child: EngineerCard(
                                  salesEngineer: SalesEngineerEntity(),
                                ),
                              );
                            }
                            if ((index + 1) % 5 == 0) {
                              return const AdBannerWidget();
                            }
                            return EngineerCard(
                              salesEngineer:
                                  st.salesEngineersRes.salesEngineers[index],
                            );
                          },
                        ),
                ],
              ),
            );
          }
        },
        orElse: () {
          {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: CustomCircularProgress()),
            );
          }
        },
      );
    }
  }
}
