part of 'cmnts_bloc.dart';

@freezed
class CmntsEvent with _$CmntsEvent {
  const factory CmntsEvent.getCmnts({
    required int page,
    required int commentableId,
    required String commentableType,
  }) = _GetCmnts;
  const factory CmntsEvent.createCmnt() = _CreateCmnt;
  const factory CmntsEvent.dataChanged(CreateCmntEntity createCmnt) =
      _DataChanged;
}
