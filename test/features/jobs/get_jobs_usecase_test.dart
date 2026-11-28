import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/jobs/domain/entities/job_entity.dart';
import 'package:green/features/jobs/domain/entities/jobs_res_entity.dart';
import 'package:green/features/jobs/domain/repo/jobs_repo.dart';
import 'package:green/features/jobs/domain/usecases/get_jobs_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockJobsRepo extends Mock implements JobsRepo {}

void main() {
  late MockJobsRepo repo;
  const result = JobsResEntity(
    jobs: [JobEntity(id: '1', title: 'مهندس', description: 'وصف')],
    hasNextPage: true,
  );

  setUp(() {
    repo = MockJobsRepo();
  });

  test('delegates fetching jobs to the repository', () async {
    when(
      () => repo.getJobs(page: any(named: 'page'), query: any(named: 'query')),
    ).thenAnswer((_) async => const ExecuteGuard.success(data: result));

    final response = await GetJobsUseCase(repo)(page: 2, query: 'ري');

    response.maybeWhen(
      success: (data) {
        expect(data, result);
      },
      orElse: () {
        fail('expected success');
      },
    );
    verify(
      () => repo.getJobs(page: 2, query: 'ري'),
    ).called(1);
  });
}
