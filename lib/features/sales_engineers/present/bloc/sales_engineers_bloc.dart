import 'package:bloc_concurrency/bloc_concurrency.dart';
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
    on<_Watch>((_Watch ev, Emitter<SalesEngineersState> emit) async {
      try {
        emit(.loading());
        await useCases.get(page: 1);
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
      await emit.forEach(
        useCases.watch(),
        onData: (data) {
          return .loaded(
            salesEngineersRes: data ?? SalesEngineersResEntity(),
            query: state
                .mapOrNull(
                  loaded: (st) {
                    return st.copyWith(isSearching: false);
                  },
                )
                ?.query,
          );
        },
        onError: (error, _) {
          return .failure(errorInfo: ErrorInfo(message: error.toString()));
        },
      );
    }, transformer: restartable());
    on<_FetchNext>((_FetchNext ev, Emitter<SalesEngineersState> emit) async {
      final st = state.mapOrNull(
        loaded: (st) {
          return st;
        },
      );
      try {
        await useCases.get(
          page: (st?.salesEngineersRes.meta.currentPage ?? 0) + 1,
          query: st?.query,
        );
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
    }, transformer: droppable());
    on<_Search>((_Search ev, Emitter<SalesEngineersState> emit) async {
      try {
        state.mapOrNull(
          loaded: (st) {
            emit(st.copyWith(isSearching: true));
          },
        );
        await useCases.get(page: 1, query: ev.query);
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
    }, transformer: restartable());
    on<_Refresh>((_Refresh ev, Emitter<SalesEngineersState> emit) async {
      try {
        await useCases.get(
          page: 1,
          query: state
              .mapOrNull(
                loaded: (st) {
                  return st;
                },
              )
              ?.query,
        );
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
    }, transformer: restartable());
    add(const .watch());
  }
}
