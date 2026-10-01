part of 'sales_engineers_bloc.dart';

@freezed
abstract class SalesEngineersEvent with _$SalesEngineersEvent {
  const factory SalesEngineersEvent.watch() = _Watch;
  const factory SalesEngineersEvent.fetchNext() = _FetchNext;
  const factory SalesEngineersEvent.search({String? query}) = _Search;
  const factory SalesEngineersEvent.refresh() = _Refresh;
}
