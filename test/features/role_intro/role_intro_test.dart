import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/role_intro/domain/usecases/get_role_intro_usecase.dart';
import 'package:green/features/role_intro/present/bloc/role_intro_cubit.dart';

void main() {
  const useCase = GetRoleIntroUseCase();

  test('content exists for every user type', () {
    for (final type in UserType.values) {
      final slide = useCase(type);
      expect(slide.title.isNotEmpty, isTrue);
      expect(slide.benefits.length, 3);
    }
  });

  test('job seeker slide carries Stitch content', () {
    final slide = useCase(UserType.jobSeeker);
    expect(slide.badge, contains('وظائف زراعية'));
    expect(slide.benefits.first.title, contains('الوظائف'));
    expect(slide.footerNote, contains('عقود موثقة'));
  });

  test('continue button requires a real interaction', () {
    final cubit = RoleIntroCubit(useCase, UserType.farmer);
    expect(cubit.canContinue, isFalse);
    cubit.viewed();
    expect(cubit.canContinue, isTrue);
  });
}
