import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/complaint_entity.dart';
import '../../domain/usecases/create_complaint_usecase.dart';
import '../../domain/usecases/get_complaints_usecase.dart';

part 'complaints_bloc.freezed.dart';
part 'complaints_event.dart';
part 'complaints_state.dart';

@injectable
class ComplaintsBloc extends Bloc<ComplaintsEvent, ComplaintsState> {
  final GetComplaintsUseCase _getComplaintsUseCase;
  final CreateComplaintUseCase _createComplaintUseCase;

  ComplaintsBloc(this._getComplaintsUseCase, this._createComplaintUseCase)
      : super(const ComplaintsState.initial()) {
    on<_Started>(_onStarted);
    on<_Create>(_onCreate);
  }

  Future<void> _onStarted(_Started event, Emitter<ComplaintsState> emit) async {
    emit(const ComplaintsState.loading());
    try {
      final complaints = await _getComplaintsUseCase();
      emit(ComplaintsState.loaded(complaints));
    } catch (e) {
      emit(ComplaintsState.failure(e.toString()));
    }
  }

  Future<void> _onCreate(_Create event, Emitter<ComplaintsState> emit) async {
    emit(const ComplaintsState.loading());
    try {
      final complaint = ComplaintEntity(
        id: '',
        title: event.title,
        description: event.description,
        createdAt: DateTime.now(),
      );
      await _createComplaintUseCase(complaint);
      final complaints = await _getComplaintsUseCase();
      emit(ComplaintsState.loaded(complaints));
    } catch (e) {
      emit(ComplaintsState.failure(e.toString()));
    }
  }
}
