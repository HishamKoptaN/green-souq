import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/suggestion_entity.dart';
import '../../domain/usecases/create_suggestion_usecase.dart';
import '../../domain/usecases/get_suggestions_usecase.dart';
import 'suggestions_event.dart';
import 'suggestions_state.dart';

@injectable
class SuggestionsBloc extends Bloc<SuggestionsEvent, SuggestionsState> {
  final GetSuggestionsUseCase _getSuggestionsUseCase;
  final CreateSuggestionUseCase _createSuggestionUseCase;

  SuggestionsBloc(
    this._getSuggestionsUseCase,
    this._createSuggestionUseCase,
  ) : super(const SuggestionsState.initial()) {
    on<_Fetch>(_onFetch);
    on<_Create>(_onCreate);
  }

  Future<void> _onFetch(_Fetch event, Emitter<SuggestionsState> emit) async {
    emit(const SuggestionsState.loading());
    try {
      final suggestions = await _getSuggestionsUseCase();
      emit(SuggestionsState.loaded(suggestions));
    } catch (e) {
      emit(SuggestionsState.error(e.toString()));
    }
  }

  Future<void> _onCreate(_Create event, Emitter<SuggestionsState> emit) async {
    emit(const SuggestionsState.loading());
    try {
      final suggestion = SuggestionEntity(
        id: '',
        title: event.title,
        description: event.description,
        createdAt: DateTime.now(),
      );
      await _createSuggestionUseCase(suggestion);
      final suggestions = await _getSuggestionsUseCase();
      emit(SuggestionsState.loaded(suggestions));
    } catch (e) {
      emit(SuggestionsState.error(e.toString()));
    }
  }
}
