import 'package:freezed_annotation/freezed_annotation.dart';
part 'occasions_event.freezed.dart';

@freezed
abstract class OccasionsEvent with _$OccasionsEvent {
  const factory OccasionsEvent.toggleOcassionInterest({
    required int? id,
  }) = _ToggleOcassionInterest;
}
