part of 'ratings_bloc.dart';

@freezed
abstract class RatingsEvent with _$RatingsEvent {
  const factory RatingsEvent.rate({required String id, required int rating}) =
      _Rate;
}
