import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/job_entity.dart';
import '../../domain/usecases/get_jobs_usecase.dart';

part 'jobs_bloc.freezed.dart';
part 'jobs_state.dart';
part 'jobs_event.dart';

@injectable
class JobsBloc extends Bloc<JobsEvent, JobsState> {
  final GetJobsUseCase _getJobsUseCase;

  JobsBloc(this._getJobsUseCase) : super(const JobsState.initial()) {
    on<JobsEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(const JobsState.loading());
          try {
            final jobs = await _getJobsUseCase();
            emit(JobsState.loaded(jobs));
          } catch (e) {
            emit(JobsState.error(e.toString()));
          }
        },
      );
    });
  }
}
