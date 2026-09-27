// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shops_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopsResEntity {

 List<ShopEntity> get shops; MetaEntity get meta;
/// Create a copy of ShopsResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopsResEntityCopyWith<ShopsResEntity> get copyWith => _$ShopsResEntityCopyWithImpl<ShopsResEntity>(this as ShopsResEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ShopsResEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopsResEntity&&const DeepCollectionEquality().equals(other.shops, _this.shops)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}


@override
int get hashCode {
  final _this = this as ShopsResEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.shops),_this.meta);
}

@override
String toString() {
  final _this = this as ShopsResEntity;
  return 'ShopsResEntity(shops: ${_this.shops}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $ShopsResEntityCopyWith<$Res>  {
  factory $ShopsResEntityCopyWith(ShopsResEntity value, $Res Function(ShopsResEntity) _then) = _$ShopsResEntityCopyWithImpl;
@useResult
$Res call({
 List<ShopEntity> shops, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$ShopsResEntityCopyWithImpl<$Res>
    implements $ShopsResEntityCopyWith<$Res> {
  _$ShopsResEntityCopyWithImpl(this._self, this._then);

  final ShopsResEntity _self;
  final $Res Function(ShopsResEntity) _then;

/// Create a copy of ShopsResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shops = null,Object? meta = null,}) {
  return _then(ShopsResEntity(
shops: null == shops ? _self.shops : shops // ignore: cast_nullable_to_non_nullable
as List<ShopEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}
/// Create a copy of ShopsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShopsResEntity].
extension ShopsResEntityPatterns on ShopsResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopsResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopsResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopsResEntity value)  $default,){
final _that = this;
switch (_that) {
case _ShopsResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopsResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ShopsResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ShopEntity> shops,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopsResEntity() when $default != null:
return $default(_that.shops,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ShopEntity> shops,  MetaEntity meta)  $default,) {final _that = this;
switch (_that) {
case _ShopsResEntity():
return $default(_that.shops,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ShopEntity> shops,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _ShopsResEntity() when $default != null:
return $default(_that.shops,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _ShopsResEntity implements ShopsResEntity {
  const _ShopsResEntity({ List<ShopEntity> shops = const [], this.meta = const MetaEntity()}): _shops = shops;
  

 final  List<ShopEntity> _shops;
@override@JsonKey() List<ShopEntity> get shops {
  if (_shops is EqualUnmodifiableListView) return _shops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shops);
}

@override@JsonKey() final  MetaEntity meta;

/// Create a copy of ShopsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopsResEntityCopyWith<_ShopsResEntity> get copyWith => __$ShopsResEntityCopyWithImpl<_ShopsResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopsResEntity&&const DeepCollectionEquality().equals(other.shops, _shops)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_shops),meta);
}

@override
String toString() {
    return 'ShopsResEntity(shops: $shops, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ShopsResEntityCopyWith<$Res> implements $ShopsResEntityCopyWith<$Res> {
  factory _$ShopsResEntityCopyWith(_ShopsResEntity value, $Res Function(_ShopsResEntity) _then) = __$ShopsResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<ShopEntity> shops, MetaEntity meta
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$ShopsResEntityCopyWithImpl<$Res>
    implements _$ShopsResEntityCopyWith<$Res> {
  __$ShopsResEntityCopyWithImpl(this._self, this._then);

  final _ShopsResEntity _self;
  final $Res Function(_ShopsResEntity) _then;

/// Create a copy of ShopsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shops = null,Object? meta = null,}) {
  return _then(_ShopsResEntity(
shops: null == shops ? _self._shops : shops // ignore: cast_nullable_to_non_nullable
as List<ShopEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}

/// Create a copy of ShopsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
