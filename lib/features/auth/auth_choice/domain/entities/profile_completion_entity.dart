import 'package:form_inputs/form_inputs.dart';

import '../../../sign_up/domain/entities/sign_up_req_entity.dart';

/// حالة إكمال الملف الشخصي بعد الدخول بـ Google أو زائر.
class ProfileCompletionEntity {
  const ProfileCompletionEntity({
    required this.name,
    required this.initialName,
    this.userType,
    this.initialUserType,
  });

  final GenericFormInput name;
  final String initialName;
  final UserType? userType;
  final UserType? initialUserType;

  /// يوجد تغيير فعلي مقارنة بالبيانات القادمة من Firebase.
  bool get hasChanges =>
      name.value.trim() != initialName.trim() || userType != initialUserType;

  /// الاسم صالح ونوع الحساب محدد.
  bool get isValid => name.isValid && userType != null;

  /// لا يُفعّل الزر إلا بوجود تغيير فعلي وبيانات صالحة معاً.
  bool get canSubmit => hasChanges && isValid;
}
