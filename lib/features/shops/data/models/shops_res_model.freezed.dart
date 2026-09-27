// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shops_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShopsResModel {

@JsonKey(name: 'data') List<ShopModel>? get shops; MetaModel? get meta;
/// Create a copy of ShopsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopsResModelCopyWith<ShopsResModel> get copyWith => _$ShopsResModelCopyWithImpl<ShopsResModel>(this as ShopsResModel, _$identity);

  /// Serializes this ShopsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ShopsResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopsResModel&&const DeepCollectionEquality().equals(other.shops, _this.shops)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ShopsResModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.shops),_this.meta);
}

@override
String toString() {
  final _this = this as ShopsResModel;
  return 'ShopsResModel(shops: ${_this.shops}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $ShopsResModelCopyWith<$Res>  {
  factory $ShopsResModelCopyWith(ShopsResModel value, $Res Function(ShopsResModel) _then) = _$ShopsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<ShopModel>? shops, MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ShopsResModelCopyWithImpl<$Res>
    implements $ShopsResModelCopyWith<$Res> {
  _$ShopsResModelCopyWithImpl(this._self, this._then);

  final ShopsResModel _self;
  final $Res Function(ShopsResModel) _then;

/// Create a copy of ShopsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shops = freezed,Object? meta = freezed,}) {
  return _then(ShopsResModel(
shops: freezed == shops ? _self.shops : shops // ignore: cast_nullable_to_non_nullable
as List<ShopModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of ShopsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShopsResModel].
extension ShopsResModelPatterns on ShopsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopsResModel value)  $default,){
final _that = this;
switch (_that) {
case _ShopsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShopsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<ShopModel>? shops,  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopsResModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<ShopModel>? shops,  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _ShopsResModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<ShopModel>? shops,  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _ShopsResModel() when $default != null:
return $default(_that.shops,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShopsResModel implements ShopsResModel {
  const _ShopsResModel({@JsonKey(name: 'data')  List<ShopModel>? shops, this.meta}): _shops = shops;
  factory _ShopsResModel.fromJson(Map<String, dynamic> json) => _$ShopsResModelFromJson(json);

 final  List<ShopModel>? _shops;
@override@JsonKey(name: 'data') List<ShopModel>? get shops {
  final value = _shops;
  if (value == null) return null;
  if (_shops is EqualUnmodifiableListView) return _shops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaModel? meta;

/// Create a copy of ShopsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopsResModelCopyWith<_ShopsResModel> get copyWith => __$ShopsResModelCopyWithImpl<_ShopsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShopsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopsResModel&&const DeepCollectionEquality().equals(other.shops, _shops)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_shops),meta);
}

@override
String toString() {
    return 'ShopsResModel(shops: $shops, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ShopsResModelCopyWith<$Res> implements $ShopsResModelCopyWith<$Res> {
  factory _$ShopsResModelCopyWith(_ShopsResModel value, $Res Function(_ShopsResModel) _then) = __$ShopsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<ShopModel>? shops, MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ShopsResModelCopyWithImpl<$Res>
    implements _$ShopsResModelCopyWith<$Res> {
  __$ShopsResModelCopyWithImpl(this._self, this._then);

  final _ShopsResModel _self;
  final $Res Function(_ShopsResModel) _then;

/// Create a copy of ShopsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shops = freezed,Object? meta = freezed,}) {
  return _then(_ShopsResModel(
shops: freezed == shops ? _self._shops : shops // ignore: cast_nullable_to_non_nullable
as List<ShopModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of ShopsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
