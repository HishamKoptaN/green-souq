import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/features/shops/domain/entities/shops_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../domain/entities/shop_entity.dart';
import '../../domain/usecases/shops_use_cases.dart';
part 'shops_bloc.freezed.dart';
part 'shops_event.dart';
part 'shops_state.dart';

@lazySingleton
class ShopsBloc extends Bloc<ShopsEvent, ShopsState> {
  final ShopsUseCases useCases;
  ShopsBloc(this.useCases) : super(const .loaded(shopsRes: ShopsResEntity())) {
    on<_Watch>((_Watch ev, Emitter<ShopsState> emit) async {
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
            shopsRes: data ?? ShopsResEntity(),
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
    on<_FetchNext>((_FetchNext ev, Emitter<ShopsState> emit) async {
      final st = state.mapOrNull(
        loaded: (st) {
          return st;
        },
      );
      try {
        await useCases.get(
          page: (st?.shopsRes.meta.currentPage ?? 0) + 1,
          query: st?.query,
        );
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
    }, transformer: droppable());
    on<_Search>((_Search ev, Emitter<ShopsState> emit) async {
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
    on<_Refresh>((_Refresh ev, Emitter<ShopsState> emit) async {
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
    on<_Show>((_Show ev, Emitter<ShopsState> emit) async {
      try {
        emit(.loading());
        await useCases.show(id: ev.id);
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
    }, transformer: restartable());
    add(const .watch());
  }
}
