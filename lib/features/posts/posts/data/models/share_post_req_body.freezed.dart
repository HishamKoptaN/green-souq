// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_post_req_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SharePostReqBody {

@JsonKey(name: "id") int? get id;@JsonKey(name: "content") String? get content;
/// Create a copy of SharePostReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharePostReqBodyCopyWith<SharePostReqBody> get copyWith => _$SharePostReqBodyCopyWithImpl<SharePostReqBody>(this as SharePostReqBody, _$identity);

  /// Serializes this SharePostReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SharePostReqBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharePostReqBody&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.content, _this.content) || other.content == _this.content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SharePostReqBody;
  return Object.hash(runtimeType,_this.id,_this.content);
}

@override
String toString() {
  final _this = this as SharePostReqBody;
  return 'SharePostReqBody(id: ${_this.id}, content: ${_this.content})';
}


}

/// @nodoc
abstract mixin class $SharePostReqBodyCopyWith<$Res>  {
  factory $SharePostReqBodyCopyWith(SharePostReqBody value, $Res Function(SharePostReqBody) _then) = _$SharePostReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "content") String? content
});




}
/// @nodoc
class _$SharePostReqBodyCopyWithImpl<$Res>
    implements $SharePostReqBodyCopyWith<$Res> {
  _$SharePostReqBodyCopyWithImpl(this._self, this._then);

  final SharePostReqBody _self;
  final $Res Function(SharePostReqBody) _then;

/// Create a copy of SharePostReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? content = freezed,}) {
  return _then(SharePostReqBody(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SharePostReqBody].
extension SharePostReqBodyPatterns on SharePostReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SharePostReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SharePostReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SharePostReqBody value)  $default,){
final _that = this;
switch (_that) {
case _SharePostReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SharePostReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _SharePostReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "content")  String? content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SharePostReqBody() when $default != null:
return $default(_that.id,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "content")  String? content)  $default,) {final _that = this;
switch (_that) {
case _SharePostReqBody():
return $default(_that.id,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "content")  String? content)?  $default,) {final _that = this;
switch (_that) {
case _SharePostReqBody() when $default != null:
return $default(_that.id,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SharePostReqBody implements SharePostReqBody {
  const _SharePostReqBody({@JsonKey(name: "id") this.id, @JsonKey(name: "content") this.content});
  factory _SharePostReqBody.fromJson(Map<String, dynamic> json) => _$SharePostReqBodyFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "content") final  String? content;

/// Create a copy of SharePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharePostReqBodyCopyWith<_SharePostReqBody> get copyWith => __$SharePostReqBodyCopyWithImpl<_SharePostReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SharePostReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharePostReqBody&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,content);
}

@override
String toString() {
    return 'SharePostReqBody(id: $id, content: $content)';
}


}

/// @nodoc
abstract mixin class _$SharePostReqBodyCopyWith<$Res> implements $SharePostReqBodyCopyWith<$Res> {
  factory _$SharePostReqBodyCopyWith(_SharePostReqBody value, $Res Function(_SharePostReqBody) _then) = __$SharePostReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "content") String? content
});




}
/// @nodoc
class __$SharePostReqBodyCopyWithImpl<$Res>
    implements _$SharePostReqBodyCopyWith<$Res> {
  __$SharePostReqBodyCopyWithImpl(this._self, this._then);

  final _SharePostReqBody _self;
  final $Res Function(_SharePostReqBody) _then;

/// Create a copy of SharePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? content = freezed,}) {
  return _then(_SharePostReqBody(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
