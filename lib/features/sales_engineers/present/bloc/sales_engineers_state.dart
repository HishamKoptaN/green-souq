part of 'sales_engineers_bloc.dart';

@freezed
abstract class SalesEngineersState with _$SalesEngineersState {
  const factory SalesEngineersState.loading() = _Loading;
  const factory SalesEngineersState.loaded({
    required SalesEngineersResEntity salesEngineersRes,
    String? query,
    @Default(false) bool isSearching,
  }) = _Loaded;
  const factory SalesEngineersState.failure({required ErrorInfo errorInfo}) =
      _Failure;
}
