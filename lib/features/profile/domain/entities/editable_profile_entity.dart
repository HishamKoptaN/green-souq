import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
part 'editable_profile_entity.freezed.dart';

@freezed
abstract class EditableProfileEntity with _$EditableProfileEntity {
  EditableProfileEntity._();
  factory EditableProfileEntity({
    required int id,
    UserType? userType,
    XFile? avatar,
    String? avatarPath,
    GenericFormInput? name,
    String? bio,
    String? address,
    String? phone,
    String? email,
    String? rating,
    String? ratingCount,
    String? createdAt,
    int? postsCount,
    int? followersCount,
    EditableProfileEntity? original,
  }) = _EditableProfileEntity;

  bool get isChanged {
    return name?.value != original?.name?.value ||
        bio != original?.bio ||
        address != original?.address ||
        phone != original?.phone ||
        (avatarPath?.isNotEmpty ?? false);
  }
}
