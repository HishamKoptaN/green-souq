import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

extension DateTimeFormatter on String {
  DateTime? toLocalDateTime() {
    if (trim().isEmpty) return null;
    String formattedString = replaceFirst(' ', 'T');

    return DateTime.tryParse(formattedString)?.toLocal();
  }

  String toSmartDate() {
    final localDate = toLocalDateTime();

    if (localDate == null) return this;

    final now = DateTime.now();
    final difference = now.difference(localDate);

    try {
      if (difference.inDays < 7) {
        return toTimeAgo();
      } else if (localDate.year == now.year) {
        return DateFormat('d MMMM', 'ar').format(localDate);
      } else {
        return DateFormat('dd/MM/yyyy', 'ar').format(localDate);
      }
    } catch (e) {
      return "${localDate.day}/${localDate.month}/${localDate.year}";
    }
  }

  String toTimeAgo({String locale = 'ar'}) {
    final localDate = toLocalDateTime();
    if (localDate == null) return this;

    timeago.setLocaleMessages('ar', timeago.ArMessages());
    return timeago.format(localDate, locale: locale);
  }
}
