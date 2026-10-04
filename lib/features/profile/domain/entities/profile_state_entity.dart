import 'package:freezed_annotation/freezed_annotation.dart';

import 'edited_profile_entity.dart';
import 'profile_entity.dart';
part 'profile_state_entity.freezed.dart';

@freezed
abstract class ProfileStateEntity with _$ProfileStateEntity {
  const ProfileStateEntity._();
  const factory ProfileStateEntity({
    required ProfileEntity profile,
    EditedProfileEntity? editedProfile,
  }) = _ProfileStateEntity;

  String? get avatar {
    return editedProfile?.avatar ?? profile.avatar;
  }

  String? get name {
    return editedProfile?.name?.value ?? profile.name;
  }

  String? get bio {
    return editedProfile?.bio ?? profile.bio;
  }

  String? get phone {
    return editedProfile?.phone ?? profile.phone;
  }

  String? get address {
    return editedProfile?.address ?? profile.address;
  }

  String? get latitude {
    return editedProfile?.latitude ?? profile.latitude;
  }

  String? get longitude {
    return editedProfile?.longitude ?? profile.longitude;
  }

  bool get isChanged {
    return editedProfile?.avatar != null ||
        editedProfile?.name?.value != profile.name ||
        editedProfile?.bio != profile.bio ||
        editedProfile?.phone != profile.phone ||
        editedProfile?.address != profile.address ||
        editedProfile?.latitude != profile.latitude ||
        editedProfile?.longitude != profile.longitude;
  }
}
