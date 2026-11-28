import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/ratings/domain/repo/ratings_repo.dart';
import 'package:green/features/ratings/domain/usecases/ratings_use_cases.dart';
import 'package:mocktail/mocktail.dart';

class MockRatingsRepo extends Mock implements RatingsRepo {}

void main() {
  late MockRatingsRepo repo;

  setUp(() {
    repo = MockRatingsRepo();
  });

  test('delegates rating to the repository with all arguments', () async {
    when(
      () => repo.rate(
        id: any(named: 'id'),
        type: any(named: 'type'),
        rating: any(named: 'rating'),
      ),
    ).thenAnswer((_) async => const ExecuteGuard.success(data: null));

    await RatingsUseCases(repo).rate(id: 5, type: 'post', rating: 4);

    verify(
      () => repo.rate(id: 5, type: 'post', rating: 4),
    ).called(1);
  });
}
