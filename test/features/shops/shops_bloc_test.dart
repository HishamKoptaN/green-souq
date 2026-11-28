import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/shops/domain/usecases/shops_use_cases.dart';
import 'package:green/features/shops/present/bloc/shops_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockShopsUseCases extends Mock implements ShopsUseCases {}

void main() {
  late MockShopsUseCases useCases;

  setUp(() {
    useCases = MockShopsUseCases();
    when(
      () => useCases.get(
        page: any(named: 'page'),
        query: any(named: 'query'),
      ),
    ).thenAnswer((_) async => const ExecuteGuard.success(data: null));
    when(() => useCases.watch()).thenAnswer((_) => Stream.value(null));
  });

  blocTest<ShopsBloc, ShopsState>(
    'loads the first page when watching',
    build: () => ShopsBloc(useCases),
    verify: (bloc) {
      verify(() => useCases.get(page: 1, query: null)).called(1);
      expect(bloc.state, isA<ShopsState>());
    },
  );

  blocTest<ShopsBloc, ShopsState>(
    'searches shops with the given query',
    build: () => ShopsBloc(useCases),
    act: (bloc) {
      bloc.add(const ShopsEvent.search(query: 'بذور'));
    },
    verify: (bloc) {
      verify(() => useCases.get(page: 1, query: 'بذور')).called(1);
    },
  );
}
