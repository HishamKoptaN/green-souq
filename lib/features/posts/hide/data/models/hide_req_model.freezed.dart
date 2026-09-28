// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hide_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HideReqModel {

 int get id; String get type;
/// Create a copy of HideReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HideReqModelCopyWith<HideReqModel> get copyWith => _$HideReqModelCopyWithImpl<HideReqModel>(this as HideReqModel, _$identity);

  /// Serializes this HideReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HideReqModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HideReqModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HideReqModel;
  return Object.hash(runtimeType,_this.id,_this.type);
}

@override
String toString() {
  final _this = this as HideReqModel;
  return 'HideReqModel(id: ${_this.id}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $HideReqModelCopyWith<$Res>  {
  factory $HideReqModelCopyWith(HideReqModel value, $Res Function(HideReqModel) _then) = _$HideReqModelCopyWithImpl;
@useResult
$Res call({
 int id, String type
});




}
/// @nodoc
class _$HideReqModelCopyWithImpl<$Res>
    implements $HideReqModelCopyWith<$Res> {
  _$HideReqModelCopyWithImpl(this._self, this._then);

  final HideReqModel _self;
  final $Res Function(HideReqModel) _then;

/// Create a copy of HideReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,}) {
  return _then(HideReqModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HideReqModel].
extension HideReqModelPatterns on HideReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HideReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HideReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HideReqModel value)  $default,){
final _that = this;
switch (_that) {
case _HideReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HideReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _HideReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HideReqModel() when $default != null:
return $default(_that.id,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type)  $default,) {final _that = this;
switch (_that) {
case _HideReqModel():
return $default(_that.id,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type)?  $default,) {final _that = this;
switch (_that) {
case _HideReqModel() when $default != null:
return $default(_that.id,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HideReqModel extends HideReqModel {
  const _HideReqModel({required this.id, required this.type}): super._();
  factory _HideReqModel.fromJson(Map<String, dynamic> json) => _$HideReqModelFromJson(json);

@override final  int id;
@override final  String type;

/// Create a copy of HideReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HideReqModelCopyWith<_HideReqModel> get copyWith => __$HideReqModelCopyWithImpl<_HideReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HideReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HideReqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type);
}

@override
String toString() {
    return 'HideReqModel(id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class _$HideReqModelCopyWith<$Res> implements $HideReqModelCopyWith<$Res> {
  factory _$HideReqModelCopyWith(_HideReqModel value, $Res Function(_HideReqModel) _then) = __$HideReqModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String type
});




}
/// @nodoc
class __$HideReqModelCopyWithImpl<$Res>
    implements _$HideReqModelCopyWith<$Res> {
  __$HideReqModelCopyWithImpl(this._self, this._then);

  final _HideReqModel _self;
  final $Res Function(_HideReqModel) _then;

/// Create a copy of HideReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,}) {
  return _then(_HideReqModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
