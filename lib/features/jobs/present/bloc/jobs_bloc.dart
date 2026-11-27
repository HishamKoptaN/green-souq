import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/job_entity.dart';
import '../../domain/entities/jobs_res_entity.dart';
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
          if (!e.append) {
            emit(const JobsState.loading());
          }
          final result = await _getJobsUseCase(page: e.page, query: e.query);
          result.when(
            success: (data) {
              final loaded = data ?? const JobsResEntity();
              final previous = state.maybeWhen(
                loaded: (jobs, hasNextPage, page) => jobs,
                orElse: () => <JobEntity>[],
              );
              emit(JobsState.loaded(
                e.append ? [...previous, ...loaded.jobs] : loaded.jobs,
                hasNextPage: loaded.hasNextPage,
                page: e.page,
              ));
            },
            failure: (info) {
              emit(JobsState.error(info.message));
            },
          );
        },
      );
    });
  }
}
