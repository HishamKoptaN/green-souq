import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/suggestions/domain/entities/suggestion_entity.dart';
import 'package:green/features/suggestions/domain/repo/suggestions_repo.dart';
import 'package:green/features/suggestions/domain/usecases/create_suggestion_usecase.dart';
import 'package:green/features/suggestions/domain/usecases/get_suggestions_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockSuggestionsRepo extends Mock implements SuggestionsRepo {}

void main() {
  late MockSuggestionsRepo repo;
  final suggestion = SuggestionEntity(
    id: '1',
    title: 'اقتراح',
    description: 'وصف',
    createdAt: DateTime(2026),
  );

  setUp(() {
    registerFallbackValue(suggestion);
    repo = MockSuggestionsRepo();
  });

  test('get suggestions delegates to the repository', () async {
    when(() => repo.getSuggestions()).thenAnswer((_) async => [suggestion]);

    final result = await GetSuggestionsUseCase(repo)();

    expect(result, [suggestion]);
  });

  test('create suggestion delegates to the repository', () async {
    when(() => repo.createSuggestion(any())).thenAnswer((_) async {});

    await CreateSuggestionUseCase(repo)(suggestion);

    verify(() => repo.createSuggestion(suggestion)).called(1);
  });
}
