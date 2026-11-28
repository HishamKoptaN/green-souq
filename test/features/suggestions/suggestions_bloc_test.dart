import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/suggestions/domain/entities/suggestion_entity.dart';
import 'package:green/features/suggestions/domain/usecases/create_suggestion_usecase.dart';
import 'package:green/features/suggestions/domain/usecases/get_suggestions_usecase.dart';
import 'package:green/features/suggestions/present/bloc/suggestions_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetSuggestions extends Mock implements GetSuggestionsUseCase {}

class MockCreateSuggestion extends Mock implements CreateSuggestionUseCase {}

void main() {
  late MockGetSuggestions getSuggestions;
  late MockCreateSuggestion createSuggestion;
  final suggestion = SuggestionEntity(
    id: '1',
    title: 'اقتراح',
    description: 'وصف',
    createdAt: DateTime(2026),
  );

  setUp(() {
    registerFallbackValue(suggestion);
    getSuggestions = MockGetSuggestions();
    createSuggestion = MockCreateSuggestion();
  });

  blocTest<SuggestionsBloc, SuggestionsState>(
    'emits loaded with suggestions',
    build: () {
      when(() => getSuggestions()).thenAnswer((_) async => [suggestion]);
      return SuggestionsBloc(getSuggestions, createSuggestion);
    },
    act: (bloc) {
      bloc.add(const SuggestionsEvent.started());
    },
    expect: () => [isA<SuggestionsState>(), isA<SuggestionsState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        loaded: (suggestions) {
          expect(suggestions, [suggestion]);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<SuggestionsBloc, SuggestionsState>(
    'creates a suggestion then reloads the list',
    build: () {
      when(() => createSuggestion(any())).thenAnswer((_) async {});
      when(() => getSuggestions()).thenAnswer((_) async => [suggestion]);
      return SuggestionsBloc(getSuggestions, createSuggestion);
    },
    act: (bloc) {
      bloc.add(
        const SuggestionsEvent.create(title: 'اقتراح', description: 'وصف'),
      );
    },
    verify: (bloc) {
      verify(() => createSuggestion(any())).called(1);
    },
  );
}
