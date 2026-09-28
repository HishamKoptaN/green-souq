// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_date_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduledDateTime {

@JsonKey() String? get selectedYear;@JsonKey() String? get selectedMonth;@JsonKey() String? get selectedDay;@JsonKey() String? get selectedHour;@JsonKey() String? get selectedMinute;@JsonKey() String? get publishDateString;
/// Create a copy of ScheduledDateTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduledDateTimeCopyWith<ScheduledDateTime> get copyWith => _$ScheduledDateTimeCopyWithImpl<ScheduledDateTime>(this as ScheduledDateTime, _$identity);

  /// Serializes this ScheduledDateTime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ScheduledDateTime;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduledDateTime&&(identical(other.selectedYear, _this.selectedYear) || other.selectedYear == _this.selectedYear)&&(identical(other.selectedMonth, _this.selectedMonth) || other.selectedMonth == _this.selectedMonth)&&(identical(other.selectedDay, _this.selectedDay) || other.selectedDay == _this.selectedDay)&&(identical(other.selectedHour, _this.selectedHour) || other.selectedHour == _this.selectedHour)&&(identical(other.selectedMinute, _this.selectedMinute) || other.selectedMinute == _this.selectedMinute)&&(identical(other.publishDateString, _this.publishDateString) || other.publishDateString == _this.publishDateString));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ScheduledDateTime;
  return Object.hash(runtimeType,_this.selectedYear,_this.selectedMonth,_this.selectedDay,_this.selectedHour,_this.selectedMinute,_this.publishDateString);
}

@override
String toString() {
  final _this = this as ScheduledDateTime;
  return 'ScheduledDateTime(selectedYear: ${_this.selectedYear}, selectedMonth: ${_this.selectedMonth}, selectedDay: ${_this.selectedDay}, selectedHour: ${_this.selectedHour}, selectedMinute: ${_this.selectedMinute}, publishDateString: ${_this.publishDateString})';
}


}

/// @nodoc
abstract mixin class $ScheduledDateTimeCopyWith<$Res>  {
  factory $ScheduledDateTimeCopyWith(ScheduledDateTime value, $Res Function(ScheduledDateTime) _then) = _$ScheduledDateTimeCopyWithImpl;
@useResult
$Res call({
@JsonKey() String? selectedYear,@JsonKey() String? selectedMonth,@JsonKey() String? selectedDay,@JsonKey() String? selectedHour,@JsonKey() String? selectedMinute,@JsonKey() String? publishDateString
});




}
/// @nodoc
class _$ScheduledDateTimeCopyWithImpl<$Res>
    implements $ScheduledDateTimeCopyWith<$Res> {
  _$ScheduledDateTimeCopyWithImpl(this._self, this._then);

  final ScheduledDateTime _self;
  final $Res Function(ScheduledDateTime) _then;

/// Create a copy of ScheduledDateTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedYear = freezed,Object? selectedMonth = freezed,Object? selectedDay = freezed,Object? selectedHour = freezed,Object? selectedMinute = freezed,Object? publishDateString = freezed,}) {
  return _then(ScheduledDateTime(
selectedYear: freezed == selectedYear ? _self.selectedYear : selectedYear // ignore: cast_nullable_to_non_nullable
as String?,selectedMonth: freezed == selectedMonth ? _self.selectedMonth : selectedMonth // ignore: cast_nullable_to_non_nullable
as String?,selectedDay: freezed == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as String?,selectedHour: freezed == selectedHour ? _self.selectedHour : selectedHour // ignore: cast_nullable_to_non_nullable
as String?,selectedMinute: freezed == selectedMinute ? _self.selectedMinute : selectedMinute // ignore: cast_nullable_to_non_nullable
as String?,publishDateString: freezed == publishDateString ? _self.publishDateString : publishDateString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScheduledDateTime].
extension ScheduledDateTimePatterns on ScheduledDateTime {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduledDateTime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduledDateTime() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduledDateTime value)  $default,){
final _that = this;
switch (_that) {
case _ScheduledDateTime():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduledDateTime value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduledDateTime() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey()  String? selectedYear, @JsonKey()  String? selectedMonth, @JsonKey()  String? selectedDay, @JsonKey()  String? selectedHour, @JsonKey()  String? selectedMinute, @JsonKey()  String? publishDateString)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduledDateTime() when $default != null:
return $default(_that.selectedYear,_that.selectedMonth,_that.selectedDay,_that.selectedHour,_that.selectedMinute,_that.publishDateString);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey()  String? selectedYear, @JsonKey()  String? selectedMonth, @JsonKey()  String? selectedDay, @JsonKey()  String? selectedHour, @JsonKey()  String? selectedMinute, @JsonKey()  String? publishDateString)  $default,) {final _that = this;
switch (_that) {
case _ScheduledDateTime():
return $default(_that.selectedYear,_that.selectedMonth,_that.selectedDay,_that.selectedHour,_that.selectedMinute,_that.publishDateString);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey()  String? selectedYear, @JsonKey()  String? selectedMonth, @JsonKey()  String? selectedDay, @JsonKey()  String? selectedHour, @JsonKey()  String? selectedMinute, @JsonKey()  String? publishDateString)?  $default,) {final _that = this;
switch (_that) {
case _ScheduledDateTime() when $default != null:
return $default(_that.selectedYear,_that.selectedMonth,_that.selectedDay,_that.selectedHour,_that.selectedMinute,_that.publishDateString);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduledDateTime implements ScheduledDateTime {
  const _ScheduledDateTime({@JsonKey() this.selectedYear, @JsonKey() this.selectedMonth, @JsonKey() this.selectedDay, @JsonKey() this.selectedHour, @JsonKey() this.selectedMinute, @JsonKey() this.publishDateString});
  factory _ScheduledDateTime.fromJson(Map<String, dynamic> json) => _$ScheduledDateTimeFromJson(json);

@override@JsonKey() final  String? selectedYear;
@override@JsonKey() final  String? selectedMonth;
@override@JsonKey() final  String? selectedDay;
@override@JsonKey() final  String? selectedHour;
@override@JsonKey() final  String? selectedMinute;
@override@JsonKey() final  String? publishDateString;

/// Create a copy of ScheduledDateTime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduledDateTimeCopyWith<_ScheduledDateTime> get copyWith => __$ScheduledDateTimeCopyWithImpl<_ScheduledDateTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduledDateTimeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduledDateTime&&(identical(other.selectedYear, selectedYear) || other.selectedYear == selectedYear)&&(identical(other.selectedMonth, selectedMonth) || other.selectedMonth == selectedMonth)&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.selectedHour, selectedHour) || other.selectedHour == selectedHour)&&(identical(other.selectedMinute, selectedMinute) || other.selectedMinute == selectedMinute)&&(identical(other.publishDateString, publishDateString) || other.publishDateString == publishDateString));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,selectedYear,selectedMonth,selectedDay,selectedHour,selectedMinute,publishDateString);
}

@override
String toString() {
    return 'ScheduledDateTime(selectedYear: $selectedYear, selectedMonth: $selectedMonth, selectedDay: $selectedDay, selectedHour: $selectedHour, selectedMinute: $selectedMinute, publishDateString: $publishDateString)';
}


}

/// @nodoc
abstract mixin class _$ScheduledDateTimeCopyWith<$Res> implements $ScheduledDateTimeCopyWith<$Res> {
  factory _$ScheduledDateTimeCopyWith(_ScheduledDateTime value, $Res Function(_ScheduledDateTime) _then) = __$ScheduledDateTimeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey() String? selectedYear,@JsonKey() String? selectedMonth,@JsonKey() String? selectedDay,@JsonKey() String? selectedHour,@JsonKey() String? selectedMinute,@JsonKey() String? publishDateString
});




}
/// @nodoc
class __$ScheduledDateTimeCopyWithImpl<$Res>
    implements _$ScheduledDateTimeCopyWith<$Res> {
  __$ScheduledDateTimeCopyWithImpl(this._self, this._then);

  final _ScheduledDateTime _self;
  final $Res Function(_ScheduledDateTime) _then;

/// Create a copy of ScheduledDateTime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedYear = freezed,Object? selectedMonth = freezed,Object? selectedDay = freezed,Object? selectedHour = freezed,Object? selectedMinute = freezed,Object? publishDateString = freezed,}) {
  return _then(_ScheduledDateTime(
selectedYear: freezed == selectedYear ? _self.selectedYear : selectedYear // ignore: cast_nullable_to_non_nullable
as String?,selectedMonth: freezed == selectedMonth ? _self.selectedMonth : selectedMonth // ignore: cast_nullable_to_non_nullable
as String?,selectedDay: freezed == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as String?,selectedHour: freezed == selectedHour ? _self.selectedHour : selectedHour // ignore: cast_nullable_to_non_nullable
as String?,selectedMinute: freezed == selectedMinute ? _self.selectedMinute : selectedMinute // ignore: cast_nullable_to_non_nullable
as String?,publishDateString: freezed == publishDateString ? _self.publishDateString : publishDateString // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
