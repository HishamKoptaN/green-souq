part of 'shops_bloc.dart';

@freezed
abstract class ShopsEvent with _$ShopsEvent {
  const factory ShopsEvent.watch() = _Watch;
  const factory ShopsEvent.fetchNext() = _FetchNext;
  const factory ShopsEvent.search({String? query}) = _Search;
  const factory ShopsEvent.refresh() = _Refresh;
}
