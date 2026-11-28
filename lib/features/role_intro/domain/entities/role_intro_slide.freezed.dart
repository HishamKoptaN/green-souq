// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_intro_slide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoleIntroSlide {

 String get badge; String get title; String get description; List<RoleIntroBenefit> get benefits; String? get footerNote; String get actionLabel; String? get loginHint;
/// Create a copy of RoleIntroSlide
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleIntroSlideCopyWith<RoleIntroSlide> get copyWith => _$RoleIntroSlideCopyWithImpl<RoleIntroSlide>(this as RoleIntroSlide, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoleIntroSlide;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleIntroSlide&&(identical(other.badge, _this.badge) || other.badge == _this.badge)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.benefits, _this.benefits)&&(identical(other.footerNote, _this.footerNote) || other.footerNote == _this.footerNote)&&(identical(other.actionLabel, _this.actionLabel) || other.actionLabel == _this.actionLabel)&&(identical(other.loginHint, _this.loginHint) || other.loginHint == _this.loginHint));
}


@override
int get hashCode {
  final _this = this as RoleIntroSlide;
  return Object.hash(runtimeType,_this.badge,_this.title,_this.description,const DeepCollectionEquality().hash(_this.benefits),_this.footerNote,_this.actionLabel,_this.loginHint);
}

@override
String toString() {
  final _this = this as RoleIntroSlide;
  return 'RoleIntroSlide(badge: ${_this.badge}, title: ${_this.title}, description: ${_this.description}, benefits: ${_this.benefits}, footerNote: ${_this.footerNote}, actionLabel: ${_this.actionLabel}, loginHint: ${_this.loginHint})';
}


}

/// @nodoc
abstract mixin class $RoleIntroSlideCopyWith<$Res>  {
  factory $RoleIntroSlideCopyWith(RoleIntroSlide value, $Res Function(RoleIntroSlide) _then) = _$RoleIntroSlideCopyWithImpl;
@useResult
$Res call({
 String badge, String title, String description, List<RoleIntroBenefit> benefits, String? footerNote, String actionLabel, String? loginHint
});




}
/// @nodoc
class _$RoleIntroSlideCopyWithImpl<$Res>
    implements $RoleIntroSlideCopyWith<$Res> {
  _$RoleIntroSlideCopyWithImpl(this._self, this._then);

  final RoleIntroSlide _self;
  final $Res Function(RoleIntroSlide) _then;

/// Create a copy of RoleIntroSlide
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? badge = null,Object? title = null,Object? description = null,Object? benefits = null,Object? footerNote = freezed,Object? actionLabel = null,Object? loginHint = freezed,}) {
  return _then(RoleIntroSlide(
badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,benefits: null == benefits ? _self.benefits : benefits // ignore: cast_nullable_to_non_nullable
as List<RoleIntroBenefit>,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,actionLabel: null == actionLabel ? _self.actionLabel : actionLabel // ignore: cast_nullable_to_non_nullable
as String,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleIntroSlide].
extension RoleIntroSlidePatterns on RoleIntroSlide {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleIntroSlide value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleIntroSlide() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleIntroSlide value)  $default,){
final _that = this;
switch (_that) {
case _RoleIntroSlide():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleIntroSlide value)?  $default,){
final _that = this;
switch (_that) {
case _RoleIntroSlide() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String badge,  String title,  String description,  List<RoleIntroBenefit> benefits,  String? footerNote,  String actionLabel,  String? loginHint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleIntroSlide() when $default != null:
return $default(_that.badge,_that.title,_that.description,_that.benefits,_that.footerNote,_that.actionLabel,_that.loginHint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String badge,  String title,  String description,  List<RoleIntroBenefit> benefits,  String? footerNote,  String actionLabel,  String? loginHint)  $default,) {final _that = this;
switch (_that) {
case _RoleIntroSlide():
return $default(_that.badge,_that.title,_that.description,_that.benefits,_that.footerNote,_that.actionLabel,_that.loginHint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String badge,  String title,  String description,  List<RoleIntroBenefit> benefits,  String? footerNote,  String actionLabel,  String? loginHint)?  $default,) {final _that = this;
switch (_that) {
case _RoleIntroSlide() when $default != null:
return $default(_that.badge,_that.title,_that.description,_that.benefits,_that.footerNote,_that.actionLabel,_that.loginHint);case _:
  return null;

}
}

}

/// @nodoc


class _RoleIntroSlide implements RoleIntroSlide {
  const _RoleIntroSlide({required this.badge, required this.title, required this.description,  List<RoleIntroBenefit> benefits = const <RoleIntroBenefit>[], this.footerNote, this.actionLabel = 'ابدأ الآن', this.loginHint}): _benefits = benefits;
  

@override final  String badge;
@override final  String title;
@override final  String description;
 final  List<RoleIntroBenefit> _benefits;
@override@JsonKey() List<RoleIntroBenefit> get benefits {
  if (_benefits is EqualUnmodifiableListView) return _benefits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_benefits);
}

@override final  String? footerNote;
@override@JsonKey() final  String actionLabel;
@override final  String? loginHint;

/// Create a copy of RoleIntroSlide
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleIntroSlideCopyWith<_RoleIntroSlide> get copyWith => __$RoleIntroSlideCopyWithImpl<_RoleIntroSlide>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleIntroSlide&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.benefits, _benefits)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.actionLabel, actionLabel) || other.actionLabel == actionLabel)&&(identical(other.loginHint, loginHint) || other.loginHint == loginHint));
}


@override
int get hashCode {
    return Object.hash(runtimeType,badge,title,description,const DeepCollectionEquality().hash(_benefits),footerNote,actionLabel,loginHint);
}

@override
String toString() {
    return 'RoleIntroSlide(badge: $badge, title: $title, description: $description, benefits: $benefits, footerNote: $footerNote, actionLabel: $actionLabel, loginHint: $loginHint)';
}


}

/// @nodoc
abstract mixin class _$RoleIntroSlideCopyWith<$Res> implements $RoleIntroSlideCopyWith<$Res> {
  factory _$RoleIntroSlideCopyWith(_RoleIntroSlide value, $Res Function(_RoleIntroSlide) _then) = __$RoleIntroSlideCopyWithImpl;
@override @useResult
$Res call({
 String badge, String title, String description, List<RoleIntroBenefit> benefits, String? footerNote, String actionLabel, String? loginHint
});




}
/// @nodoc
class __$RoleIntroSlideCopyWithImpl<$Res>
    implements _$RoleIntroSlideCopyWith<$Res> {
  __$RoleIntroSlideCopyWithImpl(this._self, this._then);

  final _RoleIntroSlide _self;
  final $Res Function(_RoleIntroSlide) _then;

/// Create a copy of RoleIntroSlide
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? badge = null,Object? title = null,Object? description = null,Object? benefits = null,Object? footerNote = freezed,Object? actionLabel = null,Object? loginHint = freezed,}) {
  return _then(_RoleIntroSlide(
badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,benefits: null == benefits ? _self._benefits : benefits // ignore: cast_nullable_to_non_nullable
as List<RoleIntroBenefit>,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,actionLabel: null == actionLabel ? _self.actionLabel : actionLabel // ignore: cast_nullable_to_non_nullable
as String,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
