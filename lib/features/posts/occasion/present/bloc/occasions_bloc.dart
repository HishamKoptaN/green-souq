import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';

import '../../../posts/data/models/create_occasion_req_body.dart';
import '../../domain/usecases/occasions_use_cases.dart';
import 'occasions_event.dart';
import 'occasions_state.dart';

@Injectable()
class OccasionsBloc extends Bloc<OccasionsEvent, OccasionsState> {
  OcassionsUseCases ocassionsUseCases;
  CreateOccasionReqBody createOccasionReqBody = const CreateOccasionReqBody();
  //! draft post data
  OccasionsBloc({required this.ocassionsUseCases})
    : super(const .initial()) {
    on<OccasionsEvent>(transformer: droppable(), (event, emit) async {
      await event.when(
        //! toggleLike
        toggleOcassionInterest: (id) async {
          try {
            await ocassionsUseCases.toggleOcassionInterest(id: id);
          } catch (e) {
            emit(
              OccasionsState.failure(errorInfo: ErrorHandler.handle(error: e)),
            );
          }
        },
        //! updateData
      );
    });
  }
  void resetData() {}
}
