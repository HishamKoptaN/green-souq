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
mixin _$CreatePostReqBody {

@JsonKey(name: "type") PostType? get type;@JsonKey(name: "content") String? get content;@JsonKey(name: "post_id") int? get postId;@JsonKey(ignore: true) Uint8List? get image;@JsonKey(name: "image_url") String? get imageUrl;@JsonKey(ignore: true) Uint8List? get video;@JsonKey(name: "video_url") String? get videoUrl;@JsonKey(name: "pdf_name") String? get pdfName;@JsonKey(ignore: true) Uint8List? get pdf; bool? get hasDraft;@JsonKey(name: "pdf_url") String? get pdfUrl;@JsonKey(name: "original_post_id") int? get originalPostId;@JsonKey(name: "publish_at", includeIfNull: false) String? get publishAt;@JsonKey(ignore: true) CreateOccasionReqBody get createOccasionReqBody;@JsonKey(ignore: true) CreateServReqReqBody get createServReqReqBody;@JsonKey(ignore: true) CreatePollReqBody get poll;@JsonKey(ignore: true) NewsCompanySocialBody? get newsCompanySocial;
/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostReqBodyCopyWith<CreatePostReqBody> get copyWith => _$CreatePostReqBodyCopyWithImpl<CreatePostReqBody>(this as CreatePostReqBody, _$identity);

  /// Serializes this CreatePostReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatePostReqBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostReqBody&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.postId, _this.postId) || other.postId == _this.postId)&&const DeepCollectionEquality().equals(other.image, _this.image)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&const DeepCollectionEquality().equals(other.video, _this.video)&&(identical(other.videoUrl, _this.videoUrl) || other.videoUrl == _this.videoUrl)&&(identical(other.pdfName, _this.pdfName) || other.pdfName == _this.pdfName)&&const DeepCollectionEquality().equals(other.pdf, _this.pdf)&&(identical(other.hasDraft, _this.hasDraft) || other.hasDraft == _this.hasDraft)&&(identical(other.pdfUrl, _this.pdfUrl) || other.pdfUrl == _this.pdfUrl)&&(identical(other.originalPostId, _this.originalPostId) || other.originalPostId == _this.originalPostId)&&(identical(other.publishAt, _this.publishAt) || other.publishAt == _this.publishAt)&&(identical(other.createOccasionReqBody, _this.createOccasionReqBody) || other.createOccasionReqBody == _this.createOccasionReqBody)&&(identical(other.createServReqReqBody, _this.createServReqReqBody) || other.createServReqReqBody == _this.createServReqReqBody)&&(identical(other.poll, _this.poll) || other.poll == _this.poll)&&(identical(other.newsCompanySocial, _this.newsCompanySocial) || other.newsCompanySocial == _this.newsCompanySocial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatePostReqBody;
  return Object.hash(runtimeType,_this.type,_this.content,_this.postId,const DeepCollectionEquality().hash(_this.image),_this.imageUrl,const DeepCollectionEquality().hash(_this.video),_this.videoUrl,_this.pdfName,const DeepCollectionEquality().hash(_this.pdf),_this.hasDraft,_this.pdfUrl,_this.originalPostId,_this.publishAt,_this.createOccasionReqBody,_this.createServReqReqBody,_this.poll,_this.newsCompanySocial);
}

@override
String toString() {
  final _this = this as CreatePostReqBody;
  return 'CreatePostReqBody(type: ${_this.type}, content: ${_this.content}, postId: ${_this.postId}, image: ${_this.image}, imageUrl: ${_this.imageUrl}, video: ${_this.video}, videoUrl: ${_this.videoUrl}, pdfName: ${_this.pdfName}, pdf: ${_this.pdf}, hasDraft: ${_this.hasDraft}, pdfUrl: ${_this.pdfUrl}, originalPostId: ${_this.originalPostId}, publishAt: ${_this.publishAt}, createOccasionReqBody: ${_this.createOccasionReqBody}, createServReqReqBody: ${_this.createServReqReqBody}, poll: ${_this.poll}, newsCompanySocial: ${_this.newsCompanySocial})';
}


}

/// @nodoc
abstract mixin class $CreatePostReqBodyCopyWith<$Res>  {
  factory $CreatePostReqBodyCopyWith(CreatePostReqBody value, $Res Function(CreatePostReqBody) _then) = _$CreatePostReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "type") PostType? type,@JsonKey(name: "content") String? content,@JsonKey(name: "post_id") int? postId,@JsonKey(ignore: true) Uint8List? image,@JsonKey(name: "image_url") String? imageUrl,@JsonKey(ignore: true) Uint8List? video,@JsonKey(name: "video_url") String? videoUrl,@JsonKey(name: "pdf_name") String? pdfName,@JsonKey(ignore: true) Uint8List? pdf, bool? hasDraft,@JsonKey(name: "pdf_url") String? pdfUrl,@JsonKey(name: "original_post_id") int? originalPostId,@JsonKey(name: "publish_at", includeIfNull: false) String? publishAt,@JsonKey(ignore: true) CreateOccasionReqBody createOccasionReqBody,@JsonKey(ignore: true) CreateServReqReqBody createServReqReqBody,@JsonKey(ignore: true) CreatePollReqBody poll,@JsonKey(ignore: true) NewsCompanySocialBody? newsCompanySocial
});


$CreateOccasionReqBodyCopyWith<$Res> get createOccasionReqBody;$CreateServReqReqBodyCopyWith<$Res> get createServReqReqBody;$CreatePollReqBodyCopyWith<$Res> get poll;

}
/// @nodoc
class _$CreatePostReqBodyCopyWithImpl<$Res>
    implements $CreatePostReqBodyCopyWith<$Res> {
  _$CreatePostReqBodyCopyWithImpl(this._self, this._then);

  final CreatePostReqBody _self;
  final $Res Function(CreatePostReqBody) _then;

/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? content = freezed,Object? postId = freezed,Object? image = freezed,Object? imageUrl = freezed,Object? video = freezed,Object? videoUrl = freezed,Object? pdfName = freezed,Object? pdf = freezed,Object? hasDraft = freezed,Object? pdfUrl = freezed,Object? originalPostId = freezed,Object? publishAt = freezed,Object? createOccasionReqBody = null,Object? createServReqReqBody = null,Object? poll = null,Object? newsCompanySocial = freezed,}) {
  return _then(CreatePostReqBody(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostType?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as Uint8List?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,pdfName: freezed == pdfName ? _self.pdfName : pdfName // ignore: cast_nullable_to_non_nullable
as String?,pdf: freezed == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as Uint8List?,hasDraft: freezed == hasDraft ? _self.hasDraft : hasDraft // ignore: cast_nullable_to_non_nullable
as bool?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,originalPostId: freezed == originalPostId ? _self.originalPostId : originalPostId // ignore: cast_nullable_to_non_nullable
as int?,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as String?,createOccasionReqBody: null == createOccasionReqBody ? _self.createOccasionReqBody : createOccasionReqBody // ignore: cast_nullable_to_non_nullable
as CreateOccasionReqBody,createServReqReqBody: null == createServReqReqBody ? _self.createServReqReqBody : createServReqReqBody // ignore: cast_nullable_to_non_nullable
as CreateServReqReqBody,poll: null == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as CreatePollReqBody,newsCompanySocial: freezed == newsCompanySocial ? _self.newsCompanySocial : newsCompanySocial // ignore: cast_nullable_to_non_nullable
as NewsCompanySocialBody?,
  ));
}
/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOccasionReqBodyCopyWith<$Res> get createOccasionReqBody {
  
  return $CreateOccasionReqBodyCopyWith<$Res>(_self.createOccasionReqBody, (value) {
    return _then(_self.copyWith(createOccasionReqBody: value));
  });
}/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateServReqReqBodyCopyWith<$Res> get createServReqReqBody {
  
  return $CreateServReqReqBodyCopyWith<$Res>(_self.createServReqReqBody, (value) {
    return _then(_self.copyWith(createServReqReqBody: value));
  });
}/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePollReqBodyCopyWith<$Res> get poll {
  
  return $CreatePollReqBodyCopyWith<$Res>(_self.poll, (value) {
    return _then(_self.copyWith(poll: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreatePostReqBody].
extension CreatePostReqBodyPatterns on CreatePostReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostReqBody value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  PostType? type, @JsonKey(name: "content")  String? content, @JsonKey(name: "post_id")  int? postId, @JsonKey(ignore: true)  Uint8List? image, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(ignore: true)  Uint8List? video, @JsonKey(name: "video_url")  String? videoUrl, @JsonKey(name: "pdf_name")  String? pdfName, @JsonKey(ignore: true)  Uint8List? pdf,  bool? hasDraft, @JsonKey(name: "pdf_url")  String? pdfUrl, @JsonKey(name: "original_post_id")  int? originalPostId, @JsonKey(name: "publish_at", includeIfNull: false)  String? publishAt, @JsonKey(ignore: true)  CreateOccasionReqBody createOccasionReqBody, @JsonKey(ignore: true)  CreateServReqReqBody createServReqReqBody, @JsonKey(ignore: true)  CreatePollReqBody poll, @JsonKey(ignore: true)  NewsCompanySocialBody? newsCompanySocial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostReqBody() when $default != null:
return $default(_that.type,_that.content,_that.postId,_that.image,_that.imageUrl,_that.video,_that.videoUrl,_that.pdfName,_that.pdf,_that.hasDraft,_that.pdfUrl,_that.originalPostId,_that.publishAt,_that.createOccasionReqBody,_that.createServReqReqBody,_that.poll,_that.newsCompanySocial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "type")  PostType? type, @JsonKey(name: "content")  String? content, @JsonKey(name: "post_id")  int? postId, @JsonKey(ignore: true)  Uint8List? image, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(ignore: true)  Uint8List? video, @JsonKey(name: "video_url")  String? videoUrl, @JsonKey(name: "pdf_name")  String? pdfName, @JsonKey(ignore: true)  Uint8List? pdf,  bool? hasDraft, @JsonKey(name: "pdf_url")  String? pdfUrl, @JsonKey(name: "original_post_id")  int? originalPostId, @JsonKey(name: "publish_at", includeIfNull: false)  String? publishAt, @JsonKey(ignore: true)  CreateOccasionReqBody createOccasionReqBody, @JsonKey(ignore: true)  CreateServReqReqBody createServReqReqBody, @JsonKey(ignore: true)  CreatePollReqBody poll, @JsonKey(ignore: true)  NewsCompanySocialBody? newsCompanySocial)  $default,) {final _that = this;
switch (_that) {
case _CreatePostReqBody():
return $default(_that.type,_that.content,_that.postId,_that.image,_that.imageUrl,_that.video,_that.videoUrl,_that.pdfName,_that.pdf,_that.hasDraft,_that.pdfUrl,_that.originalPostId,_that.publishAt,_that.createOccasionReqBody,_that.createServReqReqBody,_that.poll,_that.newsCompanySocial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "type")  PostType? type, @JsonKey(name: "content")  String? content, @JsonKey(name: "post_id")  int? postId, @JsonKey(ignore: true)  Uint8List? image, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(ignore: true)  Uint8List? video, @JsonKey(name: "video_url")  String? videoUrl, @JsonKey(name: "pdf_name")  String? pdfName, @JsonKey(ignore: true)  Uint8List? pdf,  bool? hasDraft, @JsonKey(name: "pdf_url")  String? pdfUrl, @JsonKey(name: "original_post_id")  int? originalPostId, @JsonKey(name: "publish_at", includeIfNull: false)  String? publishAt, @JsonKey(ignore: true)  CreateOccasionReqBody createOccasionReqBody, @JsonKey(ignore: true)  CreateServReqReqBody createServReqReqBody, @JsonKey(ignore: true)  CreatePollReqBody poll, @JsonKey(ignore: true)  NewsCompanySocialBody? newsCompanySocial)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostReqBody() when $default != null:
return $default(_that.type,_that.content,_that.postId,_that.image,_that.imageUrl,_that.video,_that.videoUrl,_that.pdfName,_that.pdf,_that.hasDraft,_that.pdfUrl,_that.originalPostId,_that.publishAt,_that.createOccasionReqBody,_that.createServReqReqBody,_that.poll,_that.newsCompanySocial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostReqBody implements CreatePostReqBody {
  const _CreatePostReqBody({@JsonKey(name: "type") this.type, @JsonKey(name: "content") this.content, @JsonKey(name: "post_id") this.postId, @JsonKey(ignore: true) this.image, @JsonKey(name: "image_url") this.imageUrl, @JsonKey(ignore: true) this.video, @JsonKey(name: "video_url") this.videoUrl, @JsonKey(name: "pdf_name") this.pdfName, @JsonKey(ignore: true) this.pdf, this.hasDraft, @JsonKey(name: "pdf_url") this.pdfUrl, @JsonKey(name: "original_post_id") this.originalPostId, @JsonKey(name: "publish_at", includeIfNull: false) this.publishAt, @JsonKey(ignore: true) this.createOccasionReqBody = const CreateOccasionReqBody(), @JsonKey(ignore: true) this.createServReqReqBody = const CreateServReqReqBody(), @JsonKey(ignore: true) this.poll = const CreatePollReqBody(), @JsonKey(ignore: true) this.newsCompanySocial});
  factory _CreatePostReqBody.fromJson(Map<String, dynamic> json) => _$CreatePostReqBodyFromJson(json);

@override@JsonKey(name: "type") final  PostType? type;
@override@JsonKey(name: "content") final  String? content;
@override@JsonKey(name: "post_id") final  int? postId;
@override@JsonKey(ignore: true) final  Uint8List? image;
@override@JsonKey(name: "image_url") final  String? imageUrl;
@override@JsonKey(ignore: true) final  Uint8List? video;
@override@JsonKey(name: "video_url") final  String? videoUrl;
@override@JsonKey(name: "pdf_name") final  String? pdfName;
@override@JsonKey(ignore: true) final  Uint8List? pdf;
@override final  bool? hasDraft;
@override@JsonKey(name: "pdf_url") final  String? pdfUrl;
@override@JsonKey(name: "original_post_id") final  int? originalPostId;
@override@JsonKey(name: "publish_at", includeIfNull: false) final  String? publishAt;
@override@JsonKey(ignore: true) final  CreateOccasionReqBody createOccasionReqBody;
@override@JsonKey(ignore: true) final  CreateServReqReqBody createServReqReqBody;
@override@JsonKey(ignore: true) final  CreatePollReqBody poll;
@override@JsonKey(ignore: true) final  NewsCompanySocialBody? newsCompanySocial;

/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostReqBodyCopyWith<_CreatePostReqBody> get copyWith => __$CreatePostReqBodyCopyWithImpl<_CreatePostReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostReqBody&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content)&&(identical(other.postId, postId) || other.postId == postId)&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.video, video)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.pdfName, pdfName) || other.pdfName == pdfName)&&const DeepCollectionEquality().equals(other.pdf, pdf)&&(identical(other.hasDraft, hasDraft) || other.hasDraft == hasDraft)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.originalPostId, originalPostId) || other.originalPostId == originalPostId)&&(identical(other.publishAt, publishAt) || other.publishAt == publishAt)&&(identical(other.createOccasionReqBody, createOccasionReqBody) || other.createOccasionReqBody == createOccasionReqBody)&&(identical(other.createServReqReqBody, createServReqReqBody) || other.createServReqReqBody == createServReqReqBody)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.newsCompanySocial, newsCompanySocial) || other.newsCompanySocial == newsCompanySocial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,type,content,postId,const DeepCollectionEquality().hash(image),imageUrl,const DeepCollectionEquality().hash(video),videoUrl,pdfName,const DeepCollectionEquality().hash(pdf),hasDraft,pdfUrl,originalPostId,publishAt,createOccasionReqBody,createServReqReqBody,poll,newsCompanySocial);
}

@override
String toString() {
    return 'CreatePostReqBody(type: $type, content: $content, postId: $postId, image: $image, imageUrl: $imageUrl, video: $video, videoUrl: $videoUrl, pdfName: $pdfName, pdf: $pdf, hasDraft: $hasDraft, pdfUrl: $pdfUrl, originalPostId: $originalPostId, publishAt: $publishAt, createOccasionReqBody: $createOccasionReqBody, createServReqReqBody: $createServReqReqBody, poll: $poll, newsCompanySocial: $newsCompanySocial)';
}


}

/// @nodoc
abstract mixin class _$CreatePostReqBodyCopyWith<$Res> implements $CreatePostReqBodyCopyWith<$Res> {
  factory _$CreatePostReqBodyCopyWith(_CreatePostReqBody value, $Res Function(_CreatePostReqBody) _then) = __$CreatePostReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "type") PostType? type,@JsonKey(name: "content") String? content,@JsonKey(name: "post_id") int? postId,@JsonKey(ignore: true) Uint8List? image,@JsonKey(name: "image_url") String? imageUrl,@JsonKey(ignore: true) Uint8List? video,@JsonKey(name: "video_url") String? videoUrl,@JsonKey(name: "pdf_name") String? pdfName,@JsonKey(ignore: true) Uint8List? pdf, bool? hasDraft,@JsonKey(name: "pdf_url") String? pdfUrl,@JsonKey(name: "original_post_id") int? originalPostId,@JsonKey(name: "publish_at", includeIfNull: false) String? publishAt,@JsonKey(ignore: true) CreateOccasionReqBody createOccasionReqBody,@JsonKey(ignore: true) CreateServReqReqBody createServReqReqBody,@JsonKey(ignore: true) CreatePollReqBody poll,@JsonKey(ignore: true) NewsCompanySocialBody? newsCompanySocial
});


@override $CreateOccasionReqBodyCopyWith<$Res> get createOccasionReqBody;@override $CreateServReqReqBodyCopyWith<$Res> get createServReqReqBody;@override $CreatePollReqBodyCopyWith<$Res> get poll;

}
/// @nodoc
class __$CreatePostReqBodyCopyWithImpl<$Res>
    implements _$CreatePostReqBodyCopyWith<$Res> {
  __$CreatePostReqBodyCopyWithImpl(this._self, this._then);

  final _CreatePostReqBody _self;
  final $Res Function(_CreatePostReqBody) _then;

/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? content = freezed,Object? postId = freezed,Object? image = freezed,Object? imageUrl = freezed,Object? video = freezed,Object? videoUrl = freezed,Object? pdfName = freezed,Object? pdf = freezed,Object? hasDraft = freezed,Object? pdfUrl = freezed,Object? originalPostId = freezed,Object? publishAt = freezed,Object? createOccasionReqBody = null,Object? createServReqReqBody = null,Object? poll = null,Object? newsCompanySocial = freezed,}) {
  return _then(_CreatePostReqBody(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostType?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as Uint8List?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,pdfName: freezed == pdfName ? _self.pdfName : pdfName // ignore: cast_nullable_to_non_nullable
as String?,pdf: freezed == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as Uint8List?,hasDraft: freezed == hasDraft ? _self.hasDraft : hasDraft // ignore: cast_nullable_to_non_nullable
as bool?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,originalPostId: freezed == originalPostId ? _self.originalPostId : originalPostId // ignore: cast_nullable_to_non_nullable
as int?,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as String?,createOccasionReqBody: null == createOccasionReqBody ? _self.createOccasionReqBody : createOccasionReqBody // ignore: cast_nullable_to_non_nullable
as CreateOccasionReqBody,createServReqReqBody: null == createServReqReqBody ? _self.createServReqReqBody : createServReqReqBody // ignore: cast_nullable_to_non_nullable
as CreateServReqReqBody,poll: null == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as CreatePollReqBody,newsCompanySocial: freezed == newsCompanySocial ? _self.newsCompanySocial : newsCompanySocial // ignore: cast_nullable_to_non_nullable
as NewsCompanySocialBody?,
  ));
}

/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateOccasionReqBodyCopyWith<$Res> get createOccasionReqBody {
  
  return $CreateOccasionReqBodyCopyWith<$Res>(_self.createOccasionReqBody, (value) {
    return _then(_self.copyWith(createOccasionReqBody: value));
  });
}/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateServReqReqBodyCopyWith<$Res> get createServReqReqBody {
  
  return $CreateServReqReqBodyCopyWith<$Res>(_self.createServReqReqBody, (value) {
    return _then(_self.copyWith(createServReqReqBody: value));
  });
}/// Create a copy of CreatePostReqBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePollReqBodyCopyWith<$Res> get poll {
  
  return $CreatePollReqBodyCopyWith<$Res>(_self.poll, (value) {
    return _then(_self.copyWith(poll: value));
  });
}
}

// dart format on
