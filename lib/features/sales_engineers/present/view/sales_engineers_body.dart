import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:green/core/widgets/forms/custom_search_widget.dart';
import 'package:green/features/shops/present/view/shops_body.dart';

import '../bloc/sales_engineers_bloc.dart';
import 'widgets/sales_engineers_banner.dart';
import 'widgets/sales_engineers_list_view.dart';

class SalesEngineersBody extends StatelessWidget {
  SalesEngineersBody({super.key});
  static const String routeName = 'sales_engineers';

  final PagingController<int, Object> _pagingController = PagingController(
    fetchPage: (pageKey) async {
      getIt<SalesEngineersBloc>().add(.getSalesEngineers(page: pageKey));
      final nextState = await getIt<SalesEngineersBloc>().stream.firstWhere((
        state,
      ) {
        {
          return state.maybeMap(
            loaded: (st) {
              {
                return true;
              }
            },
            orElse: () {
              {
                return false;
              }
            },
          );
        }
      });
      {
        return nextState.maybeMap(
          loaded: (st) {
            {
              final engineers = st.salesEngineersRes.salesEngineers;
              List<Object> pageItems = [];
              for (var i = 0; i < engineers.length; i++) {
                pageItems.add(engineers[i]);
                if ((i + 1) % 2 == 0) {
                  pageItems.add(const AdBannerPlaceholder());
                }
              }
              return pageItems;
            }
          },
          orElse: () {
            {
              return [];
            }
          },
        );
      }
    },
    getNextPageKey: (state) {
      {
        if (state.lastPageIsEmpty) {
          return null;
        }
        return (state.keys?.last ?? 0) + 1;
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    {
      return BlocBuilder<SalesEngineersBloc, SalesEngineersState>(
        bloc: getIt<SalesEngineersBloc>(),
        builder: (context, state) {
          {
            return state.maybeMap(
              loaded: (st) {
                {
                  return Column(
                    spacing: 4.h,
                    children: [
                      Gap(10.h),
                      const SalesEngineersBanner(),
                      CustomSearchWidget(
                        initialValue: '',
                        hintText: 'ابحث عن مهندس مبيعات...',
                        onChanged: (v) {
                          {
                            getIt<SalesEngineersBloc>().add(
                              .getSalesEngineers(query: v),
                            );
                            _pagingController.refresh();
                          }
                        },
                      ),
                      SalesEngineersListView(
                        pagingController: _pagingController,
                      ),
                    ],
                  );
                }
              },
              orElse: () {
                {
                  return const SizedBox();
                }
              },
            );
          }
        },
      );
    }
  }
}
