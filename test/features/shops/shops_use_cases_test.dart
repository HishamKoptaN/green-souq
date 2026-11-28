import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/shops/domain/repo/shops_repo.dart';
import 'package:green/features/shops/domain/usecases/shops_use_cases.dart';
import 'package:mocktail/mocktail.dart';

class MockShopsRepo extends Mock implements ShopsRepo {}

void main() {
  late MockShopsRepo repo;

  setUp(() {
    repo = MockShopsRepo();
  });

  test('delegates paginated shop listing to the repository', () async {
    when(
      () => repo.getShops(page: any(named: 'page'), query: any(named: 'query')),
    ).thenAnswer((_) async => const ExecuteGuard.success(data: null));

    await ShopsUseCases(repo).get(page: 2, query: 'بذور');

    verify(() => repo.getShops(page: 2, query: 'بذور')).called(1);
  });

  test('delegates showing a single shop', () async {
    when(
      () => repo.show(id: any(named: 'id')),
    ).thenAnswer((_) async => const ExecuteGuard.success(data: null));

    await ShopsUseCases(repo).show(id: 7);

    verify(() => repo.show(id: 7)).called(1);
  });
}
