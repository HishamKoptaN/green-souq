import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edited_profile_entity.freezed.dart';

@freezed
abstract class EditedProfileEntity with _$EditedProfileEntity {
  const factory EditedProfileEntity({
    String? avatar,
    GenericFormInput? name,
    String? bio,
    String? address,
    String? latitude,
    String? longitude,
    String? phone,
  }) = _EditedProfileEntity;
}
