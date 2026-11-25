import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/onboarding_slide_entity.dart';
import '../../domain/repositories/onboarding_repository.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

@singleton
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(this._repository) : super(.initial()) {
    on<OnboardingEvent>((event, emit) async {
      await event.when(
        started: () async {
          final completed = await _repository.isCompleted();
          emit(
            .ready(
              slides: _repository.getSlides(),
              isCompleted: completed,
            ),
          );
        },
        pageChanged: (index) {
          final current = state.maybeWhen(
            ready: (slides, _, completed) => OnboardingState.ready(
              slides: slides,
              currentPageIndex: index,
              isCompleted: completed,
            ),
            orElse: () => state,
          );
          emit(current);
        },
        completed: () async {
          await _repository.markCompleted();
          final current = state.maybeWhen(
            ready: (slides, index, _) => OnboardingState.ready(
              slides: slides,
              currentPageIndex: index,
              isCompleted: true,
            ),
            orElse: () => state,
          );
          emit(current);
        },
      );
    });
    add(const .started());
  }

  bool get isReady {
    return state.maybeWhen(
      ready: (_, _, _) {
        return true;
      },
      orElse: () {
        return false;
      },
    );
  }

  Future<void> waitUntilReady() {
    if (isReady) {
      return Future.value();
    }
    return stream.firstWhere((state) {
      return state.maybeWhen(
        ready: (_, _, _) {
          return true;
        },
        orElse: () {
          return false;
        },
      );
    });
  }

  final OnboardingRepository _repository;
}
