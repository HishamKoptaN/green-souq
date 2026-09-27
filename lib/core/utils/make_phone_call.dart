import 'package:url_launcher/url_launcher.dart';

Future<void> makePhoneCall(String phoneNumber) async {
  final String cleanNumber = phoneNumber.replaceAll(RegExp(r'\s+'), '');
  final Uri launchUri = Uri(scheme: 'tel', path: cleanNumber);

  try {
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {}
  } catch (e) {}
}

Future<void> openWhatsApp(String phoneNumber) async {
  final String cleanNumber = phoneNumber.replaceAll(RegExp(r'\s+'), '');
  final Uri launchUri = Uri(scheme: 'https', host: 'wa.me', path: cleanNumber);

  try {
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {}
  } catch (e) {}
}

Future<void> openGoogleMaps(String lat, String lng) async {
  final Uri googleMapsUri = Uri.parse(
    'https://www.google.com/maps/search/?api=1&query=$lat,$lng',
  );
  try {
    if (await canLaunchUrl(googleMapsUri)) {
      await launchUrl(googleMapsUri, mode: .externalApplication);
    } else {}
  } catch (e) {}
}
