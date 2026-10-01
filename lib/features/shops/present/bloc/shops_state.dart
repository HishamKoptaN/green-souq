part of 'shops_bloc.dart';

@freezed
abstract class ShopsState with _$ShopsState {
  const factory ShopsState.loading() = _Loading;
  const factory ShopsState.loaded({
    required ShopsResEntity shopsRes,
    String? query,
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
  }) = _Loaded;
  const factory ShopsState.failure({required ErrorInfo errorInfo}) = _Failure;
}
