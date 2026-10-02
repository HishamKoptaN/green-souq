part of 'ratings_bloc.dart';

@freezed
abstract class RatingsState with _$RatingsState {
  const RatingsState._();
  const factory RatingsState.initial() = _Initial;
  const factory RatingsState.loading() = _Loading;
  const factory RatingsState.loaded({required int selectedRating}) = _Loaded;
  const factory RatingsState.success() = _Success;
  const factory RatingsState.failure({required ErrorInfo errorInfo}) = _Failure;

  int? get selectedRating {
    return mapOrNull(
      loaded: (st) {
        return st.selectedRating;
      },
    );
  }
}
