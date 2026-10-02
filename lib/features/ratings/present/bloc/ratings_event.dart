part of 'ratings_bloc.dart';

@freezed
abstract class RatingsEvent with _$RatingsEvent {
  const factory RatingsEvent.rate({
    required int id,
    required int value,
    required String type,
  }) = _Rate;
}
