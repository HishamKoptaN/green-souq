part of 'shops_bloc.dart';

@freezed
abstract class ShopsState with _$ShopsState {
  const ShopsState._();
  const factory ShopsState.loading() = _Loading;
  const factory ShopsState.loaded({
    ShopEntity? shopDetail,
    required ShopsResEntity shopsRes,
    String? query,
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isLoading,
  }) = _Loaded;
  const factory ShopsState.failure({required ErrorInfo errorInfo}) = _Failure;
  bool get isLoading {
    return maybeMap(
      loaded: (value) {
        return value.isLoading;
      },
      orElse: () {
        return false;
      },
    );
  }
}
