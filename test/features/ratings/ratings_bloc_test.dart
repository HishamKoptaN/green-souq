import 'package:bloc_test/bloc_test.dart';
import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/ratings/domain/usecases/ratings_use_cases.dart';
import 'package:green/features/ratings/present/bloc/ratings_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockRatingsUseCases extends Mock implements RatingsUseCases {}

void main() {
  late MockRatingsUseCases useCases;

  setUp(() {
    useCases = MockRatingsUseCases();
  });

  blocTest<RatingsBloc, RatingsState>(
    'emits success when rating succeeds',
    build: () {
      when(
        () => useCases.rate(
          id: any(named: 'id'),
          type: any(named: 'type'),
          rating: any(named: 'rating'),
        ),
      ).thenAnswer((_) async => const ExecuteGuard.success(data: null));
      return RatingsBloc(useCases);
    },
    act: (bloc) {
      bloc.add(const RatingsEvent.rate(id: 1, value: 5, type: 'post'));
    },
    verify: (bloc) {
      verify(
        () => useCases.rate(id: 1, type: 'post', rating: 5),
      ).called(1);
    },
  );

  blocTest<RatingsBloc, RatingsState>(
    'emits failure when rating fails',
    build: () {
      when(
        () => useCases.rate(
          id: any(named: 'id'),
          type: any(named: 'type'),
          rating: any(named: 'rating'),
        ),
      ).thenAnswer(
        (_) async => const ExecuteGuard.failure(
          errorInfo: ErrorInfo(message: 'فشل التقييم'),
        ),
      );
      return RatingsBloc(useCases);
    },
    act: (bloc) {
      bloc.add(const RatingsEvent.rate(id: 1, value: 5, type: 'post'));
    },
    verify: (bloc) {
      bloc.state.maybeWhen(
        failure: (errorInfo) {
          expect(errorInfo.message, 'فشل التقييم');
        },
        orElse: () {
          fail('expected failure state');
        },
      );
    },
  );
}
