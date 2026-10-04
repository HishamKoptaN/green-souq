// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_req_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePostModel {

@JsonKey(name: "type") PostType? get type;@JsonKey(name: "content") String? get content;@JsonKey(name: "post_id") int? get postId;@JsonKey(name: "media") List<Map<String, dynamic>>? get media;
/// Create a copy of CreatePostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostModelCopyWith<CreatePostModel> get copyWith => _$CreatePostModelCopyWithImpl<CreatePostModel>(this as CreatePostModel, _$identity);

  /// Serializes this CreatePostModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatePostModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostModel&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.postId, _this.postId) || other.postId == _this.postId)&&const DeepCollectionEquality().equals(other.media, _this.media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatePostModel;
  return Object.hash(runtimeType,_this.type,_this.content,_this.postId,const DeepCollectionEquality().hash(_this.media));
}

@override
String toString() {
  final _this = this as CreatePostModel;
  return 'CreatePostModel(type: ${_this.type}, content: ${_this.content}, postId: ${_this.postId}, media: ${_this.media})';
}


}

/// @nodoc
abstract mixin class $CreatePostModelCopyWith<$Res>  {
  factory $CreatePostModelCopyWith(CreatePostModel value, $Res Function(CreatePostModel) _then) = _$CreatePostModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "type") PostType? type,@JsonKey(name: "content") String? content,@JsonKey(name: "post_id") int? postId,@JsonKey(name: "media") List<Map<String, dynamic>>? media
});




}
/// @nodoc
class _$CreatePostModelCopyWithImpl<$Res>
    implements $CreatePostModelCopyWith<$Res> {
  _$CreatePostModelCopyWithImpl(this._self, this._then);

  final CreatePostModel _self;
  final $Res Function(CreatePostModel) _then;

/// Create a copy of CreatePostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? content = freezed,Object? postId = freezed,Object? media = freezed,}) {
  return _then(CreatePostModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostType?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostModel].
extension CreatePostModelPatterns on CreatePostModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  PostType? type, @JsonKey(name: "content")  String? content, @JsonKey(name: "post_id")  int? postId, @JsonKey(name: "media")  List<Map<String, dynamic>>? media)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostModel() when $default != null:
return $default(_that.type,_that.content,_that.postId,_that.media);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  PostType? type, @JsonKey(name: "content")  String? content, @JsonKey(name: "post_id")  int? postId, @JsonKey(name: "media")  List<Map<String, dynamic>>? media)  $default,) {final _that = this;
switch (_that) {
case _CreatePostModel():
return $default(_that.type,_that.content,_that.postId,_that.media);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "type")  PostType? type, @JsonKey(name: "content")  String? content, @JsonKey(name: "post_id")  int? postId, @JsonKey(name: "media")  List<Map<String, dynamic>>? media)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostModel() when $default != null:
return $default(_that.type,_that.content,_that.postId,_that.media);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostModel implements CreatePostModel {
  const _CreatePostModel({@JsonKey(name: "type") this.type, @JsonKey(name: "content") this.content, @JsonKey(name: "post_id") this.postId, @JsonKey(name: "media")  List<Map<String, dynamic>>? media}): _media = media;
  factory _CreatePostModel.fromJson(Map<String, dynamic> json) => _$CreatePostModelFromJson(json);

@override@JsonKey(name: "type") final  PostType? type;
@override@JsonKey(name: "content") final  String? content;
@override@JsonKey(name: "post_id") final  int? postId;
 final  List<Map<String, dynamic>>? _media;
@override@JsonKey(name: "media") List<Map<String, dynamic>>? get media {
  final value = _media;
  if (value == null) return null;
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreatePostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostModelCopyWith<_CreatePostModel> get copyWith => __$CreatePostModelCopyWithImpl<_CreatePostModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostModel&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content)&&(identical(other.postId, postId) || other.postId == postId)&&const DeepCollectionEquality().equals(other.media, _media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,content,postId,const DeepCollectionEquality().hash(_media));
}

@override
String toString() {
    return 'CreatePostModel(type: $type, content: $content, postId: $postId, media: $media)';
}


}

/// @nodoc
abstract mixin class _$CreatePostModelCopyWith<$Res> implements $CreatePostModelCopyWith<$Res> {
  factory _$CreatePostModelCopyWith(_CreatePostModel value, $Res Function(_CreatePostModel) _then) = __$CreatePostModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "type") PostType? type,@JsonKey(name: "content") String? content,@JsonKey(name: "post_id") int? postId,@JsonKey(name: "media") List<Map<String, dynamic>>? media
});




}
/// @nodoc
class __$CreatePostModelCopyWithImpl<$Res>
    implements _$CreatePostModelCopyWith<$Res> {
  __$CreatePostModelCopyWithImpl(this._self, this._then);

  final _CreatePostModel _self;
  final $Res Function(_CreatePostModel) _then;

/// Create a copy of CreatePostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? content = freezed,Object? postId = freezed,Object? media = freezed,}) {
  return _then(_CreatePostModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostType?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,media: freezed == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}


}

// dart format on
