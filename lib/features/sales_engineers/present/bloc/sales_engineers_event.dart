part of 'sales_engineers_bloc.dart';

@freezed
abstract class SalesEngineersEvent with _$SalesEngineersEvent {
  const factory SalesEngineersEvent.getSalesEngineers({
    @Default(1) int page,
    String? query,
  }) = _GetSalesEngineers;
}
