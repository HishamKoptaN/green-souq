import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/create_cmnt_req_body.dart';
part 'cmnts_event.freezed.dart';

@freezed
class CmntsEvent with _$CmntsEvent {
  const factory CmntsEvent.getCmnts({
    required int postId,
    required int page,
  }) = _GetCmnts;
  const factory CmntsEvent.createCmnt({
    required CreateCmntReqBody createCmntReqBody,
  }) = _CreateCmnt;
}
