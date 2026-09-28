import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/reports_usecases.dart';
import 'reports_event.dart';
import 'reports_state.dart';

@LazySingleton()
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final ReportUseCases statusUseCases;
  ReportBloc({required this.statusUseCases})
    : super(const ReportState.initial()) {
    on<ReportEvent>((event, emit) async {
      await event.when(
        report: (reportReq) async {
          statusUseCases.report(reportReq: reportReq!);
        },
      );
    });
  }
  void emitFaliure({
    required Emitter<ReportState> emit,
    required ErrorInfo errorInfo,
  }) {
    return emit(ReportState.failure(errorInfo: errorInfo));
  }
}
