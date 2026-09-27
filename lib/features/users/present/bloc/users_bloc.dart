import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/features/users/domain/entities/users_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../domain/usecases/users_use_cases.dart';
part 'users_bloc.freezed.dart';
part 'users_event.dart';
part 'users_state.dart';

@lazySingleton
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersUseCases useCases;
  UsersBloc(this.useCases) : super(.loaded(usersRes: UsersResEntity())) {
    on<UsersEvent>((event, emit) async {
      await event.map(
        getUsers: (ev) async {
          try {
            await useCases.getUsers(page: ev.page, query: ev.query).then((e) {
              e.when(
                success: (_) {},
                failure: (apiErrorModel) {
                  emit(.failure(apiErrorModel: apiErrorModel));
                },
              );
            });
            await emit.forEach(
              useCases.watch(),
              onData: (data) {
                return .loaded(usersRes: data ?? UsersResEntity());
              },
            );
          } catch (e) {
            emit(.failure(apiErrorModel: ErrorInfo(message: e.toString())));
          }
        },
        recordVisit: (ev) async {
          final res = await useCases.recordVisit(id: ev.id);
          await res.when(
            success: (_) async {
              add(const .getUsers());
            },
            failure: (apiErrorModel) async {
              emit(.failure(apiErrorModel: apiErrorModel));
            },
          );
        },
      );
    });
    add(const .getUsers());
  }
}
