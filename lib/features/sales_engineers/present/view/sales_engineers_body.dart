import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green/core/di/dependency_injection.dart';
import 'package:green/core/widgets/custom_pagination_widget.dart';
import 'package:green/features/sales_engineers/present/bloc/sales_engineers_bloc.dart';
import 'widgets/sales_engineers_content.dart';

class SalesEngineersBody extends StatelessWidget {
  const SalesEngineersBody({super.key});
  static const String routeName = 'sales_engineers';

  @override
  Widget build(BuildContext context) {
    {
      return CustomPaginationWidget(
        bottomReachedCallback: () {
          getIt<SalesEngineersBloc>().state.mapOrNull(
            loaded: (st) {
              if (st.salesEngineersRes.meta.hasNextPage) {
                getIt<SalesEngineersBloc>().add(const .fetchNext());
              }
            },
          );
        },
        slivers: [
          BlocBuilder<SalesEngineersBloc, SalesEngineersState>(
            bloc: getIt<SalesEngineersBloc>(),
            builder: (context, state) {
              {
                return SalesEngineersContent(state: state);
              }
            },
          ),
        ],
      );
    }
  }
}
