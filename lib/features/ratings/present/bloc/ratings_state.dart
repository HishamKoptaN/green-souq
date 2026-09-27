part of 'ratings_bloc.dart';

@freezed
abstract class RatingsState with _$RatingsState {
  const factory RatingsState.initial() = _Initial;
  const factory RatingsState.loading() = _Loading;
  const factory RatingsState.success() = _Success;
  const factory RatingsState.failure({required ErrorInfo errorInfo}) = _Failure;
}
