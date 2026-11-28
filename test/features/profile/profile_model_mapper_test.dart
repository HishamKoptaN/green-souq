import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/profile/data/mappers/profile_model_mapper.dart';
import 'package:green/features/profile/data/models/profile_res_model.dart';

void main() {
  test('falls back to the Google name when the profile name is empty', () {
    const model = ProfileModel(id: 1, name: '   ', userType: 'farmer');

    final entity = model.toEntity(email: 'a@b.com', googleName: 'من جوجل');

    expect(entity.name, 'من جوجل');
    expect(entity.userType, UserType.farmer);
    expect(entity.email, 'a@b.com');
  });

  test('keeps the profile name and defaults an unknown user type', () {
    const model = ProfileModel(id: 2, name: 'اسمي', userType: 'unknown');

    final entity = model.toEntity(email: 'a@b.com');

    expect(entity.name, 'اسمي');
    expect(entity.userType, UserType.farmer);
    expect(entity.phone, '');
  });
}
