import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/meta_model.dart';
import '../../data/models/cmnt_model.dart';
import '../../data/models/cmnts_res_model.dart';
import '../../data/models/create_cmnt_req_body.dart';
import '../../domain/entities/create_cmnt_entity.dart';
import '../../domain/usecases/cmnts_use_cases.dart';
part 'cmnts_bloc.freezed.dart';
part 'cmnts_event.dart';
part 'cmnts_state.dart';

@lazySingleton
class CmntsBloc extends Bloc<CmntsEvent, CmntsState> {
  CmntsUseCases cmntsUseCases;
  CmntsBloc({required this.cmntsUseCases})
    : super(
        const .loaded(
          cmntsRes: CmntsResModel(cmnts: [], meta: MetaModel()),
        ),
      ) {
    on<CmntsEvent>((event, emit) async {
      await event.map(
        getCmnts: (ev) async {
          await state.mapOrNull(
            loaded: (st) async {
              try {
                if (ev.page == 1) {
                  emit(.loading());
                }
                await cmntsUseCases.getCmnts(
                  page: ev.page,
                  commentableId: ev.commentableId,
                  commentableType: ev.commentableType,
                );
                await emit.forEach(
                  cmntsUseCases.watch(),
                  onData: (data) {
                    return .loaded(cmntsRes: data);
                  },
                  onError: (error, stackTrace) {
                    return .failure(
                      errorInfo: ErrorHandler.handle(error: error.toString()),
                    );
                  },
                );
              } catch (e) {
                emit(.failure(errorInfo: ErrorHandler.handle(error: e)));
              }
            },
          );
        },
        createCmnt: (ev) async {
          await state.mapOrNull(
            loaded: (st) async {
              try {
                final res = await cmntsUseCases.cmnt(createCmnt: st.createCmnt);
                await res.when(
                  success: (res) async {
                    _emitCustomLoaded(emit: emit, loaded: st);
                  },
                  failure: (errorInfo) async {},
                );
              } catch (e) {
                emit(.failure(errorInfo: ErrorHandler.handle(error: e)));
              }
            },
          );
        },
        dataChanged: (ev) async {
          await state.mapOrNull(
            loaded: (st) async {
              _emitCustomLoaded(emit: emit, loaded: st);
            },
          );
        },
      );
    });
  }
  void _emitCustomLoaded({
    required Emitter<CmntsState> emit,
    required _Loaded? loaded,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    if (loaded != null) {
      emit(
        .loaded(
          formzSubmissionStatus:
              formzSubmissionStatus ??
              (Formz.validate([loaded.createCmnt.comment])
                  ? .success
                  : .failure),
        ),
      );
    }
  }
}
