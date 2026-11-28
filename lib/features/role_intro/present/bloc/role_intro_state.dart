part of 'role_intro_cubit.dart';

/// حالة الشاشة التعريفية حسب نوع المستخدم.
class RoleIntroState {
  const RoleIntroState({
    required this.slide,
    this.hasChanges = false,
  });

  final RoleIntroSlide slide;
  final bool hasChanges;

  RoleIntroState copyWith({
    RoleIntroSlide? slide,
    bool? hasChanges,
  }) {
    return RoleIntroState(
      slide: slide ?? this.slide,
      hasChanges: hasChanges ?? this.hasChanges,
    );
  }
}
