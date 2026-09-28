// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_date_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduledDateTime _$ScheduledDateTimeFromJson(Map<String, dynamic> json) =>
    _ScheduledDateTime(
      selectedYear: json['selectedYear'] as String?,
      selectedMonth: json['selectedMonth'] as String?,
      selectedDay: json['selectedDay'] as String?,
      selectedHour: json['selectedHour'] as String?,
      selectedMinute: json['selectedMinute'] as String?,
      publishDateString: json['publishDateString'] as String?,
    );

Map<String, dynamic> _$ScheduledDateTimeToJson(_ScheduledDateTime instance) =>
    <String, dynamic>{
      'selectedYear': instance.selectedYear,
      'selectedMonth': instance.selectedMonth,
      'selectedDay': instance.selectedDay,
      'selectedHour': instance.selectedHour,
      'selectedMinute': instance.selectedMinute,
      'publishDateString': instance.publishDateString,
    };
