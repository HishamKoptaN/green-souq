import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../data/models/cmnt_model.dart';
import '../../domain/usecases/cmnts_use_cases.dart';
import 'cmnts_event.dart';
import 'cmnts_state.dart';

@Injectable()
class CmntsBloc extends Bloc<CmntsEvent, CmntsState> {
  CmntsUseCases cmntsUseCases;
  MetaEntity? meta;
  List<Cmnt>? allCmnts;
  CmntsBloc({required this.cmntsUseCases}) : super(const CmntsState.initial()) {
    on<CmntsEvent>((event, emit) async {
      await event.when(
        getCmnts: (postId, page) async {
          try {
            emit(const CmntsState.cmntsLoading());
            final res = await cmntsUseCases.getCmnts(
              postId: postId,
              page: page,
            );
            await res.when(
              success: (res) async {
                allCmnts = res?.cmnts ?? [];
                emit(CmntsState.cmntsloaded(cmnts: allCmnts, hasMore: true));
              },
              failure: (errorInfo) async {
                emit(CmntsState.getCmntsFailure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(.getCmntsFailure(errorInfo: ErrorHandler.handle(error: e)));
          }
        },
        createCmnt: (createCmntReqBody) async {
          try {
            final res = await cmntsUseCases.cmnt(
              createCmntReqBody: createCmntReqBody,
            );
            await res.when(
              success: (res) async {
                allCmnts = [...allCmnts ?? [], res ?? const Cmnt()];
                emit(
                  CmntsState.cmntsloaded(
                    cmnts: allCmnts ?? [],
                    hasMore: meta?.hasNextPage ?? false,
                  ),
                );
              },
              failure: (errorInfo) async {},
            );
          } catch (e) {
            emit(.getCmntsFailure(errorInfo: ErrorHandler.handle(error: e)));
          }
        },
      );
    });
  }
}
