// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopEntity {

 String get id; String get name; String get bio; String get phone; int get rating; double get ratingAverage; int get ratingsCount; String get distance; String get address; String? get latitude; String? get longitude; String? get userType; String get createdAt;
/// Create a copy of ShopEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopEntityCopyWith<ShopEntity> get copyWith => _$ShopEntityCopyWithImpl<ShopEntity>(this as ShopEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ShopEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bio, _this.bio) || other.bio == _this.bio)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.ratingAverage, _this.ratingAverage) || other.ratingAverage == _this.ratingAverage)&&(identical(other.ratingsCount, _this.ratingsCount) || other.ratingsCount == _this.ratingsCount)&&(identical(other.distance, _this.distance) || other.distance == _this.distance)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.latitude, _this.latitude) || other.latitude == _this.latitude)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.userType, _this.userType) || other.userType == _this.userType)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as ShopEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.bio,_this.phone,_this.rating,_this.ratingAverage,_this.ratingsCount,_this.distance,_this.address,_this.latitude,_this.longitude,_this.userType,_this.createdAt);
}

@override
String toString() {
  final _this = this as ShopEntity;
  return 'ShopEntity(id: ${_this.id}, name: ${_this.name}, bio: ${_this.bio}, phone: ${_this.phone}, rating: ${_this.rating}, ratingAverage: ${_this.ratingAverage}, ratingsCount: ${_this.ratingsCount}, distance: ${_this.distance}, address: ${_this.address}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, userType: ${_this.userType}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ShopEntityCopyWith<$Res>  {
  factory $ShopEntityCopyWith(ShopEntity value, $Res Function(ShopEntity) _then) = _$ShopEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String bio, String phone, int rating, double ratingAverage, int ratingsCount, String distance, String address, String? latitude, String? longitude, String? userType, String createdAt
});




}
/// @nodoc
class _$ShopEntityCopyWithImpl<$Res>
    implements $ShopEntityCopyWith<$Res> {
  _$ShopEntityCopyWithImpl(this._self, this._then);

  final ShopEntity _self;
  final $Res Function(ShopEntity) _then;

/// Create a copy of ShopEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? bio = null,Object? phone = null,Object? rating = null,Object? ratingAverage = null,Object? ratingsCount = null,Object? distance = null,Object? address = null,Object? latitude = freezed,Object? longitude = freezed,Object? userType = freezed,Object? createdAt = null,}) {
  return _then(ShopEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,ratingAverage: null == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double,ratingsCount: null == ratingsCount ? _self.ratingsCount : ratingsCount // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopEntity].
extension ShopEntityPatterns on ShopEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopEntity value)  $default,){
final _that = this;
switch (_that) {
case _ShopEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ShopEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String bio,  String phone,  int rating,  double ratingAverage,  int ratingsCount,  String distance,  String address,  String? latitude,  String? longitude,  String? userType,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopEntity() when $default != null:
return $default(_that.id,_that.name,_that.bio,_that.phone,_that.rating,_that.ratingAverage,_that.ratingsCount,_that.distance,_that.address,_that.latitude,_that.longitude,_that.userType,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String bio,  String phone,  int rating,  double ratingAverage,  int ratingsCount,  String distance,  String address,  String? latitude,  String? longitude,  String? userType,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ShopEntity():
return $default(_that.id,_that.name,_that.bio,_that.phone,_that.rating,_that.ratingAverage,_that.ratingsCount,_that.distance,_that.address,_that.latitude,_that.longitude,_that.userType,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String bio,  String phone,  int rating,  double ratingAverage,  int ratingsCount,  String distance,  String address,  String? latitude,  String? longitude,  String? userType,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ShopEntity() when $default != null:
return $default(_that.id,_that.name,_that.bio,_that.phone,_that.rating,_that.ratingAverage,_that.ratingsCount,_that.distance,_that.address,_that.latitude,_that.longitude,_that.userType,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _ShopEntity extends ShopEntity {
  const _ShopEntity({this.id = '', this.name = '', this.bio = '', this.phone = '', this.rating = 0, this.ratingAverage = 0.0, this.ratingsCount = 0, this.distance = '', this.address = '', this.latitude, this.longitude, this.userType, this.createdAt = ''}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String bio;
@override@JsonKey() final  String phone;
@override@JsonKey() final  int rating;
@override@JsonKey() final  double ratingAverage;
@override@JsonKey() final  int ratingsCount;
@override@JsonKey() final  String distance;
@override@JsonKey() final  String address;
@override final  String? latitude;
@override final  String? longitude;
@override final  String? userType;
@override@JsonKey() final  String createdAt;

/// Create a copy of ShopEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopEntityCopyWith<_ShopEntity> get copyWith => __$ShopEntityCopyWithImpl<_ShopEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.ratingAverage, ratingAverage) || other.ratingAverage == ratingAverage)&&(identical(other.ratingsCount, ratingsCount) || other.ratingsCount == ratingsCount)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,bio,phone,rating,ratingAverage,ratingsCount,distance,address,latitude,longitude,userType,createdAt);
}

@override
String toString() {
    return 'ShopEntity(id: $id, name: $name, bio: $bio, phone: $phone, rating: $rating, ratingAverage: $ratingAverage, ratingsCount: $ratingsCount, distance: $distance, address: $address, latitude: $latitude, longitude: $longitude, userType: $userType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ShopEntityCopyWith<$Res> implements $ShopEntityCopyWith<$Res> {
  factory _$ShopEntityCopyWith(_ShopEntity value, $Res Function(_ShopEntity) _then) = __$ShopEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String bio, String phone, int rating, double ratingAverage, int ratingsCount, String distance, String address, String? latitude, String? longitude, String? userType, String createdAt
});




}
/// @nodoc
class __$ShopEntityCopyWithImpl<$Res>
    implements _$ShopEntityCopyWith<$Res> {
  __$ShopEntityCopyWithImpl(this._self, this._then);

  final _ShopEntity _self;
  final $Res Function(_ShopEntity) _then;

/// Create a copy of ShopEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? bio = null,Object? phone = null,Object? rating = null,Object? ratingAverage = null,Object? ratingsCount = null,Object? distance = null,Object? address = null,Object? latitude = freezed,Object? longitude = freezed,Object? userType = freezed,Object? createdAt = null,}) {
  return _then(_ShopEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,ratingAverage: null == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double,ratingsCount: null == ratingsCount ? _self.ratingsCount : ratingsCount // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
