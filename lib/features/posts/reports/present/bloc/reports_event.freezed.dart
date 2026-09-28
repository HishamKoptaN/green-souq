// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportEvent {

 ReportReq? get reportReq;
/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportEventCopyWith<ReportEvent> get copyWith => _$ReportEventCopyWithImpl<ReportEvent>(this as ReportEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReportEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportEvent&&(identical(other.reportReq, _this.reportReq) || other.reportReq == _this.reportReq));
}


@override
int get hashCode {
  final _this = this as ReportEvent;
  return Object.hash(runtimeType,_this.reportReq);
}

@override
String toString() {
  final _this = this as ReportEvent;
  return 'ReportEvent(reportReq: ${_this.reportReq})';
}


}

/// @nodoc
abstract mixin class $ReportEventCopyWith<$Res>  {
  factory $ReportEventCopyWith(ReportEvent value, $Res Function(ReportEvent) _then) = _$ReportEventCopyWithImpl;
@useResult
$Res call({
 ReportReq? reportReq
});


$ReportReqCopyWith<$Res>? get reportReq;

}
/// @nodoc
class _$ReportEventCopyWithImpl<$Res>
    implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._self, this._then);

  final ReportEvent _self;
  final $Res Function(ReportEvent) _then;

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportReq = freezed,}) {
  return _then(ReportEvent.report(
reportReq: freezed == reportReq ? _self.reportReq : reportReq // ignore: cast_nullable_to_non_nullable
as ReportReq?,
  ));
}
/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportReqCopyWith<$Res>? get reportReq {
    if (_self.reportReq == null) {
    return null;
  }

  return $ReportReqCopyWith<$Res>(_self.reportReq!, (value) {
    return _then(_self.copyWith(reportReq: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportEvent].
extension ReportEventPatterns on ReportEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Report value)?  report,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Report() when report != null:
return report(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Report value)  report,}){
final _that = this;
switch (_that) {
case _Report():
return report(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Report value)?  report,}){
final _that = this;
switch (_that) {
case _Report() when report != null:
return report(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ReportReq? reportReq)?  report,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Report() when report != null:
return report(_that.reportReq);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ReportReq? reportReq)  report,}) {final _that = this;
switch (_that) {
case _Report():
return report(_that.reportReq);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ReportReq? reportReq)?  report,}) {final _that = this;
switch (_that) {
case _Report() when report != null:
return report(_that.reportReq);case _:
  return null;

}
}

}

/// @nodoc


class _Report implements ReportEvent {
  const _Report({required this.reportReq});
  

@override final  ReportReq? reportReq;

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCopyWith<_Report> get copyWith => __$ReportCopyWithImpl<_Report>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Report&&(identical(other.reportReq, reportReq) || other.reportReq == reportReq));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reportReq);
}

@override
String toString() {
    return 'ReportEvent.report(reportReq: $reportReq)';
}


}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportEventCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) = __$ReportCopyWithImpl;
@override @useResult
$Res call({
 ReportReq? reportReq
});


@override $ReportReqCopyWith<$Res>? get reportReq;

}
/// @nodoc
class __$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportReq = freezed,}) {
  return _then(_Report(
reportReq: freezed == reportReq ? _self.reportReq : reportReq // ignore: cast_nullable_to_non_nullable
as ReportReq?,
  ));
}

/// Create a copy of ReportEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportReqCopyWith<$Res>? get reportReq {
    if (_self.reportReq == null) {
    return null;
  }

  return $ReportReqCopyWith<$Res>(_self.reportReq!, (value) {
    return _then(_self.copyWith(reportReq: value));
  });
}
}

// dart format on
