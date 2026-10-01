// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editable_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditableProfileEntity {

 int get id; UserType? get userType; XFile? get avatar; String? get avatarPath; GenericFormInput? get name; String? get bio; String? get address; String? get phone; String? get email; String? get rating; String? get ratingCount; String? get createdAt; EditableProfileEntity? get original;
/// Create a copy of EditableProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditableProfileEntityCopyWith<EditableProfileEntity> get copyWith => _$EditableProfileEntityCopyWithImpl<EditableProfileEntity>(this as EditableProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EditableProfileEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditableProfileEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userType, _this.userType) || other.userType == _this.userType)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.avatarPath, _this.avatarPath) || other.avatarPath == _this.avatarPath)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bio, _this.bio) || other.bio == _this.bio)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.ratingCount, _this.ratingCount) || other.ratingCount == _this.ratingCount)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.original, _this.original) || other.original == _this.original));
}


@override
int get hashCode {
  final _this = this as EditableProfileEntity;
  return Object.hash(runtimeType,_this.id,_this.userType,_this.avatar,_this.avatarPath,_this.name,_this.bio,_this.address,_this.phone,_this.email,_this.rating,_this.ratingCount,_this.createdAt,_this.original);
}

@override
String toString() {
  final _this = this as EditableProfileEntity;
  return 'EditableProfileEntity(id: ${_this.id}, userType: ${_this.userType}, avatar: ${_this.avatar}, avatarPath: ${_this.avatarPath}, name: ${_this.name}, bio: ${_this.bio}, address: ${_this.address}, phone: ${_this.phone}, email: ${_this.email}, rating: ${_this.rating}, ratingCount: ${_this.ratingCount}, createdAt: ${_this.createdAt}, original: ${_this.original})';
}


}

/// @nodoc
abstract mixin class $EditableProfileEntityCopyWith<$Res>  {
  factory $EditableProfileEntityCopyWith(EditableProfileEntity value, $Res Function(EditableProfileEntity) _then) = _$EditableProfileEntityCopyWithImpl;
@useResult
$Res call({
 int id, UserType? userType, XFile? avatar, String? avatarPath, GenericFormInput? name, String? bio, String? address, String? phone, String? email, String? rating, String? ratingCount, String? createdAt, EditableProfileEntity? original
});


$EditableProfileEntityCopyWith<$Res>? get original;

}
/// @nodoc
class _$EditableProfileEntityCopyWithImpl<$Res>
    implements $EditableProfileEntityCopyWith<$Res> {
  _$EditableProfileEntityCopyWithImpl(this._self, this._then);

  final EditableProfileEntity _self;
  final $Res Function(EditableProfileEntity) _then;

/// Create a copy of EditableProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userType = freezed,Object? avatar = freezed,Object? avatarPath = freezed,Object? name = freezed,Object? bio = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? createdAt = freezed,Object? original = freezed,}) {
  return _then(EditableProfileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as UserType?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as XFile?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as EditableProfileEntity?,
  ));
}
/// Create a copy of EditableProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditableProfileEntityCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $EditableProfileEntityCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditableProfileEntity].
extension EditableProfileEntityPatterns on EditableProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditableProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditableProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditableProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _EditableProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditableProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EditableProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  UserType? userType,  XFile? avatar,  String? avatarPath,  GenericFormInput? name,  String? bio,  String? address,  String? phone,  String? email,  String? rating,  String? ratingCount,  String? createdAt,  EditableProfileEntity? original)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditableProfileEntity() when $default != null:
return $default(_that.id,_that.userType,_that.avatar,_that.avatarPath,_that.name,_that.bio,_that.address,_that.phone,_that.email,_that.rating,_that.ratingCount,_that.createdAt,_that.original);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  UserType? userType,  XFile? avatar,  String? avatarPath,  GenericFormInput? name,  String? bio,  String? address,  String? phone,  String? email,  String? rating,  String? ratingCount,  String? createdAt,  EditableProfileEntity? original)  $default,) {final _that = this;
switch (_that) {
case _EditableProfileEntity():
return $default(_that.id,_that.userType,_that.avatar,_that.avatarPath,_that.name,_that.bio,_that.address,_that.phone,_that.email,_that.rating,_that.ratingCount,_that.createdAt,_that.original);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  UserType? userType,  XFile? avatar,  String? avatarPath,  GenericFormInput? name,  String? bio,  String? address,  String? phone,  String? email,  String? rating,  String? ratingCount,  String? createdAt,  EditableProfileEntity? original)?  $default,) {final _that = this;
switch (_that) {
case _EditableProfileEntity() when $default != null:
return $default(_that.id,_that.userType,_that.avatar,_that.avatarPath,_that.name,_that.bio,_that.address,_that.phone,_that.email,_that.rating,_that.ratingCount,_that.createdAt,_that.original);case _:
  return null;

}
}

}

/// @nodoc


class _EditableProfileEntity extends EditableProfileEntity {
   _EditableProfileEntity({required this.id, this.userType, this.avatar, this.avatarPath, this.name, this.bio, this.address, this.phone, this.email, this.rating, this.ratingCount, this.createdAt, this.original}): super._();
  

@override final  int id;
@override final  UserType? userType;
@override final  XFile? avatar;
@override final  String? avatarPath;
@override final  GenericFormInput? name;
@override final  String? bio;
@override final  String? address;
@override final  String? phone;
@override final  String? email;
@override final  String? rating;
@override final  String? ratingCount;
@override final  String? createdAt;
@override final  EditableProfileEntity? original;

/// Create a copy of EditableProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditableProfileEntityCopyWith<_EditableProfileEntity> get copyWith => __$EditableProfileEntityCopyWithImpl<_EditableProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditableProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.original, original) || other.original == original));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,userType,avatar,avatarPath,name,bio,address,phone,email,rating,ratingCount,createdAt,original);
}

@override
String toString() {
    return 'EditableProfileEntity(id: $id, userType: $userType, avatar: $avatar, avatarPath: $avatarPath, name: $name, bio: $bio, address: $address, phone: $phone, email: $email, rating: $rating, ratingCount: $ratingCount, createdAt: $createdAt, original: $original)';
}


}

/// @nodoc
abstract mixin class _$EditableProfileEntityCopyWith<$Res> implements $EditableProfileEntityCopyWith<$Res> {
  factory _$EditableProfileEntityCopyWith(_EditableProfileEntity value, $Res Function(_EditableProfileEntity) _then) = __$EditableProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, UserType? userType, XFile? avatar, String? avatarPath, GenericFormInput? name, String? bio, String? address, String? phone, String? email, String? rating, String? ratingCount, String? createdAt, EditableProfileEntity? original
});


@override $EditableProfileEntityCopyWith<$Res>? get original;

}
/// @nodoc
class __$EditableProfileEntityCopyWithImpl<$Res>
    implements _$EditableProfileEntityCopyWith<$Res> {
  __$EditableProfileEntityCopyWithImpl(this._self, this._then);

  final _EditableProfileEntity _self;
  final $Res Function(_EditableProfileEntity) _then;

/// Create a copy of EditableProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userType = freezed,Object? avatar = freezed,Object? avatarPath = freezed,Object? name = freezed,Object? bio = freezed,Object? address = freezed,Object? phone = freezed,Object? email = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? createdAt = freezed,Object? original = freezed,}) {
  return _then(_EditableProfileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as UserType?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as XFile?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as GenericFormInput?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as EditableProfileEntity?,
  ));
}

/// Create a copy of EditableProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditableProfileEntityCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $EditableProfileEntityCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}

// dart format on
