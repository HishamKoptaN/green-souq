part of 'shops_bloc.dart';

@freezed
abstract class ShopsState with _$ShopsState {
  const factory ShopsState.loading() = _Loading;
  const factory ShopsState.loaded({required ShopsResEntity shopsRes}) = _Loaded;
  const factory ShopsState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
