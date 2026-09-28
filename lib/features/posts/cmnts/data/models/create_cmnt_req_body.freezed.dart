// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_cmnt_req_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCmntReqBody {

@JsonKey(name: "comment") String? get comment;@JsonKey(name: "image_url") String? get imageUrl;@JsonKey(name: "video_url") String? get videoUrl;@JsonKey(name: "commentable_id") int? get commentableId;@JsonKey(name: "commentable_type") String? get commentableType;
/// Create a copy of CreateCmntReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCmntReqBodyCopyWith<CreateCmntReqBody> get copyWith => _$CreateCmntReqBodyCopyWithImpl<CreateCmntReqBody>(this as CreateCmntReqBody, _$identity);

  /// Serializes this CreateCmntReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateCmntReqBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCmntReqBody&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.videoUrl, _this.videoUrl) || other.videoUrl == _this.videoUrl)&&(identical(other.commentableId, _this.commentableId) || other.commentableId == _this.commentableId)&&(identical(other.commentableType, _this.commentableType) || other.commentableType == _this.commentableType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateCmntReqBody;
  return Object.hash(runtimeType,_this.comment,_this.imageUrl,_this.videoUrl,_this.commentableId,_this.commentableType);
}

@override
String toString() {
  final _this = this as CreateCmntReqBody;
  return 'CreateCmntReqBody(comment: ${_this.comment}, imageUrl: ${_this.imageUrl}, videoUrl: ${_this.videoUrl}, commentableId: ${_this.commentableId}, commentableType: ${_this.commentableType})';
}


}

/// @nodoc
abstract mixin class $CreateCmntReqBodyCopyWith<$Res>  {
  factory $CreateCmntReqBodyCopyWith(CreateCmntReqBody value, $Res Function(CreateCmntReqBody) _then) = _$CreateCmntReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "comment") String? comment,@JsonKey(name: "image_url") String? imageUrl,@JsonKey(name: "video_url") String? videoUrl,@JsonKey(name: "commentable_id") int? commentableId,@JsonKey(name: "commentable_type") String? commentableType
});




}
/// @nodoc
class _$CreateCmntReqBodyCopyWithImpl<$Res>
    implements $CreateCmntReqBodyCopyWith<$Res> {
  _$CreateCmntReqBodyCopyWithImpl(this._self, this._then);

  final CreateCmntReqBody _self;
  final $Res Function(CreateCmntReqBody) _then;

/// Create a copy of CreateCmntReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? commentableId = freezed,Object? commentableType = freezed,}) {
  return _then(CreateCmntReqBody(
comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,commentableId: freezed == commentableId ? _self.commentableId : commentableId // ignore: cast_nullable_to_non_nullable
as int?,commentableType: freezed == commentableType ? _self.commentableType : commentableType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCmntReqBody].
extension CreateCmntReqBodyPatterns on CreateCmntReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCmntReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCmntReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCmntReqBody value)  $default,){
final _that = this;
switch (_that) {
case _CreateCmntReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCmntReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCmntReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "comment")  String? comment, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(name: "video_url")  String? videoUrl, @JsonKey(name: "commentable_id")  int? commentableId, @JsonKey(name: "commentable_type")  String? commentableType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCmntReqBody() when $default != null:
return $default(_that.comment,_that.imageUrl,_that.videoUrl,_that.commentableId,_that.commentableType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "comment")  String? comment, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(name: "video_url")  String? videoUrl, @JsonKey(name: "commentable_id")  int? commentableId, @JsonKey(name: "commentable_type")  String? commentableType)  $default,) {final _that = this;
switch (_that) {
case _CreateCmntReqBody():
return $default(_that.comment,_that.imageUrl,_that.videoUrl,_that.commentableId,_that.commentableType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "comment")  String? comment, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(name: "video_url")  String? videoUrl, @JsonKey(name: "commentable_id")  int? commentableId, @JsonKey(name: "commentable_type")  String? commentableType)?  $default,) {final _that = this;
switch (_that) {
case _CreateCmntReqBody() when $default != null:
return $default(_that.comment,_that.imageUrl,_that.videoUrl,_that.commentableId,_that.commentableType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCmntReqBody implements CreateCmntReqBody {
  const _CreateCmntReqBody({@JsonKey(name: "comment") this.comment, @JsonKey(name: "image_url") this.imageUrl, @JsonKey(name: "video_url") this.videoUrl, @JsonKey(name: "commentable_id") this.commentableId, @JsonKey(name: "commentable_type") this.commentableType});
  factory _CreateCmntReqBody.fromJson(Map<String, dynamic> json) => _$CreateCmntReqBodyFromJson(json);

@override@JsonKey(name: "comment") final  String? comment;
@override@JsonKey(name: "image_url") final  String? imageUrl;
@override@JsonKey(name: "video_url") final  String? videoUrl;
@override@JsonKey(name: "commentable_id") final  int? commentableId;
@override@JsonKey(name: "commentable_type") final  String? commentableType;

/// Create a copy of CreateCmntReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCmntReqBodyCopyWith<_CreateCmntReqBody> get copyWith => __$CreateCmntReqBodyCopyWithImpl<_CreateCmntReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCmntReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCmntReqBody&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.commentableId, commentableId) || other.commentableId == commentableId)&&(identical(other.commentableType, commentableType) || other.commentableType == commentableType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,comment,imageUrl,videoUrl,commentableId,commentableType);
}

@override
String toString() {
    return 'CreateCmntReqBody(comment: $comment, imageUrl: $imageUrl, videoUrl: $videoUrl, commentableId: $commentableId, commentableType: $commentableType)';
}


}

/// @nodoc
abstract mixin class _$CreateCmntReqBodyCopyWith<$Res> implements $CreateCmntReqBodyCopyWith<$Res> {
  factory _$CreateCmntReqBodyCopyWith(_CreateCmntReqBody value, $Res Function(_CreateCmntReqBody) _then) = __$CreateCmntReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "comment") String? comment,@JsonKey(name: "image_url") String? imageUrl,@JsonKey(name: "video_url") String? videoUrl,@JsonKey(name: "commentable_id") int? commentableId,@JsonKey(name: "commentable_type") String? commentableType
});




}
/// @nodoc
class __$CreateCmntReqBodyCopyWithImpl<$Res>
    implements _$CreateCmntReqBodyCopyWith<$Res> {
  __$CreateCmntReqBodyCopyWithImpl(this._self, this._then);

  final _CreateCmntReqBody _self;
  final $Res Function(_CreateCmntReqBody) _then;

/// Create a copy of CreateCmntReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? commentableId = freezed,Object? commentableType = freezed,}) {
  return _then(_CreateCmntReqBody(
comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,commentableId: freezed == commentableId ? _self.commentableId : commentableId // ignore: cast_nullable_to_non_nullable
as int?,commentableType: freezed == commentableType ? _self.commentableType : commentableType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
