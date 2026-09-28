// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cmnts_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CmntsResModel {

 List<Cmnt>? get cmnts; MetaModel? get meta;
/// Create a copy of CmntsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CmntsResModelCopyWith<CmntsResModel> get copyWith => _$CmntsResModelCopyWithImpl<CmntsResModel>(this as CmntsResModel, _$identity);

  /// Serializes this CmntsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CmntsResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CmntsResModel&&const DeepCollectionEquality().equals(other.cmnts, _this.cmnts)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CmntsResModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.cmnts),_this.meta);
}

@override
String toString() {
  final _this = this as CmntsResModel;
  return 'CmntsResModel(cmnts: ${_this.cmnts}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $CmntsResModelCopyWith<$Res>  {
  factory $CmntsResModelCopyWith(CmntsResModel value, $Res Function(CmntsResModel) _then) = _$CmntsResModelCopyWithImpl;
@useResult
$Res call({
 List<Cmnt>? cmnts, MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$CmntsResModelCopyWithImpl<$Res>
    implements $CmntsResModelCopyWith<$Res> {
  _$CmntsResModelCopyWithImpl(this._self, this._then);

  final CmntsResModel _self;
  final $Res Function(CmntsResModel) _then;

/// Create a copy of CmntsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cmnts = freezed,Object? meta = freezed,}) {
  return _then(CmntsResModel(
cmnts: freezed == cmnts ? _self.cmnts : cmnts // ignore: cast_nullable_to_non_nullable
as List<Cmnt>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of CmntsResModel
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


/// Adds pattern-matching-related methods to [CmntsResModel].
extension CmntsResModelPatterns on CmntsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CmntsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CmntsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CmntsResModel value)  $default,){
final _that = this;
switch (_that) {
case _CmntsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CmntsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _CmntsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Cmnt>? cmnts,  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CmntsResModel() when $default != null:
return $default(_that.cmnts,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Cmnt>? cmnts,  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _CmntsResModel():
return $default(_that.cmnts,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Cmnt>? cmnts,  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _CmntsResModel() when $default != null:
return $default(_that.cmnts,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CmntsResModel implements CmntsResModel {
  const _CmntsResModel({ List<Cmnt>? cmnts, this.meta}): _cmnts = cmnts;
  factory _CmntsResModel.fromJson(Map<String, dynamic> json) => _$CmntsResModelFromJson(json);

 final  List<Cmnt>? _cmnts;
@override List<Cmnt>? get cmnts {
  final value = _cmnts;
  if (value == null) return null;
  if (_cmnts is EqualUnmodifiableListView) return _cmnts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaModel? meta;

/// Create a copy of CmntsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CmntsResModelCopyWith<_CmntsResModel> get copyWith => __$CmntsResModelCopyWithImpl<_CmntsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CmntsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CmntsResModel&&const DeepCollectionEquality().equals(other.cmnts, _cmnts)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_cmnts),meta);
}

@override
String toString() {
    return 'CmntsResModel(cmnts: $cmnts, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CmntsResModelCopyWith<$Res> implements $CmntsResModelCopyWith<$Res> {
  factory _$CmntsResModelCopyWith(_CmntsResModel value, $Res Function(_CmntsResModel) _then) = __$CmntsResModelCopyWithImpl;
@override @useResult
$Res call({
 List<Cmnt>? cmnts, MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$CmntsResModelCopyWithImpl<$Res>
    implements _$CmntsResModelCopyWith<$Res> {
  __$CmntsResModelCopyWithImpl(this._self, this._then);

  final _CmntsResModel _self;
  final $Res Function(_CmntsResModel) _then;

/// Create a copy of CmntsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cmnts = freezed,Object? meta = freezed,}) {
  return _then(_CmntsResModel(
cmnts: freezed == cmnts ? _self._cmnts : cmnts // ignore: cast_nullable_to_non_nullable
as List<Cmnt>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of CmntsResModel
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
