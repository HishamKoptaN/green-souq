import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/loading/custom_circular_progress.dart';

import '../../../../core/widgets/custom_pagination_widget.dart';
import '../bloc/shops_bloc.dart';
import 'widgets/shops_body.dart';

class ShopsView extends StatelessWidget {
  const ShopsView({super.key});
  static const String routeName = 'shops';

  Future<void> _refresh() async {
    final bloc = getIt<ShopsBloc>();
    final refreshed = bloc.stream.firstWhere((state) {
      return state.maybeWhen(
        loaded: (_, _, _, _, _, _) {
          return true;
        },
        orElse: () {
          return false;
        },
      );
    });
    bloc.add(const .refresh());
    await refreshed;
  }

  @override
  Widget build(BuildContext context) {
    {
      return RefreshIndicator(
        onRefresh: _refresh,
        child: CustomPaginationWidget(
          bottomReachedCallback: () {
            getIt<ShopsBloc>().state.mapOrNull(
              loaded: (st) {
                if (st.shopsRes.meta.hasNextPage) {
                  getIt<ShopsBloc>().add(const .fetchNext());
                }
              },
            );
          },
          slivers: [
            BlocBuilder<ShopsBloc, ShopsState>(
              bloc: getIt<ShopsBloc>(),
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (st) {
                    return SliverToBoxAdapter(
                      child: ShopsBody(shopsRes: st.shopsRes),
                    );
                  },
                  orElse: () {
                    return const SliverFillRemaining(
                      hasScrollBody: false,
                      child: CustomCircularProgress(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      );
    }
  }
}
