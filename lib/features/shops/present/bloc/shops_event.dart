part of 'shops_bloc.dart';

@freezed
abstract class ShopsEvent with _$ShopsEvent {
  const factory ShopsEvent.getShops({@Default(1) int page, String? query}) =
      _GetShops;
  const factory ShopsEvent.recordVisit({required String id}) = _RecordVisit;
}
