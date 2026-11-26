import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/jobs/domain/entities/job_entity.dart';
import 'package:green/features/jobs/domain/entities/jobs_res_entity.dart';
import 'package:green/features/jobs/domain/usecases/get_jobs_usecase.dart';
import 'package:green/features/jobs/present/bloc/jobs_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetJobsUseCase extends Mock implements GetJobsUseCase {}

void main() {
  late MockGetJobsUseCase useCase;

  setUp(() {
    useCase = MockGetJobsUseCase();
  });

  blocTest<JobsBloc, JobsState>(
    'emits loaded with jobs from the API',
    build: () {
      when(() => useCase(page: any(named: 'page'), query: any(named: 'query')))
          .thenAnswer((_) async => ExecuteGuard.success(
                data: JobsResEntity(
                  jobs: const [
                    JobEntity(id: '1', title: 'مهندس ري', description: 'وصف'),
                  ],
                  hasNextPage: true,
                ),
              ));
      return JobsBloc(useCase);
    },
    act: (bloc) {
      bloc.add(const JobsEvent.fetch());
    },
    expect: () => [isA<JobsState>(), isA<JobsState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        loaded: (jobs, hasNextPage, page) {
          expect(jobs.length, 1);
          expect(hasNextPage, isTrue);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<JobsBloc, JobsState>(
    'emits error message on failure',
    build: () {
      when(() => useCase(page: any(named: 'page'), query: any(named: 'query')))
          .thenAnswer((_) async => ExecuteGuard.failure(
                errorInfo: const ErrorInfo(message: 'تعذّر تحميل الوظائف'),
              ));
      return JobsBloc(useCase);
    },
    act: (bloc) {
      bloc.add(const JobsEvent.fetch());
    },
    expect: () => [isA<JobsState>(), isA<JobsState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        error: (message) {
          expect(message, 'تعذّر تحميل الوظائف');
        },
        orElse: () {
          fail('expected error state');
        },
      );
    },
  );
}
