// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEntity {

 int get id; UserType? get userType; String? get avatar; String? get name; String? get bio; String? get address; String? get latitude; String? get longitude; String? get phone; String? get email; String? get rating; String? get ratingCount; String? get createdAt; int? get postsCount; int? get followersCount;
/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<ProfileEntity> get copyWith => _$ProfileEntityCopyWithImpl<ProfileEntity>(this as ProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProfileEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userType, _this.userType) || other.userType == _this.userType)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bio, _this.bio) || other.bio == _this.bio)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.latitude, _this.latitude) || other.latitude == _this.latitude)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.ratingCount, _this.ratingCount) || other.ratingCount == _this.ratingCount)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.postsCount, _this.postsCount) || other.postsCount == _this.postsCount)&&(identical(other.followersCount, _this.followersCount) || other.followersCount == _this.followersCount));
}


@override
int get hashCode {
  final _this = this as ProfileEntity;
  return Object.hash(runtimeType,_this.id,_this.userType,_this.avatar,_this.name,_this.bio,_this.address,_this.latitude,_this.longitude,_this.phone,_this.email,_this.rating,_this.ratingCount,_this.createdAt,_this.postsCount,_this.followersCount);
}

@override
String toString() {
  final _this = this as ProfileEntity;
  return 'ProfileEntity(id: ${_this.id}, userType: ${_this.userType}, avatar: ${_this.avatar}, name: ${_this.name}, bio: ${_this.bio}, address: ${_this.address}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, phone: ${_this.phone}, email: ${_this.email}, rating: ${_this.rating}, ratingCount: ${_this.ratingCount}, createdAt: ${_this.createdAt}, postsCount: ${_this.postsCount}, followersCount: ${_this.followersCount})';
}


}

/// @nodoc
abstract mixin class $ProfileEntityCopyWith<$Res>  {
  factory $ProfileEntityCopyWith(ProfileEntity value, $Res Function(ProfileEntity) _then) = _$ProfileEntityCopyWithImpl;
@useResult
$Res call({
 int id, UserType? userType, String? avatar, String? name, String? bio, String? address, String? latitude, String? longitude, String? phone, String? email, String? rating, String? ratingCount, String? createdAt, int? postsCount, int? followersCount
});




}
/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._self, this._then);

  final ProfileEntity _self;
  final $Res Function(ProfileEntity) _then;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userType = freezed,Object? avatar = freezed,Object? name = freezed,Object? bio = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? phone = freezed,Object? email = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? createdAt = freezed,Object? postsCount = freezed,Object? followersCount = freezed,}) {
  return _then(ProfileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as UserType?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,postsCount: freezed == postsCount ? _self.postsCount : postsCount // ignore: cast_nullable_to_non_nullable
as int?,followersCount: freezed == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileEntity].
extension ProfileEntityPatterns on ProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  UserType? userType,  String? avatar,  String? name,  String? bio,  String? address,  String? latitude,  String? longitude,  String? phone,  String? email,  String? rating,  String? ratingCount,  String? createdAt,  int? postsCount,  int? followersCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
return $default(_that.id,_that.userType,_that.avatar,_that.name,_that.bio,_that.address,_that.latitude,_that.longitude,_that.phone,_that.email,_that.rating,_that.ratingCount,_that.createdAt,_that.postsCount,_that.followersCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  UserType? userType,  String? avatar,  String? name,  String? bio,  String? address,  String? latitude,  String? longitude,  String? phone,  String? email,  String? rating,  String? ratingCount,  String? createdAt,  int? postsCount,  int? followersCount)  $default,) {final _that = this;
switch (_that) {
case _ProfileEntity():
return $default(_that.id,_that.userType,_that.avatar,_that.name,_that.bio,_that.address,_that.latitude,_that.longitude,_that.phone,_that.email,_that.rating,_that.ratingCount,_that.createdAt,_that.postsCount,_that.followersCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  UserType? userType,  String? avatar,  String? name,  String? bio,  String? address,  String? latitude,  String? longitude,  String? phone,  String? email,  String? rating,  String? ratingCount,  String? createdAt,  int? postsCount,  int? followersCount)?  $default,) {final _that = this;
switch (_that) {
case _ProfileEntity() when $default != null:
return $default(_that.id,_that.userType,_that.avatar,_that.name,_that.bio,_that.address,_that.latitude,_that.longitude,_that.phone,_that.email,_that.rating,_that.ratingCount,_that.createdAt,_that.postsCount,_that.followersCount);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileEntity implements ProfileEntity {
  const _ProfileEntity({required this.id, this.userType, this.avatar, this.name, this.bio, this.address, this.latitude, this.longitude, this.phone, this.email, this.rating, this.ratingCount, this.createdAt, this.postsCount, this.followersCount});
  

@override final  int id;
@override final  UserType? userType;
@override final  String? avatar;
@override final  String? name;
@override final  String? bio;
@override final  String? address;
@override final  String? latitude;
@override final  String? longitude;
@override final  String? phone;
@override final  String? email;
@override final  String? rating;
@override final  String? ratingCount;
@override final  String? createdAt;
@override final  int? postsCount;
@override final  int? followersCount;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEntityCopyWith<_ProfileEntity> get copyWith => __$ProfileEntityCopyWithImpl<_ProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.postsCount, postsCount) || other.postsCount == postsCount)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,userType,avatar,name,bio,address,latitude,longitude,phone,email,rating,ratingCount,createdAt,postsCount,followersCount);
}

@override
String toString() {
    return 'ProfileEntity(id: $id, userType: $userType, avatar: $avatar, name: $name, bio: $bio, address: $address, latitude: $latitude, longitude: $longitude, phone: $phone, email: $email, rating: $rating, ratingCount: $ratingCount, createdAt: $createdAt, postsCount: $postsCount, followersCount: $followersCount)';
}


}

/// @nodoc
abstract mixin class _$ProfileEntityCopyWith<$Res> implements $ProfileEntityCopyWith<$Res> {
  factory _$ProfileEntityCopyWith(_ProfileEntity value, $Res Function(_ProfileEntity) _then) = __$ProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, UserType? userType, String? avatar, String? name, String? bio, String? address, String? latitude, String? longitude, String? phone, String? email, String? rating, String? ratingCount, String? createdAt, int? postsCount, int? followersCount
});




}
/// @nodoc
class __$ProfileEntityCopyWithImpl<$Res>
    implements _$ProfileEntityCopyWith<$Res> {
  __$ProfileEntityCopyWithImpl(this._self, this._then);

  final _ProfileEntity _self;
  final $Res Function(_ProfileEntity) _then;

/// Create a copy of ProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userType = freezed,Object? avatar = freezed,Object? name = freezed,Object? bio = freezed,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? phone = freezed,Object? email = freezed,Object? rating = freezed,Object? ratingCount = freezed,Object? createdAt = freezed,Object? postsCount = freezed,Object? followersCount = freezed,}) {
  return _then(_ProfileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as UserType?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,ratingCount: freezed == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,postsCount: freezed == postsCount ? _self.postsCount : postsCount // ignore: cast_nullable_to_non_nullable
as int?,followersCount: freezed == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
