import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/jobs/data/models/jobs_res_model.dart';

void main() {
  test('maps paginated API response to domain with company name', () {
    final model = JobsResModel.fromJson({
      'data': [
        {
          'id': '1',
          'title': 'مهندس ري',
          'description': 'وصف',
          'location': 'الرياض',
          'companyName': 'شركة زراعية',
          'status': 'open',
        },
      ],
      'meta': {'total': 1, 'has_next_page': false},
    });

    final entity = model.toEntity();

    expect(entity.jobs.single.companyName, 'شركة زراعية');
    expect(entity.jobs.single.status, 'open');
    expect(entity.hasNextPage, isFalse);
  });
}
