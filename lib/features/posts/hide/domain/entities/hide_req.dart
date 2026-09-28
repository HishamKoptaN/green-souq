// lib/features/hide/domain/entities/hide_request.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hide_req.freezed.dart';

@freezed
abstract class HideReq with _$HideReq {
  const factory HideReq({required int id, required String type}) = _HideReq;
}
