import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/jobs/data/datasources/jobs_api.dart';
import 'package:green/features/jobs/data/models/job_model.dart';
import 'package:green/features/jobs/data/models/jobs_res_model.dart';
import 'package:green/features/jobs/data/repo_impl/jobs_repo_impl.dart';
import 'package:mocktail/mocktail.dart';

class MockJobsApi extends Mock implements JobsApi {}

void main() {
  late MockJobsApi api;

  setUp(() {
    api = MockJobsApi();
  });

  test('maps jobs response into an entity', () async {
    when(
      () => api.getJobs(
        page: any(named: 'page'),
        query: any(named: 'query'),
      ),
    ).thenAnswer(
      (_) async => JobsResModel(
        data: const [JobModel(id: '1', title: 'مهندس', description: 'وصف')],
      ),
    );

    final result = await JobsRepoImpl(api).getJobs(page: 1, query: null);

    result.maybeWhen(
      success: (data) {
        final jobs = data!;
        expect(jobs.jobs, hasLength(1));
        expect(jobs.jobs.first.title, 'مهندس');
      },
      orElse: () {
        fail('expected success');
      },
    );
    verify(() => api.getJobs(page: 1, query: null)).called(1);
  });
}
