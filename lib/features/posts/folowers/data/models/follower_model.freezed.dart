// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follower_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowerModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "type") String? get type;@JsonKey(name: "name") String? get name;@JsonKey(name: "image") String? get image;
/// Create a copy of FollowerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowerModelCopyWith<FollowerModel> get copyWith => _$FollowerModelCopyWithImpl<FollowerModel>(this as FollowerModel, _$identity);

  /// Serializes this FollowerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FollowerModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowerModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FollowerModel;
  return Object.hash(runtimeType,_this.id,_this.type,_this.name,_this.image);
}

@override
String toString() {
  final _this = this as FollowerModel;
  return 'FollowerModel(id: ${_this.id}, type: ${_this.type}, name: ${_this.name}, image: ${_this.image})';
}


}

/// @nodoc
abstract mixin class $FollowerModelCopyWith<$Res>  {
  factory $FollowerModelCopyWith(FollowerModel value, $Res Function(FollowerModel) _then) = _$FollowerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "type") String? type,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image
});




}
/// @nodoc
class _$FollowerModelCopyWithImpl<$Res>
    implements $FollowerModelCopyWith<$Res> {
  _$FollowerModelCopyWithImpl(this._self, this._then);

  final FollowerModel _self;
  final $Res Function(FollowerModel) _then;

/// Create a copy of FollowerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(FollowerModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FollowerModel].
extension FollowerModelPatterns on FollowerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowerModel value)  $default,){
final _that = this;
switch (_that) {
case _FollowerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowerModel value)?  $default,){
final _that = this;
switch (_that) {
case _FollowerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowerModel() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)  $default,) {final _that = this;
switch (_that) {
case _FollowerModel():
return $default(_that.id,_that.type,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)?  $default,) {final _that = this;
switch (_that) {
case _FollowerModel() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowerModel implements FollowerModel {
  const _FollowerModel({@JsonKey(name: "id") this.id, @JsonKey(name: "type") this.type, @JsonKey(name: "name") this.name, @JsonKey(name: "image") this.image});
  factory _FollowerModel.fromJson(Map<String, dynamic> json) => _$FollowerModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "image") final  String? image;

/// Create a copy of FollowerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowerModelCopyWith<_FollowerModel> get copyWith => __$FollowerModelCopyWithImpl<_FollowerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowerModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,name,image);
}

@override
String toString() {
    return 'FollowerModel(id: $id, type: $type, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$FollowerModelCopyWith<$Res> implements $FollowerModelCopyWith<$Res> {
  factory _$FollowerModelCopyWith(_FollowerModel value, $Res Function(_FollowerModel) _then) = __$FollowerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "type") String? type,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image
});




}
/// @nodoc
class __$FollowerModelCopyWithImpl<$Res>
    implements _$FollowerModelCopyWith<$Res> {
  __$FollowerModelCopyWithImpl(this._self, this._then);

  final _FollowerModel _self;
  final $Res Function(_FollowerModel) _then;

/// Create a copy of FollowerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_FollowerModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
