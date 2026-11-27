import 'package:flutter_test/flutter_test.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:green/features/auth/auth_choice/domain/entities/profile_completion_entity.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';

ProfileCompletionEntity entity({
  required String name,
  String initialName = '',
  UserType? type,
}) {
  return ProfileCompletionEntity(
    name: GenericFormInput.dirty(value: name),
    initialName: initialName,
    userType: type,
  );
}

void main() {
  test('disabled without changes or valid data', () {
    expect(entity(name: '').canSubmit, isFalse);
    expect(entity(name: 'اسم', initialName: 'اسم').canSubmit, isFalse);
  });

  test('disabled when name or type is missing', () {
    expect(entity(name: '', type: UserType.farmer).canSubmit, isFalse);
    expect(entity(name: 'اسم').canSubmit, isFalse);
  });

  test('enabled only with a real change and all required fields', () {
    expect(entity(name: 'اسم', type: UserType.shop).canSubmit, isTrue);
    expect(entity(name: 'اسم جديد', initialName: 'اسم', type: UserType.farmer).canSubmit, isTrue);
  });
}
