// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toggle_like_req_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
ToggleLikeReqBody _$ToggleLikeReqBodyFromJson(
  Map<String, dynamic> json
) {
    return _PostLikeReqBody.fromJson(
      json
    );
}

/// @nodoc
mixin _$ToggleLikeReqBody {

@JsonKey(name: "likeable_id") int? get likeableId;@JsonKey(name: "likeable_type") String? get likeableType;
/// Create a copy of ToggleLikeReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleLikeReqBodyCopyWith<ToggleLikeReqBody> get copyWith => _$ToggleLikeReqBodyCopyWithImpl<ToggleLikeReqBody>(this as ToggleLikeReqBody, _$identity);

  /// Serializes this ToggleLikeReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ToggleLikeReqBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleLikeReqBody&&(identical(other.likeableId, _this.likeableId) || other.likeableId == _this.likeableId)&&(identical(other.likeableType, _this.likeableType) || other.likeableType == _this.likeableType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ToggleLikeReqBody;
  return Object.hash(runtimeType,_this.likeableId,_this.likeableType);
}

@override
String toString() {
  final _this = this as ToggleLikeReqBody;
  return 'ToggleLikeReqBody(likeableId: ${_this.likeableId}, likeableType: ${_this.likeableType})';
}


}

/// @nodoc
abstract mixin class $ToggleLikeReqBodyCopyWith<$Res>  {
  factory $ToggleLikeReqBodyCopyWith(ToggleLikeReqBody value, $Res Function(ToggleLikeReqBody) _then) = _$ToggleLikeReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "likeable_id") int? likeableId,@JsonKey(name: "likeable_type") String? likeableType
});




}
/// @nodoc
class _$ToggleLikeReqBodyCopyWithImpl<$Res>
    implements $ToggleLikeReqBodyCopyWith<$Res> {
  _$ToggleLikeReqBodyCopyWithImpl(this._self, this._then);

  final ToggleLikeReqBody _self;
  final $Res Function(ToggleLikeReqBody) _then;

/// Create a copy of ToggleLikeReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likeableId = freezed,Object? likeableType = freezed,}) {
  return _then(ToggleLikeReqBody(
likeableId: freezed == likeableId ? _self.likeableId : likeableId // ignore: cast_nullable_to_non_nullable
as int?,likeableType: freezed == likeableType ? _self.likeableType : likeableType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ToggleLikeReqBody].
extension ToggleLikeReqBodyPatterns on ToggleLikeReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostLikeReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostLikeReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostLikeReqBody value)  $default,){
final _that = this;
switch (_that) {
case _PostLikeReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostLikeReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _PostLikeReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "likeable_id")  int? likeableId, @JsonKey(name: "likeable_type")  String? likeableType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostLikeReqBody() when $default != null:
return $default(_that.likeableId,_that.likeableType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "likeable_id")  int? likeableId, @JsonKey(name: "likeable_type")  String? likeableType)  $default,) {final _that = this;
switch (_that) {
case _PostLikeReqBody():
return $default(_that.likeableId,_that.likeableType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "likeable_id")  int? likeableId, @JsonKey(name: "likeable_type")  String? likeableType)?  $default,) {final _that = this;
switch (_that) {
case _PostLikeReqBody() when $default != null:
return $default(_that.likeableId,_that.likeableType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostLikeReqBody implements ToggleLikeReqBody {
  const _PostLikeReqBody({@JsonKey(name: "likeable_id") this.likeableId, @JsonKey(name: "likeable_type") this.likeableType});
  factory _PostLikeReqBody.fromJson(Map<String, dynamic> json) => _$PostLikeReqBodyFromJson(json);

@override@JsonKey(name: "likeable_id") final  int? likeableId;
@override@JsonKey(name: "likeable_type") final  String? likeableType;

/// Create a copy of ToggleLikeReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostLikeReqBodyCopyWith<_PostLikeReqBody> get copyWith => __$PostLikeReqBodyCopyWithImpl<_PostLikeReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostLikeReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostLikeReqBody&&(identical(other.likeableId, likeableId) || other.likeableId == likeableId)&&(identical(other.likeableType, likeableType) || other.likeableType == likeableType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,likeableId,likeableType);
}

@override
String toString() {
    return 'ToggleLikeReqBody(likeableId: $likeableId, likeableType: $likeableType)';
}


}

/// @nodoc
abstract mixin class _$PostLikeReqBodyCopyWith<$Res> implements $ToggleLikeReqBodyCopyWith<$Res> {
  factory _$PostLikeReqBodyCopyWith(_PostLikeReqBody value, $Res Function(_PostLikeReqBody) _then) = __$PostLikeReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "likeable_id") int? likeableId,@JsonKey(name: "likeable_type") String? likeableType
});




}
/// @nodoc
class __$PostLikeReqBodyCopyWithImpl<$Res>
    implements _$PostLikeReqBodyCopyWith<$Res> {
  __$PostLikeReqBodyCopyWithImpl(this._self, this._then);

  final _PostLikeReqBody _self;
  final $Res Function(_PostLikeReqBody) _then;

/// Create a copy of ToggleLikeReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likeableId = freezed,Object? likeableType = freezed,}) {
  return _then(_PostLikeReqBody(
likeableId: freezed == likeableId ? _self.likeableId : likeableId // ignore: cast_nullable_to_non_nullable
as int?,likeableType: freezed == likeableType ? _self.likeableType : likeableType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
