// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpResEntity {

 String get token;
/// Create a copy of SignUpResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpResEntityCopyWith<SignUpResEntity> get copyWith => _$SignUpResEntityCopyWithImpl<SignUpResEntity>(this as SignUpResEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SignUpResEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpResEntity&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as SignUpResEntity;
  return Object.hash(runtimeType,_this.token);
}

@override
String toString() {
  final _this = this as SignUpResEntity;
  return 'SignUpResEntity(token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $SignUpResEntityCopyWith<$Res>  {
  factory $SignUpResEntityCopyWith(SignUpResEntity value, $Res Function(SignUpResEntity) _then) = _$SignUpResEntityCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$SignUpResEntityCopyWithImpl<$Res>
    implements $SignUpResEntityCopyWith<$Res> {
  _$SignUpResEntityCopyWithImpl(this._self, this._then);

  final SignUpResEntity _self;
  final $Res Function(SignUpResEntity) _then;

/// Create a copy of SignUpResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(SignUpResEntity(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpResEntity].
extension SignUpResEntityPatterns on SignUpResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpResEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignUpResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpResEntity() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token)  $default,) {final _that = this;
switch (_that) {
case _SignUpResEntity():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token)?  $default,) {final _that = this;
switch (_that) {
case _SignUpResEntity() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpResEntity implements SignUpResEntity {
  const _SignUpResEntity({required this.token});
  

@override final  String token;

/// Create a copy of SignUpResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpResEntityCopyWith<_SignUpResEntity> get copyWith => __$SignUpResEntityCopyWithImpl<_SignUpResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpResEntity&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,token);
}

@override
String toString() {
    return 'SignUpResEntity(token: $token)';
}


}

/// @nodoc
abstract mixin class _$SignUpResEntityCopyWith<$Res> implements $SignUpResEntityCopyWith<$Res> {
  factory _$SignUpResEntityCopyWith(_SignUpResEntity value, $Res Function(_SignUpResEntity) _then) = __$SignUpResEntityCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$SignUpResEntityCopyWithImpl<$Res>
    implements _$SignUpResEntityCopyWith<$Res> {
  __$SignUpResEntityCopyWithImpl(this._self, this._then);

  final _SignUpResEntity _self;
  final $Res Function(_SignUpResEntity) _then;

/// Create a copy of SignUpResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_SignUpResEntity(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
