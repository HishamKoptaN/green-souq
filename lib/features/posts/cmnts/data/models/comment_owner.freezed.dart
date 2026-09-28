// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentOwner {

@JsonKey(name: "type") String? get type;@JsonKey(name: "name") String? get name;@JsonKey(name: "image") String? get image;
/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentOwnerCopyWith<CommentOwner> get copyWith => _$CommentOwnerCopyWithImpl<CommentOwner>(this as CommentOwner, _$identity);

  /// Serializes this CommentOwner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CommentOwner;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentOwner&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CommentOwner;
  return Object.hash(runtimeType,_this.type,_this.name,_this.image);
}

@override
String toString() {
  final _this = this as CommentOwner;
  return 'CommentOwner(type: ${_this.type}, name: ${_this.name}, image: ${_this.image})';
}


}

/// @nodoc
abstract mixin class $CommentOwnerCopyWith<$Res>  {
  factory $CommentOwnerCopyWith(CommentOwner value, $Res Function(CommentOwner) _then) = _$CommentOwnerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "type") String? type,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image
});




}
/// @nodoc
class _$CommentOwnerCopyWithImpl<$Res>
    implements $CommentOwnerCopyWith<$Res> {
  _$CommentOwnerCopyWithImpl(this._self, this._then);

  final CommentOwner _self;
  final $Res Function(CommentOwner) _then;

/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(CommentOwner(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentOwner].
extension CommentOwnerPatterns on CommentOwner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentOwner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentOwner value)  $default,){
final _that = this;
switch (_that) {
case _CommentOwner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentOwner value)?  $default,){
final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
return $default(_that.type,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)  $default,) {final _that = this;
switch (_that) {
case _CommentOwner():
return $default(_that.type,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image)?  $default,) {final _that = this;
switch (_that) {
case _CommentOwner() when $default != null:
return $default(_that.type,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentOwner implements CommentOwner {
  const _CommentOwner({@JsonKey(name: "type") this.type, @JsonKey(name: "name") this.name, @JsonKey(name: "image") this.image});
  factory _CommentOwner.fromJson(Map<String, dynamic> json) => _$CommentOwnerFromJson(json);

@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "image") final  String? image;

/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentOwnerCopyWith<_CommentOwner> get copyWith => __$CommentOwnerCopyWithImpl<_CommentOwner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentOwnerToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentOwner&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,name,image);
}

@override
String toString() {
    return 'CommentOwner(type: $type, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CommentOwnerCopyWith<$Res> implements $CommentOwnerCopyWith<$Res> {
  factory _$CommentOwnerCopyWith(_CommentOwner value, $Res Function(_CommentOwner) _then) = __$CommentOwnerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "type") String? type,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image
});




}
/// @nodoc
class __$CommentOwnerCopyWithImpl<$Res>
    implements _$CommentOwnerCopyWith<$Res> {
  __$CommentOwnerCopyWithImpl(this._self, this._then);

  final _CommentOwner _self;
  final $Res Function(_CommentOwner) _then;

/// Create a copy of CommentOwner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_CommentOwner(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
