import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/entities/role_intro_benefit.dart';

/// ترجمة أيقونات المحتوى إلى أيقونات FontAwesome المعتمدة.
FaIconData iconFor(RoleIntroIcon icon) {
  return switch (icon) {
    .store => FontAwesomeIcons.store,
    .inventory => FontAwesomeIcons.boxesStacked,
    .radar => FontAwesomeIcons.magnifyingGlass,
    .handyman => FontAwesomeIcons.screwdriverWrench,
    .receipt => FontAwesomeIcons.receipt,
    .delivery => FontAwesomeIcons.truck,
    .briefcase => FontAwesomeIcons.briefcase,
    .map => FontAwesomeIcons.mapLocation,
    .chart => FontAwesomeIcons.chartLine,
    .nature => FontAwesomeIcons.seedling,
    .auction => FontAwesomeIcons.gavel,
    .cart => FontAwesomeIcons.basketShopping,
    .search => FontAwesomeIcons.magnifyingGlass,
    .send => FontAwesomeIcons.paperPlane,
    .profile => FontAwesomeIcons.userTie,
    .shield => FontAwesomeIcons.shieldHalved,
  };
}
