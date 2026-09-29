import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineers_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../domain/usecases/sales_engineers_use_cases.dart';
part 'sales_engineers_bloc.freezed.dart';
part 'sales_engineers_event.dart';
part 'sales_engineers_state.dart';

@lazySingleton
class SalesEngineersBloc
    extends Bloc<SalesEngineersEvent, SalesEngineersState> {
  final SalesEngineersUseCases useCases;
  SalesEngineersBloc(this.useCases)
    : super(.loaded(salesEngineersRes: SalesEngineersResEntity())) {
    on<SalesEngineersEvent>((event, emit) async {
      await event.map(
        getSalesEngineers: (ev) async {
          try {
            await useCases
                .getSalesEngineers(page: ev.page, query: ev.query)
                .then((e) {
                  e.when(
                    success: (_) {},
                    failure: (errorInfo) {
                      emit(.failure(errorInfo: errorInfo));
                    },
                  );
                });
            await emit.forEach(
              useCases.watch(),
              onData: (data) {
                return .loaded(
                  salesEngineersRes: data ?? SalesEngineersResEntity(),
                );
              },
            );
          } catch (e) {
            emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
          }
        },
      );
    });
    add(const .getSalesEngineers());
  }
}
