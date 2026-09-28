import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'scheduled_date_time.freezed.dart';
part 'scheduled_date_time.g.dart';

@freezed
abstract class ScheduledDateTime with _$ScheduledDateTime {
  const factory ScheduledDateTime({
    @JsonKey() String? selectedYear,
    @JsonKey() String? selectedMonth,
    @JsonKey() String? selectedDay,
    @JsonKey() String? selectedHour,
    @JsonKey() String? selectedMinute,
    @JsonKey() String? publishDateString,
  }) = _ScheduledDateTime;

  factory ScheduledDateTime.fromJson(Map<String, dynamic> json) =>
      _$ScheduledDateTimeFromJson(json);

  static ScheduledDateTime empty() => const ScheduledDateTime();
}

extension ScheduledDateTimeX on ScheduledDateTime {
  static const Map<String, int> monthNames = {
    'يناير': 1,
    'فبراير': 2,
    'مارس': 3,
    'أبريل': 4,
    'مايو': 5,
    'يونيو': 6,
    'يوليو': 7,
    'أغسطس': 8,
    'سبتمبر': 9,
    'أكتوبر': 10,
    'نوفمبر': 11,
    'ديسمبر': 12,
  };

  static const List<String> monthNamesList = [
    'يناير',
    'فبراير',
    'مارس',
    'أبريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر',
  ];

  DateTime? get toDateTime {
    try {
      final int year = int.parse(selectedYear ?? '');
      final int month = monthNames[selectedMonth] ?? 1;
      final int day = int.parse(selectedDay ?? '');
      final int hour = int.tryParse(selectedHour ?? '') ?? 0;
      final int minute = int.tryParse(selectedMinute ?? '') ?? 0;
      return DateTime(year, month, day, hour, minute);
    } catch (_) {
      return null;
    }
  }

  String? get formattedArabicDate {
    if (selectedDay != null &&
        selectedMonth != null &&
        selectedYear != null &&
        selectedHour != null &&
        selectedMinute != null &&
        selectedDay!.isNotEmpty &&
        selectedMonth!.isNotEmpty &&
        selectedYear!.isNotEmpty &&
        selectedHour!.isNotEmpty &&
        selectedMinute!.isNotEmpty) {
      return "$selectedDay $selectedMonth $selectedYear - $selectedHour:$selectedMinute";
    }
    return null;
  }

  String? get formattedDateTimeForDatabase {
    final dateTime = toDateTime;
    if (dateTime != null) {
      return DateFormat(
        'yyyy-MM-dd HH:mm:ss',
        'en',
      ).format(
        dateTime,
      );
    }
    return null;
  }
}
