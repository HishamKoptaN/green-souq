// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FarmEntity {

 String get id; String get name; String get location;
/// Create a copy of FarmEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FarmEntityCopyWith<FarmEntity> get copyWith => _$FarmEntityCopyWithImpl<FarmEntity>(this as FarmEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FarmEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FarmEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.location, _this.location) || other.location == _this.location));
}


@override
int get hashCode {
  final _this = this as FarmEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.location);
}

@override
String toString() {
  final _this = this as FarmEntity;
  return 'FarmEntity(id: ${_this.id}, name: ${_this.name}, location: ${_this.location})';
}


}

/// @nodoc
abstract mixin class $FarmEntityCopyWith<$Res>  {
  factory $FarmEntityCopyWith(FarmEntity value, $Res Function(FarmEntity) _then) = _$FarmEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String location
});




}
/// @nodoc
class _$FarmEntityCopyWithImpl<$Res>
    implements $FarmEntityCopyWith<$Res> {
  _$FarmEntityCopyWithImpl(this._self, this._then);

  final FarmEntity _self;
  final $Res Function(FarmEntity) _then;

/// Create a copy of FarmEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,}) {
  return _then(FarmEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FarmEntity].
extension FarmEntityPatterns on FarmEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FarmEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FarmEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FarmEntity value)  $default,){
final _that = this;
switch (_that) {
case _FarmEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FarmEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FarmEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FarmEntity() when $default != null:
return $default(_that.id,_that.name,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String location)  $default,) {final _that = this;
switch (_that) {
case _FarmEntity():
return $default(_that.id,_that.name,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String location)?  $default,) {final _that = this;
switch (_that) {
case _FarmEntity() when $default != null:
return $default(_that.id,_that.name,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _FarmEntity implements FarmEntity {
  const _FarmEntity({required this.id, required this.name, required this.location});
  

@override final  String id;
@override final  String name;
@override final  String location;

/// Create a copy of FarmEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FarmEntityCopyWith<_FarmEntity> get copyWith => __$FarmEntityCopyWithImpl<_FarmEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FarmEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,location);
}

@override
String toString() {
    return 'FarmEntity(id: $id, name: $name, location: $location)';
}


}

/// @nodoc
abstract mixin class _$FarmEntityCopyWith<$Res> implements $FarmEntityCopyWith<$Res> {
  factory _$FarmEntityCopyWith(_FarmEntity value, $Res Function(_FarmEntity) _then) = __$FarmEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String location
});




}
/// @nodoc
class __$FarmEntityCopyWithImpl<$Res>
    implements _$FarmEntityCopyWith<$Res> {
  __$FarmEntityCopyWithImpl(this._self, this._then);

  final _FarmEntity _self;
  final $Res Function(_FarmEntity) _then;

/// Create a copy of FarmEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,}) {
  return _then(_FarmEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
