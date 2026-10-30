import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_legal_content_usecase.dart';
import 'legal_event.dart';
import 'legal_state.dart';

@injectable
class LegalBloc extends Bloc<LegalEvent, LegalState> {
  LegalBloc(this._getLegalContentUseCase) : super(const LegalState.initial()) {
    on<LegalEvent>((event, emit) async {
      {
        await event.when(
          started: (type) async {
            {
              emit(const LegalState.loading());
              final result = await _getLegalContentUseCase(type);
              result.fold(
                onSuccess: (data) {
                  {
                    emit(LegalState.loaded(data));
                  }
                },
                onError: (error) {
                  {
                    emit(LegalState.error(error.toString()));
                  }
                },
              );
            }
          },
        );
      }
    });
  }

  final GetLegalContentUseCase _getLegalContentUseCase;
}
