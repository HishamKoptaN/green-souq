// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_engineers_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesEngineersResModel {

@JsonKey(name: 'data') List<SalesEngineerModel>? get salesEngineers; MetaModel? get meta;
/// Create a copy of SalesEngineersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesEngineersResModelCopyWith<SalesEngineersResModel> get copyWith => _$SalesEngineersResModelCopyWithImpl<SalesEngineersResModel>(this as SalesEngineersResModel, _$identity);

  /// Serializes this SalesEngineersResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalesEngineersResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesEngineersResModel&&const DeepCollectionEquality().equals(other.salesEngineers, _this.salesEngineers)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalesEngineersResModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.salesEngineers),_this.meta);
}

@override
String toString() {
  final _this = this as SalesEngineersResModel;
  return 'SalesEngineersResModel(salesEngineers: ${_this.salesEngineers}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $SalesEngineersResModelCopyWith<$Res>  {
  factory $SalesEngineersResModelCopyWith(SalesEngineersResModel value, $Res Function(SalesEngineersResModel) _then) = _$SalesEngineersResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<SalesEngineerModel>? salesEngineers, MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$SalesEngineersResModelCopyWithImpl<$Res>
    implements $SalesEngineersResModelCopyWith<$Res> {
  _$SalesEngineersResModelCopyWithImpl(this._self, this._then);

  final SalesEngineersResModel _self;
  final $Res Function(SalesEngineersResModel) _then;

/// Create a copy of SalesEngineersResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? salesEngineers = freezed,Object? meta = freezed,}) {
  return _then(SalesEngineersResModel(
salesEngineers: freezed == salesEngineers ? _self.salesEngineers : salesEngineers // ignore: cast_nullable_to_non_nullable
as List<SalesEngineerModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of SalesEngineersResModel
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


/// Adds pattern-matching-related methods to [SalesEngineersResModel].
extension SalesEngineersResModelPatterns on SalesEngineersResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesEngineersResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesEngineersResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesEngineersResModel value)  $default,){
final _that = this;
switch (_that) {
case _SalesEngineersResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesEngineersResModel value)?  $default,){
final _that = this;
switch (_that) {
case _SalesEngineersResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SalesEngineerModel>? salesEngineers,  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesEngineersResModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<SalesEngineerModel>? salesEngineers,  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _SalesEngineersResModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<SalesEngineerModel>? salesEngineers,  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _SalesEngineersResModel() when $default != null:
return $default(_that.salesEngineers,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesEngineersResModel implements SalesEngineersResModel {
  const _SalesEngineersResModel({@JsonKey(name: 'data')  List<SalesEngineerModel>? salesEngineers, this.meta}): _salesEngineers = salesEngineers;
  factory _SalesEngineersResModel.fromJson(Map<String, dynamic> json) => _$SalesEngineersResModelFromJson(json);

 final  List<SalesEngineerModel>? _salesEngineers;
@override@JsonKey(name: 'data') List<SalesEngineerModel>? get salesEngineers {
  final value = _salesEngineers;
  if (value == null) return null;
  if (_salesEngineers is EqualUnmodifiableListView) return _salesEngineers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaModel? meta;

/// Create a copy of SalesEngineersResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesEngineersResModelCopyWith<_SalesEngineersResModel> get copyWith => __$SalesEngineersResModelCopyWithImpl<_SalesEngineersResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesEngineersResModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesEngineersResModel&&const DeepCollectionEquality().equals(other.salesEngineers, _salesEngineers)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_salesEngineers),meta);
}

@override
String toString() {
    return 'SalesEngineersResModel(salesEngineers: $salesEngineers, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SalesEngineersResModelCopyWith<$Res> implements $SalesEngineersResModelCopyWith<$Res> {
  factory _$SalesEngineersResModelCopyWith(_SalesEngineersResModel value, $Res Function(_SalesEngineersResModel) _then) = __$SalesEngineersResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<SalesEngineerModel>? salesEngineers, MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$SalesEngineersResModelCopyWithImpl<$Res>
    implements _$SalesEngineersResModelCopyWith<$Res> {
  __$SalesEngineersResModelCopyWithImpl(this._self, this._then);

  final _SalesEngineersResModel _self;
  final $Res Function(_SalesEngineersResModel) _then;

/// Create a copy of SalesEngineersResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? salesEngineers = freezed,Object? meta = freezed,}) {
  return _then(_SalesEngineersResModel(
salesEngineers: freezed == salesEngineers ? _self._salesEngineers : salesEngineers // ignore: cast_nullable_to_non_nullable
as List<SalesEngineerModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of SalesEngineersResModel
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
