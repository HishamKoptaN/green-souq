// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationEntity {

 LatLng? get currentLocation; LatLng get selectedPoint; String get placeName;
/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<LocationEntity> get copyWith => _$LocationEntityCopyWithImpl<LocationEntity>(this as LocationEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LocationEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationEntity&&(identical(other.currentLocation, _this.currentLocation) || other.currentLocation == _this.currentLocation)&&(identical(other.selectedPoint, _this.selectedPoint) || other.selectedPoint == _this.selectedPoint)&&(identical(other.placeName, _this.placeName) || other.placeName == _this.placeName));
}


@override
int get hashCode {
  final _this = this as LocationEntity;
  return Object.hash(runtimeType,_this.currentLocation,_this.selectedPoint,_this.placeName);
}

@override
String toString() {
  final _this = this as LocationEntity;
  return 'LocationEntity(currentLocation: ${_this.currentLocation}, selectedPoint: ${_this.selectedPoint}, placeName: ${_this.placeName})';
}


}

/// @nodoc
abstract mixin class $LocationEntityCopyWith<$Res>  {
  factory $LocationEntityCopyWith(LocationEntity value, $Res Function(LocationEntity) _then) = _$LocationEntityCopyWithImpl;
@useResult
$Res call({
 LatLng? currentLocation, LatLng selectedPoint, String placeName
});




}
/// @nodoc
class _$LocationEntityCopyWithImpl<$Res>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._self, this._then);

  final LocationEntity _self;
  final $Res Function(LocationEntity) _then;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentLocation = freezed,Object? selectedPoint = null,Object? placeName = null,}) {
  return _then(LocationEntity(
currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as LatLng?,selectedPoint: null == selectedPoint ? _self.selectedPoint : selectedPoint // ignore: cast_nullable_to_non_nullable
as LatLng,placeName: null == placeName ? _self.placeName : placeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationEntity].
extension LocationEntityPatterns on LocationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationEntity value)  $default,){
final _that = this;
switch (_that) {
case _LocationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng? currentLocation,  LatLng selectedPoint,  String placeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
return $default(_that.currentLocation,_that.selectedPoint,_that.placeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng? currentLocation,  LatLng selectedPoint,  String placeName)  $default,) {final _that = this;
switch (_that) {
case _LocationEntity():
return $default(_that.currentLocation,_that.selectedPoint,_that.placeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng? currentLocation,  LatLng selectedPoint,  String placeName)?  $default,) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
return $default(_that.currentLocation,_that.selectedPoint,_that.placeName);case _:
  return null;

}
}

}

/// @nodoc


class _LocationEntity implements LocationEntity {
  const _LocationEntity({this.currentLocation, this.selectedPoint = const LatLng(29.70, 31.260), this.placeName = 'لم يتم تحديد الموقع بعد..'});
  

@override final  LatLng? currentLocation;
@override@JsonKey() final  LatLng selectedPoint;
@override@JsonKey() final  String placeName;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationEntityCopyWith<_LocationEntity> get copyWith => __$LocationEntityCopyWithImpl<_LocationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationEntity&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.selectedPoint, selectedPoint) || other.selectedPoint == selectedPoint)&&(identical(other.placeName, placeName) || other.placeName == placeName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,currentLocation,selectedPoint,placeName);
}

@override
String toString() {
    return 'LocationEntity(currentLocation: $currentLocation, selectedPoint: $selectedPoint, placeName: $placeName)';
}


}

/// @nodoc
abstract mixin class _$LocationEntityCopyWith<$Res> implements $LocationEntityCopyWith<$Res> {
  factory _$LocationEntityCopyWith(_LocationEntity value, $Res Function(_LocationEntity) _then) = __$LocationEntityCopyWithImpl;
@override @useResult
$Res call({
 LatLng? currentLocation, LatLng selectedPoint, String placeName
});




}
/// @nodoc
class __$LocationEntityCopyWithImpl<$Res>
    implements _$LocationEntityCopyWith<$Res> {
  __$LocationEntityCopyWithImpl(this._self, this._then);

  final _LocationEntity _self;
  final $Res Function(_LocationEntity) _then;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentLocation = freezed,Object? selectedPoint = null,Object? placeName = null,}) {
  return _then(_LocationEntity(
currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as LatLng?,selectedPoint: null == selectedPoint ? _self.selectedPoint : selectedPoint // ignore: cast_nullable_to_non_nullable
as LatLng,placeName: null == placeName ? _self.placeName : placeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
