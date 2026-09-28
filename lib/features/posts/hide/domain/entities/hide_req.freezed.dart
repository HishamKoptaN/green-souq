// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hide_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HideReq {

 int get id; String get type;
/// Create a copy of HideReq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HideReqCopyWith<HideReq> get copyWith => _$HideReqCopyWithImpl<HideReq>(this as HideReq, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HideReq;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HideReq&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type));
}


@override
int get hashCode {
  final _this = this as HideReq;
  return Object.hash(runtimeType,_this.id,_this.type);
}

@override
String toString() {
  final _this = this as HideReq;
  return 'HideReq(id: ${_this.id}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $HideReqCopyWith<$Res>  {
  factory $HideReqCopyWith(HideReq value, $Res Function(HideReq) _then) = _$HideReqCopyWithImpl;
@useResult
$Res call({
 int id, String type
});




}
/// @nodoc
class _$HideReqCopyWithImpl<$Res>
    implements $HideReqCopyWith<$Res> {
  _$HideReqCopyWithImpl(this._self, this._then);

  final HideReq _self;
  final $Res Function(HideReq) _then;

/// Create a copy of HideReq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,}) {
  return _then(HideReq(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HideReq].
extension HideReqPatterns on HideReq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HideReq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HideReq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HideReq value)  $default,){
final _that = this;
switch (_that) {
case _HideReq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HideReq value)?  $default,){
final _that = this;
switch (_that) {
case _HideReq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HideReq() when $default != null:
return $default(_that.id,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type)  $default,) {final _that = this;
switch (_that) {
case _HideReq():
return $default(_that.id,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type)?  $default,) {final _that = this;
switch (_that) {
case _HideReq() when $default != null:
return $default(_that.id,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _HideReq implements HideReq {
  const _HideReq({required this.id, required this.type});
  

@override final  int id;
@override final  String type;

/// Create a copy of HideReq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HideReqCopyWith<_HideReq> get copyWith => __$HideReqCopyWithImpl<_HideReq>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HideReq&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,type);
}

@override
String toString() {
    return 'HideReq(id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class _$HideReqCopyWith<$Res> implements $HideReqCopyWith<$Res> {
  factory _$HideReqCopyWith(_HideReq value, $Res Function(_HideReq) _then) = __$HideReqCopyWithImpl;
@override @useResult
$Res call({
 int id, String type
});




}
/// @nodoc
class __$HideReqCopyWithImpl<$Res>
    implements _$HideReqCopyWith<$Res> {
  __$HideReqCopyWithImpl(this._self, this._then);

  final _HideReq _self;
  final $Res Function(_HideReq) _then;

/// Create a copy of HideReq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,}) {
  return _then(_HideReq(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
