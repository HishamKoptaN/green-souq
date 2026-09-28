// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_engineers_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesEngineersResEntity {

 List<SalesEngineerEntity> get salesEngineers; MetaEntity get meta;
/// Create a copy of SalesEngineersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesEngineersResEntityCopyWith<SalesEngineersResEntity> get copyWith => _$SalesEngineersResEntityCopyWithImpl<SalesEngineersResEntity>(this as SalesEngineersResEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SalesEngineersResEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesEngineersResEntity&&const DeepCollectionEquality().equals(other.salesEngineers, _this.salesEngineers)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}


@override
int get hashCode {
  final _this = this as SalesEngineersResEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.salesEngineers),_this.meta);
}

@override
String toString() {
  final _this = this as SalesEngineersResEntity;
  return 'SalesEngineersResEntity(salesEngineers: ${_this.salesEngineers}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $SalesEngineersResEntityCopyWith<$Res>  {
  factory $SalesEngineersResEntityCopyWith(SalesEngineersResEntity value, $Res Function(SalesEngineersResEntity) _then) = _$SalesEngineersResEntityCopyWithImpl;
@useResult
$Res call({
 List<SalesEngineerEntity> salesEngineers, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$SalesEngineersResEntityCopyWithImpl<$Res>
    implements $SalesEngineersResEntityCopyWith<$Res> {
  _$SalesEngineersResEntityCopyWithImpl(this._self, this._then);

  final SalesEngineersResEntity _self;
  final $Res Function(SalesEngineersResEntity) _then;

/// Create a copy of SalesEngineersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? salesEngineers = null,Object? meta = null,}) {
  return _then(SalesEngineersResEntity(
salesEngineers: null == salesEngineers ? _self.salesEngineers : salesEngineers // ignore: cast_nullable_to_non_nullable
as List<SalesEngineerEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}
/// Create a copy of SalesEngineersResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalesEngineersResEntity].
extension SalesEngineersResEntityPatterns on SalesEngineersResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesEngineersResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesEngineersResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesEngineersResEntity value)  $default,){
final _that = this;
switch (_that) {
case _SalesEngineersResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesEngineersResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SalesEngineersResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SalesEngineerEntity> salesEngineers,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesEngineersResEntity() when $default != null:
return $default(_that.salesEngineers,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SalesEngineerEntity> salesEngineers,  MetaEntity meta)  $default,) {final _that = this;
switch (_that) {
case _SalesEngineersResEntity():
return $default(_that.salesEngineers,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SalesEngineerEntity> salesEngineers,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _SalesEngineersResEntity() when $default != null:
return $default(_that.salesEngineers,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _SalesEngineersResEntity implements SalesEngineersResEntity {
  const _SalesEngineersResEntity({ List<SalesEngineerEntity> salesEngineers = const [], this.meta = const MetaEntity()}): _salesEngineers = salesEngineers;
  

 final  List<SalesEngineerEntity> _salesEngineers;
@override@JsonKey() List<SalesEngineerEntity> get salesEngineers {
  if (_salesEngineers is EqualUnmodifiableListView) return _salesEngineers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salesEngineers);
}

@override@JsonKey() final  MetaEntity meta;

/// Create a copy of SalesEngineersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesEngineersResEntityCopyWith<_SalesEngineersResEntity> get copyWith => __$SalesEngineersResEntityCopyWithImpl<_SalesEngineersResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesEngineersResEntity&&const DeepCollectionEquality().equals(other.salesEngineers, _salesEngineers)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_salesEngineers),meta);
}

@override
String toString() {
    return 'SalesEngineersResEntity(salesEngineers: $salesEngineers, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SalesEngineersResEntityCopyWith<$Res> implements $SalesEngineersResEntityCopyWith<$Res> {
  factory _$SalesEngineersResEntityCopyWith(_SalesEngineersResEntity value, $Res Function(_SalesEngineersResEntity) _then) = __$SalesEngineersResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SalesEngineerEntity> salesEngineers, MetaEntity meta
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$SalesEngineersResEntityCopyWithImpl<$Res>
    implements _$SalesEngineersResEntityCopyWith<$Res> {
  __$SalesEngineersResEntityCopyWithImpl(this._self, this._then);

  final _SalesEngineersResEntity _self;
  final $Res Function(_SalesEngineersResEntity) _then;

/// Create a copy of SalesEngineersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? salesEngineers = null,Object? meta = null,}) {
  return _then(_SalesEngineersResEntity(
salesEngineers: null == salesEngineers ? _self._salesEngineers : salesEngineers // ignore: cast_nullable_to_non_nullable
as List<SalesEngineerEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}

/// Create a copy of SalesEngineersResEntity
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
