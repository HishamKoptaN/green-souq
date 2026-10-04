// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edited_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditedProfileEntity {

 String? get avatar; GenericFormInput? get name; String? get bio; String? get address; String? get latitude; String? get longitude; String? get phone;
/// Create a copy of EditedProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditedProfileEntityCopyWith<EditedProfileEntity> get copyWith => _$EditedProfileEntityCopyWithImpl<EditedProfileEntity>(this as EditedProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EditedProfileEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditedProfileEntity&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bio, _this.bio) || other.bio == _this.bio)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.latitude, _this.latitude) || other.latitude == _this.latitude)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.phone, _this.phone) || other.phone == _this.phone));
}


@override
int get hashCode {
  final _this = this as EditedProfileEntity;
  return Object.hash(runtimeType,_this.avatar,_this.name,_this.bio,_this.address,_this.latitude,_this.longitude,_this.phone);
}

@override
String toString() {
  final _this = this as EditedProfileEntity;
  return 'EditedProfileEntity(avatar: ${_this.avatar}, name: ${_this.name}, bio: ${_this.bio}, address: ${_this.address}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, phone: ${_this.phone})';
}


}

/// @nodoc
abstract mixin class $EditedProfileEntityCopyWith<$Res>  {
  factory $EditedProfileEntityCopyWith(EditedProfileEntity value, $Res Function(EditedProfileEntity) _then) = _$EditedProfileEntityCopyWithImpl;
@useResult
$Res call({
 String? avatar, GenericFormInput? name, String? bio, String? address, String? latitude, String? longitude, String? phone
});




}
/// @nodoc
class _$EditedProfileEntityCopyWithImpl<$Res>
    implements $EditedProfileEntityCopyWith<$Res> {
  _$EditedProfileEntityCopyWithImpl(this._self, this._then);

  final EditedProfileEntity _self;
  final $Res Function(EditedProfileEntity) _then;

/// Create a copy of EditedProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? avatar = freezed,Object? name = freezed,Object? bio = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? phone = freezed,}) {
  return _then(EditedProfileEntity(
avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditedProfileEntity].
extension EditedProfileEntityPatterns on EditedProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditedProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditedProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditedProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _EditedProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditedProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EditedProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? avatar,  GenericFormInput? name,  String? bio,  String? address,  String? latitude,  String? longitude,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditedProfileEntity() when $default != null:
return $default(_that.avatar,_that.name,_that.bio,_that.address,_that.latitude,_that.longitude,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? avatar,  GenericFormInput? name,  String? bio,  String? address,  String? latitude,  String? longitude,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _EditedProfileEntity():
return $default(_that.avatar,_that.name,_that.bio,_that.address,_that.latitude,_that.longitude,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? avatar,  GenericFormInput? name,  String? bio,  String? address,  String? latitude,  String? longitude,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _EditedProfileEntity() when $default != null:
return $default(_that.avatar,_that.name,_that.bio,_that.address,_that.latitude,_that.longitude,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class _EditedProfileEntity implements EditedProfileEntity {
  const _EditedProfileEntity({this.avatar, this.name, this.bio, this.address, this.latitude, this.longitude, this.phone});
  

@override final  String? avatar;
@override final  GenericFormInput? name;
@override final  String? bio;
@override final  String? address;
@override final  String? latitude;
@override final  String? longitude;
@override final  String? phone;

/// Create a copy of EditedProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditedProfileEntityCopyWith<_EditedProfileEntity> get copyWith => __$EditedProfileEntityCopyWithImpl<_EditedProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditedProfileEntity&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode {
    return Object.hash(runtimeType,avatar,name,bio,address,latitude,longitude,phone);
}

@override
String toString() {
    return 'EditedProfileEntity(avatar: $avatar, name: $name, bio: $bio, address: $address, latitude: $latitude, longitude: $longitude, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$EditedProfileEntityCopyWith<$Res> implements $EditedProfileEntityCopyWith<$Res> {
  factory _$EditedProfileEntityCopyWith(_EditedProfileEntity value, $Res Function(_EditedProfileEntity) _then) = __$EditedProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 String? avatar, GenericFormInput? name, String? bio, String? address, String? latitude, String? longitude, String? phone
});




}
/// @nodoc
class __$EditedProfileEntityCopyWithImpl<$Res>
    implements _$EditedProfileEntityCopyWith<$Res> {
  __$EditedProfileEntityCopyWithImpl(this._self, this._then);

  final _EditedProfileEntity _self;
  final $Res Function(_EditedProfileEntity) _then;

/// Create a copy of EditedProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? avatar = freezed,Object? name = freezed,Object? bio = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? phone = freezed,}) {
  return _then(_EditedProfileEntity(
avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
