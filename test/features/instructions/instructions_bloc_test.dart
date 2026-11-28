import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/instructions/present/bloc/instructions_bloc.dart';

void main() {
  blocTest<InstructionsBloc, InstructionsState>(
    'starts on the first page and is not the last page',
    build: InstructionsBloc.new,
    verify: (bloc) {
      bloc.state.maybeWhen(
        loaded: (pages, currentPageIndex, isLastPage) {
          expect(pages, hasLength(4));
          expect(currentPageIndex, 0);
          expect(isLastPage, isFalse);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<InstructionsBloc, InstructionsState>(
    'marks the last page correctly when the page changes',
    build: InstructionsBloc.new,
    act: (bloc) {
      bloc.add(const InstructionsEvent.pageChanged(pageIndex: 3));
    },
    verify: (bloc) {
      bloc.state.maybeWhen(
        loaded: (pages, currentPageIndex, isLastPage) {
          expect(currentPageIndex, 3);
          expect(isLastPage, isTrue);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );
}
