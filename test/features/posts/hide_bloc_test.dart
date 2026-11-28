import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/posts/hide/domain/entities/hide_req.dart';
import 'package:green/features/posts/hide/domain/usecases/hide_usecases.dart';
import 'package:green/features/posts/hide/present/bloc/hide_bloc.dart';
import 'package:green/features/posts/hide/present/bloc/hide_event.dart';
import 'package:green/features/posts/hide/present/bloc/hide_state.dart';
import 'package:mocktail/mocktail.dart';

class MockHideUseCases extends Mock implements HideUseCases {}

void main() {
  late MockHideUseCases useCases;
  const request = HideReq(id: 1, type: 'post');

  setUp(() {
    registerFallbackValue(request);
    useCases = MockHideUseCases();
  });

  blocTest<HideBloc, HideState>(
    'delegates hiding a post to the use case',
    build: () {
      when(() => useCases.hide(hideReq: any(named: 'hideReq'))).thenAnswer(
        (_) async {},
      );
      return HideBloc(statusUseCases: useCases);
    },
    act: (bloc) {
      bloc.add(const HideEvent.hide(hideReq: request));
    },
    verify: (bloc) {
      verify(() => useCases.hide(hideReq: request)).called(1);
    },
  );
}
