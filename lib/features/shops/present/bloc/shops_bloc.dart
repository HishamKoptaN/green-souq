import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/features/shops/domain/entities/shops_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../domain/usecases/shops_use_cases.dart';
part 'shops_bloc.freezed.dart';
part 'shops_event.dart';
part 'shops_state.dart';

@lazySingleton
class ShopsBloc extends Bloc<ShopsEvent, ShopsState> {
  final ShopsUseCases useCases;
  ShopsBloc(this.useCases) : super(.loaded(shopsRes: ShopsResEntity())) {
    on<ShopsEvent>((event, emit) async {
      await event.map(
        getShops: (ev) async {
          try {
            await useCases.getShops(page: ev.page, query: ev.query);
            await emit.forEach(
              useCases.watch(),
              onData: (data) {
                return .loaded(shopsRes: data ?? ShopsResEntity());
              },
            );
          } catch (e) {
            emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
          }
        },
        recordVisit: (ev) async {
          final res = await useCases.recordVisit(id: ev.id);
          await res.when(
            success: (_) async {
              add(const .getShops());
            },
            failure: (errorInfo) async {
              emit(.failure(errorInfo: errorInfo));
            },
          );
        },
      );
    });
    add(const .getShops());
  }
}
