// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_slide_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingSlideEntity {

 String get imagePath; String get title; String? get englishImagePath;
/// Create a copy of OnboardingSlideEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingSlideEntityCopyWith<OnboardingSlideEntity> get copyWith => _$OnboardingSlideEntityCopyWithImpl<OnboardingSlideEntity>(this as OnboardingSlideEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OnboardingSlideEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingSlideEntity&&(identical(other.imagePath, _this.imagePath) || other.imagePath == _this.imagePath)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.englishImagePath, _this.englishImagePath) || other.englishImagePath == _this.englishImagePath));
}


@override
int get hashCode {
  final _this = this as OnboardingSlideEntity;
  return Object.hash(runtimeType,_this.imagePath,_this.title,_this.englishImagePath);
}

@override
String toString() {
  final _this = this as OnboardingSlideEntity;
  return 'OnboardingSlideEntity(imagePath: ${_this.imagePath}, title: ${_this.title}, englishImagePath: ${_this.englishImagePath})';
}


}

/// @nodoc
abstract mixin class $OnboardingSlideEntityCopyWith<$Res>  {
  factory $OnboardingSlideEntityCopyWith(OnboardingSlideEntity value, $Res Function(OnboardingSlideEntity) _then) = _$OnboardingSlideEntityCopyWithImpl;
@useResult
$Res call({
 String imagePath, String title, String? englishImagePath
});




}
/// @nodoc
class _$OnboardingSlideEntityCopyWithImpl<$Res>
    implements $OnboardingSlideEntityCopyWith<$Res> {
  _$OnboardingSlideEntityCopyWithImpl(this._self, this._then);

  final OnboardingSlideEntity _self;
  final $Res Function(OnboardingSlideEntity) _then;

/// Create a copy of OnboardingSlideEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = null,Object? title = null,Object? englishImagePath = freezed,}) {
  return _then(OnboardingSlideEntity(
imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,englishImagePath: freezed == englishImagePath ? _self.englishImagePath : englishImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingSlideEntity].
extension OnboardingSlideEntityPatterns on OnboardingSlideEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingSlideEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingSlideEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingSlideEntity value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingSlideEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingSlideEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingSlideEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imagePath,  String title,  String? englishImagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingSlideEntity() when $default != null:
return $default(_that.imagePath,_that.title,_that.englishImagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imagePath,  String title,  String? englishImagePath)  $default,) {final _that = this;
switch (_that) {
case _OnboardingSlideEntity():
return $default(_that.imagePath,_that.title,_that.englishImagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imagePath,  String title,  String? englishImagePath)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingSlideEntity() when $default != null:
return $default(_that.imagePath,_that.title,_that.englishImagePath);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingSlideEntity extends OnboardingSlideEntity {
  const _OnboardingSlideEntity({required this.imagePath, required this.title, this.englishImagePath}): super._();
  

@override final  String imagePath;
@override final  String title;
@override final  String? englishImagePath;

/// Create a copy of OnboardingSlideEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingSlideEntityCopyWith<_OnboardingSlideEntity> get copyWith => __$OnboardingSlideEntityCopyWithImpl<_OnboardingSlideEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingSlideEntity&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.title, title) || other.title == title)&&(identical(other.englishImagePath, englishImagePath) || other.englishImagePath == englishImagePath));
}


@override
int get hashCode {
    return Object.hash(runtimeType,imagePath,title,englishImagePath);
}

@override
String toString() {
    return 'OnboardingSlideEntity(imagePath: $imagePath, title: $title, englishImagePath: $englishImagePath)';
}


}

/// @nodoc
abstract mixin class _$OnboardingSlideEntityCopyWith<$Res> implements $OnboardingSlideEntityCopyWith<$Res> {
  factory _$OnboardingSlideEntityCopyWith(_OnboardingSlideEntity value, $Res Function(_OnboardingSlideEntity) _then) = __$OnboardingSlideEntityCopyWithImpl;
@override @useResult
$Res call({
 String imagePath, String title, String? englishImagePath
});




}
/// @nodoc
class __$OnboardingSlideEntityCopyWithImpl<$Res>
    implements _$OnboardingSlideEntityCopyWith<$Res> {
  __$OnboardingSlideEntityCopyWithImpl(this._self, this._then);

  final _OnboardingSlideEntity _self;
  final $Res Function(_OnboardingSlideEntity) _then;

/// Create a copy of OnboardingSlideEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imagePath = null,Object? title = null,Object? englishImagePath = freezed,}) {
  return _then(_OnboardingSlideEntity(
imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,englishImagePath: freezed == englishImagePath ? _self.englishImagePath : englishImagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
