// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_registration_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopRegistrationEntity {

 GenericFormInput? get shopName; GenericFormInput? get commercialRegistration; GenericFormInput? get specialization; List<String> get activities;
/// Create a copy of ShopRegistrationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopRegistrationEntityCopyWith<ShopRegistrationEntity> get copyWith => _$ShopRegistrationEntityCopyWithImpl<ShopRegistrationEntity>(this as ShopRegistrationEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ShopRegistrationEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopRegistrationEntity&&(identical(other.shopName, _this.shopName) || other.shopName == _this.shopName)&&(identical(other.commercialRegistration, _this.commercialRegistration) || other.commercialRegistration == _this.commercialRegistration)&&(identical(other.specialization, _this.specialization) || other.specialization == _this.specialization)&&const DeepCollectionEquality().equals(other.activities, _this.activities));
}


@override
int get hashCode {
  final _this = this as ShopRegistrationEntity;
  return Object.hash(runtimeType,_this.shopName,_this.commercialRegistration,_this.specialization,const DeepCollectionEquality().hash(_this.activities));
}

@override
String toString() {
  final _this = this as ShopRegistrationEntity;
  return 'ShopRegistrationEntity(shopName: ${_this.shopName}, commercialRegistration: ${_this.commercialRegistration}, specialization: ${_this.specialization}, activities: ${_this.activities})';
}


}

/// @nodoc
abstract mixin class $ShopRegistrationEntityCopyWith<$Res>  {
  factory $ShopRegistrationEntityCopyWith(ShopRegistrationEntity value, $Res Function(ShopRegistrationEntity) _then) = _$ShopRegistrationEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormInput? shopName, GenericFormInput? commercialRegistration, GenericFormInput? specialization, List<String> activities
});




}
/// @nodoc
class _$ShopRegistrationEntityCopyWithImpl<$Res>
    implements $ShopRegistrationEntityCopyWith<$Res> {
  _$ShopRegistrationEntityCopyWithImpl(this._self, this._then);

  final ShopRegistrationEntity _self;
  final $Res Function(ShopRegistrationEntity) _then;

/// Create a copy of ShopRegistrationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shopName = freezed,Object? commercialRegistration = freezed,Object? specialization = freezed,Object? activities = null,}) {
  return _then(ShopRegistrationEntity(
shopName: freezed == shopName ? _self.shopName : shopName // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,commercialRegistration: freezed == commercialRegistration ? _self.commercialRegistration : commercialRegistration // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopRegistrationEntity].
extension ShopRegistrationEntityPatterns on ShopRegistrationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopRegistrationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopRegistrationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopRegistrationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ShopRegistrationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopRegistrationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ShopRegistrationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormInput? shopName,  GenericFormInput? commercialRegistration,  GenericFormInput? specialization,  List<String> activities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopRegistrationEntity() when $default != null:
return $default(_that.shopName,_that.commercialRegistration,_that.specialization,_that.activities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormInput? shopName,  GenericFormInput? commercialRegistration,  GenericFormInput? specialization,  List<String> activities)  $default,) {final _that = this;
switch (_that) {
case _ShopRegistrationEntity():
return $default(_that.shopName,_that.commercialRegistration,_that.specialization,_that.activities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormInput? shopName,  GenericFormInput? commercialRegistration,  GenericFormInput? specialization,  List<String> activities)?  $default,) {final _that = this;
switch (_that) {
case _ShopRegistrationEntity() when $default != null:
return $default(_that.shopName,_that.commercialRegistration,_that.specialization,_that.activities);case _:
  return null;

}
}

}

/// @nodoc


class _ShopRegistrationEntity extends ShopRegistrationEntity {
  const _ShopRegistrationEntity({this.shopName, this.commercialRegistration, this.specialization,  List<String> activities = const <String>[]}): _activities = activities,super._();
  

@override final  GenericFormInput? shopName;
@override final  GenericFormInput? commercialRegistration;
@override final  GenericFormInput? specialization;
 final  List<String> _activities;
@override@JsonKey() List<String> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}


/// Create a copy of ShopRegistrationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopRegistrationEntityCopyWith<_ShopRegistrationEntity> get copyWith => __$ShopRegistrationEntityCopyWithImpl<_ShopRegistrationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopRegistrationEntity&&(identical(other.shopName, shopName) || other.shopName == shopName)&&(identical(other.commercialRegistration, commercialRegistration) || other.commercialRegistration == commercialRegistration)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&const DeepCollectionEquality().equals(other.activities, _activities));
}


@override
int get hashCode {
    return Object.hash(runtimeType,shopName,commercialRegistration,specialization,const DeepCollectionEquality().hash(_activities));
}

@override
String toString() {
    return 'ShopRegistrationEntity(shopName: $shopName, commercialRegistration: $commercialRegistration, specialization: $specialization, activities: $activities)';
}


}

/// @nodoc
abstract mixin class _$ShopRegistrationEntityCopyWith<$Res> implements $ShopRegistrationEntityCopyWith<$Res> {
  factory _$ShopRegistrationEntityCopyWith(_ShopRegistrationEntity value, $Res Function(_ShopRegistrationEntity) _then) = __$ShopRegistrationEntityCopyWithImpl;
@override @useResult
$Res call({
 GenericFormInput? shopName, GenericFormInput? commercialRegistration, GenericFormInput? specialization, List<String> activities
});




}
/// @nodoc
class __$ShopRegistrationEntityCopyWithImpl<$Res>
    implements _$ShopRegistrationEntityCopyWith<$Res> {
  __$ShopRegistrationEntityCopyWithImpl(this._self, this._then);

  final _ShopRegistrationEntity _self;
  final $Res Function(_ShopRegistrationEntity) _then;

/// Create a copy of ShopRegistrationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shopName = freezed,Object? commercialRegistration = freezed,Object? specialization = freezed,Object? activities = null,}) {
  return _then(_ShopRegistrationEntity(
shopName: freezed == shopName ? _self.shopName : shopName // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,commercialRegistration: freezed == commercialRegistration ? _self.commercialRegistration : commercialRegistration // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,activities: null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
