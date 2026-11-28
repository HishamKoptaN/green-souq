import 'package:freezed_annotation/freezed_annotation.dart';

import 'role_intro_benefit.dart';

part 'role_intro_slide.freezed.dart';

@freezed
abstract class RoleIntroSlide with _$RoleIntroSlide {
  const factory RoleIntroSlide({
    required String badge,
    required String title,
    required String description,
    @Default(<RoleIntroBenefit>[]) List<RoleIntroBenefit> benefits,
    String? footerNote,
    @Default('ابدأ الآن') String actionLabel,
    String? loginHint,
  }) = _RoleIntroSlide;
}
