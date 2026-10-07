// import 'package:country_state_city/country_state_city.dart';

// class EgyptLocations {
//   static Future<List<String>> getGovernorates() async {
//     final states = await getStatesOfCountry('EG');
//     return states.map((s) => s.name).toList();
//   }

//   static Future<List<String>> getDistricts(String? governorateName) async {
//     if (governorateName == null) return [];
//     final states = await getStatesOfCountry('EG');
//     try {
//       final state = states.firstWhere((s) => s.name == governorateName);
//       final cities = await getStateCities('EG', state.isoCode);
//       return cities.map((c) => c.name).toList();
//     } catch (_) {
//       return [];
//     }
//   }
// }
