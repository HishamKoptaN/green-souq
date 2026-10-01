import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_cmnt_entity.freezed.dart';

@freezed
abstract class CreateCmntEntity with _$CreateCmntEntity {
  const factory CreateCmntEntity({
    @Default(GenericFormInput.pure()) GenericFormInput comment,
    String? image,
    String? video,
    int? commentableId,
    String? commentableType,
  }) = _CreateCmntEntity;
}
