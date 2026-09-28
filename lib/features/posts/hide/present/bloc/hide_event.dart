import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/hide_req.dart';
part 'hide_event.freezed.dart';

@freezed
abstract class HideEvent with _$HideEvent {
  const factory HideEvent.hide({required HideReq? hideReq}) = _Hide;
}
