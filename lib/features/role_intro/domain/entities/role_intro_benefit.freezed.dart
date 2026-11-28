// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_intro_benefit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoleIntroBenefit {

 RoleIntroIcon get icon; String get title; String get body;
/// Create a copy of RoleIntroBenefit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleIntroBenefitCopyWith<RoleIntroBenefit> get copyWith => _$RoleIntroBenefitCopyWithImpl<RoleIntroBenefit>(this as RoleIntroBenefit, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoleIntroBenefit;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleIntroBenefit&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body));
}


@override
int get hashCode {
  final _this = this as RoleIntroBenefit;
  return Object.hash(runtimeType,_this.icon,_this.title,_this.body);
}

@override
String toString() {
  final _this = this as RoleIntroBenefit;
  return 'RoleIntroBenefit(icon: ${_this.icon}, title: ${_this.title}, body: ${_this.body})';
}


}

/// @nodoc
abstract mixin class $RoleIntroBenefitCopyWith<$Res>  {
  factory $RoleIntroBenefitCopyWith(RoleIntroBenefit value, $Res Function(RoleIntroBenefit) _then) = _$RoleIntroBenefitCopyWithImpl;
@useResult
$Res call({
 RoleIntroIcon icon, String title, String body
});




}
/// @nodoc
class _$RoleIntroBenefitCopyWithImpl<$Res>
    implements $RoleIntroBenefitCopyWith<$Res> {
  _$RoleIntroBenefitCopyWithImpl(this._self, this._then);

  final RoleIntroBenefit _self;
  final $Res Function(RoleIntroBenefit) _then;

/// Create a copy of RoleIntroBenefit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? title = null,Object? body = null,}) {
  return _then(RoleIntroBenefit(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as RoleIntroIcon,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleIntroBenefit].
extension RoleIntroBenefitPatterns on RoleIntroBenefit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleIntroBenefit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleIntroBenefit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleIntroBenefit value)  $default,){
final _that = this;
switch (_that) {
case _RoleIntroBenefit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleIntroBenefit value)?  $default,){
final _that = this;
switch (_that) {
case _RoleIntroBenefit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RoleIntroIcon icon,  String title,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleIntroBenefit() when $default != null:
return $default(_that.icon,_that.title,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RoleIntroIcon icon,  String title,  String body)  $default,) {final _that = this;
switch (_that) {
case _RoleIntroBenefit():
return $default(_that.icon,_that.title,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RoleIntroIcon icon,  String title,  String body)?  $default,) {final _that = this;
switch (_that) {
case _RoleIntroBenefit() when $default != null:
return $default(_that.icon,_that.title,_that.body);case _:
  return null;

}
}

}

/// @nodoc


class _RoleIntroBenefit implements RoleIntroBenefit {
  const _RoleIntroBenefit({required this.icon, required this.title, required this.body});
  

@override final  RoleIntroIcon icon;
@override final  String title;
@override final  String body;

/// Create a copy of RoleIntroBenefit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleIntroBenefitCopyWith<_RoleIntroBenefit> get copyWith => __$RoleIntroBenefitCopyWithImpl<_RoleIntroBenefit>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleIntroBenefit&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode {
    return Object.hash(runtimeType,icon,title,body);
}

@override
String toString() {
    return 'RoleIntroBenefit(icon: $icon, title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class _$RoleIntroBenefitCopyWith<$Res> implements $RoleIntroBenefitCopyWith<$Res> {
  factory _$RoleIntroBenefitCopyWith(_RoleIntroBenefit value, $Res Function(_RoleIntroBenefit) _then) = __$RoleIntroBenefitCopyWithImpl;
@override @useResult
$Res call({
 RoleIntroIcon icon, String title, String body
});




}
/// @nodoc
class __$RoleIntroBenefitCopyWithImpl<$Res>
    implements _$RoleIntroBenefitCopyWith<$Res> {
  __$RoleIntroBenefitCopyWithImpl(this._self, this._then);

  final _RoleIntroBenefit _self;
  final $Res Function(_RoleIntroBenefit) _then;

/// Create a copy of RoleIntroBenefit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? title = null,Object? body = null,}) {
  return _then(_RoleIntroBenefit(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as RoleIntroIcon,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
