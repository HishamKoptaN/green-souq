import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_intro_benefit.freezed.dart';

/// أيقونة ميزة في الشاشة التعريفية (تُترجم إلى FontAwesome في الواجهة).
enum RoleIntroIcon {
  store, inventory, radar, handyman, receipt, delivery,
  briefcase, map, chart, nature, auction, cart, search, send, profile, shield,
}

@freezed
abstract class RoleIntroBenefit with _$RoleIntroBenefit {
  const factory RoleIntroBenefit({
    required RoleIntroIcon icon,
    required String title,
    required String body,
  }) = _RoleIntroBenefit;
}
