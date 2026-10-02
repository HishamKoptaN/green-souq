import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bus_events/app_event_bus.dart';
import '../../../../core/bus_events/global_events.dart';
import '../../domain/usecases/ratings_use_cases.dart';
part 'ratings_bloc.freezed.dart';
part 'ratings_event.dart';
part 'ratings_state.dart';

@lazySingleton
class RatingsBloc extends Bloc<RatingsEvent, RatingsState> {
  final RatingsUseCases _ratingsUseCases;
  RatingsBloc(this._ratingsUseCases) : super(const .initial()) {
    on<RatingsEvent>((event, emit) async {
      await event.map(
        rate: (ev) async {
          emit(const .loading());
          await _ratingsUseCases
              .rate(id: ev.id, type: ev.type, rating: ev.value)
              .then((result) async {
                await result.when(
                  success: (_) {
                    emit(const .success());
                    AppEventBus.fire(
                      RatingUpdatedEvent(
                        rateableId: ev.id,
                        rateableType: ev.type,
                        newRating: ev.value,
                      ),
                    );
                  },
                  failure: (errorInfo) {
                    emit(.failure(errorInfo: errorInfo));
                  },
                );
              });
        },
      );
    });
  }
}
