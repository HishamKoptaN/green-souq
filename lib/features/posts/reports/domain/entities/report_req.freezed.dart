// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportReq {

 int get id; String get type; String get reason;
/// Create a copy of ReportReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportReqCopyWith<ReportReq> get copyWith => _$ReportReqCopyWithImpl<ReportReq>(this as ReportReq, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReportReq;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportReq&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}


@override
int get hashCode {
  final _this = this as ReportReq;
  return Object.hash(runtimeType,_this.id,_this.type,_this.reason);
}

@override
String toString() {
  final _this = this as ReportReq;
  return 'ReportReq(id: ${_this.id}, type: ${_this.type}, reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $ReportReqCopyWith<$Res>  {
  factory $ReportReqCopyWith(ReportReq value, $Res Function(ReportReq) _then) = _$ReportReqCopyWithImpl;
@useResult
$Res call({
 int id, String type, String reason
});




}
/// @nodoc
class _$ReportReqCopyWithImpl<$Res>
    implements $ReportReqCopyWith<$Res> {
  _$ReportReqCopyWithImpl(this._self, this._then);

  final ReportReq _self;
  final $Res Function(ReportReq) _then;

/// Create a copy of ReportReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? reason = null,}) {
  return _then(ReportReq(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportReq].
extension ReportReqPatterns on ReportReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportReq value)  $default,){
final _that = this;
switch (_that) {
case _ReportReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportReq value)?  $default,){
final _that = this;
switch (_that) {
case _ReportReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportReq() when $default != null:
return $default(_that.id,_that.type,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type,  String reason)  $default,) {final _that = this;
switch (_that) {
case _ReportReq():
return $default(_that.id,_that.type,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type,  String reason)?  $default,) {final _that = this;
switch (_that) {
case _ReportReq() when $default != null:
return $default(_that.id,_that.type,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class _ReportReq implements ReportReq {
  const _ReportReq({required this.id, required this.type, required this.reason});
  

@override final  int id;
@override final  String type;
@override final  String reason;

/// Create a copy of ReportReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportReqCopyWith<_ReportReq> get copyWith => __$ReportReqCopyWithImpl<_ReportReq>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportReq&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,type,reason);
}

@override
String toString() {
    return 'ReportReq(id: $id, type: $type, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$ReportReqCopyWith<$Res> implements $ReportReqCopyWith<$Res> {
  factory _$ReportReqCopyWith(_ReportReq value, $Res Function(_ReportReq) _then) = __$ReportReqCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, String reason
});




}
/// @nodoc
class __$ReportReqCopyWithImpl<$Res>
    implements _$ReportReqCopyWith<$Res> {
  __$ReportReqCopyWithImpl(this._self, this._then);

  final _ReportReq _self;
  final $Res Function(_ReportReq) _then;

/// Create a copy of ReportReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? reason = null,}) {
  return _then(_ReportReq(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
