import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/hide_usecases.dart';
import 'hide_event.dart';
import 'hide_state.dart';

@LazySingleton()
class HideBloc extends Bloc<HideEvent, HideState> {
  final HideUseCases statusUseCases;
  HideBloc({required this.statusUseCases}) : super(const .initial()) {
    on<HideEvent>((event, emit) async {
      await event.when(
        hide: (hideReq) async {
          await statusUseCases.hide(hideReq: hideReq!);
        },
      );
    });
  }
  void emitFaliure({
    required Emitter<HideState> emit,
    required ErrorInfo errorInfo,
  }) {
    return emit(HideState.failure(errorInfo: errorInfo));
  }
}
