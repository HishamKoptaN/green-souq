// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostsResModel {

@JsonKey(name: "data") List<PostModel>? get posts; Meta? get meta;
/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostsResModelCopyWith<PostsResModel> get copyWith => _$PostsResModelCopyWithImpl<PostsResModel>(this as PostsResModel, _$identity);

  /// Serializes this PostsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PostsResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsResModel&&const DeepCollectionEquality().equals(other.posts, _this.posts)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PostsResModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.posts),_this.meta);
}

@override
String toString() {
  final _this = this as PostsResModel;
  return 'PostsResModel(posts: ${_this.posts}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $PostsResModelCopyWith<$Res>  {
  factory $PostsResModelCopyWith(PostsResModel value, $Res Function(PostsResModel) _then) = _$PostsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<PostModel>? posts, Meta? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$PostsResModelCopyWithImpl<$Res>
    implements $PostsResModelCopyWith<$Res> {
  _$PostsResModelCopyWithImpl(this._self, this._then);

  final PostsResModel _self;
  final $Res Function(PostsResModel) _then;

/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = freezed,Object? meta = freezed,}) {
  return _then(PostsResModel(
posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of PostsResModel
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


/// Adds pattern-matching-related methods to [PostsResModel].
extension PostsResModelPatterns on PostsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostsResModel value)  $default,){
final _that = this;
switch (_that) {
case _PostsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<PostModel>? posts,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostsResModel() when $default != null:
return $default(_that.posts,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<PostModel>? posts,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _PostsResModel():
return $default(_that.posts,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<PostModel>? posts,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _PostsResModel() when $default != null:
return $default(_that.posts,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostsResModel implements PostsResModel {
  const _PostsResModel({@JsonKey(name: "data")  List<PostModel>? posts, this.meta}): _posts = posts;
  factory _PostsResModel.fromJson(Map<String, dynamic> json) => _$PostsResModelFromJson(json);

 final  List<PostModel>? _posts;
@override@JsonKey(name: "data") List<PostModel>? get posts {
  final value = _posts;
  if (value == null) return null;
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;

/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsResModelCopyWith<_PostsResModel> get copyWith => __$PostsResModelCopyWithImpl<_PostsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsResModel&&const DeepCollectionEquality().equals(other.posts, _posts)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),meta);
}

@override
String toString() {
    return 'PostsResModel(posts: $posts, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PostsResModelCopyWith<$Res> implements $PostsResModelCopyWith<$Res> {
  factory _$PostsResModelCopyWith(_PostsResModel value, $Res Function(_PostsResModel) _then) = __$PostsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<PostModel>? posts, Meta? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$PostsResModelCopyWithImpl<$Res>
    implements _$PostsResModelCopyWith<$Res> {
  __$PostsResModelCopyWithImpl(this._self, this._then);

  final _PostsResModel _self;
  final $Res Function(_PostsResModel) _then;

/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = freezed,Object? meta = freezed,}) {
  return _then(_PostsResModel(
posts: freezed == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of PostsResModel
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


/// @nodoc
mixin _$PostModel {

 int get id; String? get type;@JsonKey(name: "author") AuthorModel? get author; PostableModel? get postable;@JsonKey(name: "created_at") String? get createdAt;
/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostModelCopyWith<PostModel> get copyWith => _$PostModelCopyWithImpl<PostModel>(this as PostModel, _$identity);

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PostModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.author, _this.author) || other.author == _this.author)&&(identical(other.postable, _this.postable) || other.postable == _this.postable)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PostModel;
  return Object.hash(runtimeType,_this.id,_this.type,_this.author,_this.postable,_this.createdAt);
}

@override
String toString() {
  final _this = this as PostModel;
  return 'PostModel(id: ${_this.id}, type: ${_this.type}, author: ${_this.author}, postable: ${_this.postable}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $PostModelCopyWith<$Res>  {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) _then) = _$PostModelCopyWithImpl;
@useResult
$Res call({
 int id, String? type,@JsonKey(name: "author") AuthorModel? author, PostableModel? postable,@JsonKey(name: "created_at") String? createdAt
});


$AuthorModelCopyWith<$Res>? get author;$PostableModelCopyWith<$Res>? get postable;

}
/// @nodoc
class _$PostModelCopyWithImpl<$Res>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._self, this._then);

  final PostModel _self;
  final $Res Function(PostModel) _then;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = freezed,Object? author = freezed,Object? postable = freezed,Object? createdAt = freezed,}) {
  return _then(PostModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorModel?,postable: freezed == postable ? _self.postable : postable // ignore: cast_nullable_to_non_nullable
as PostableModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorModelCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorModelCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableModelCopyWith<$Res>? get postable {
    if (_self.postable == null) {
    return null;
  }

  return $PostableModelCopyWith<$Res>(_self.postable!, (value) {
    return _then(_self.copyWith(postable: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostModel].
extension PostModelPatterns on PostModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostModel value)  $default,){
final _that = this;
switch (_that) {
case _PostModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? type, @JsonKey(name: "author")  AuthorModel? author,  PostableModel? postable, @JsonKey(name: "created_at")  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostModel() when $default != null:
return $default(_that.id,_that.type,_that.author,_that.postable,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? type, @JsonKey(name: "author")  AuthorModel? author,  PostableModel? postable, @JsonKey(name: "created_at")  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PostModel():
return $default(_that.id,_that.type,_that.author,_that.postable,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? type, @JsonKey(name: "author")  AuthorModel? author,  PostableModel? postable, @JsonKey(name: "created_at")  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PostModel() when $default != null:
return $default(_that.id,_that.type,_that.author,_that.postable,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostModel implements PostModel {
  const _PostModel({required this.id, this.type, @JsonKey(name: "author") this.author, this.postable, @JsonKey(name: "created_at") this.createdAt});
  factory _PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

@override final  int id;
@override final  String? type;
@override@JsonKey(name: "author") final  AuthorModel? author;
@override final  PostableModel? postable;
@override@JsonKey(name: "created_at") final  String? createdAt;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostModelCopyWith<_PostModel> get copyWith => __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.author, author) || other.author == author)&&(identical(other.postable, postable) || other.postable == postable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,author,postable,createdAt);
}

@override
String toString() {
    return 'PostModel(id: $id, type: $type, author: $author, postable: $postable, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(_PostModel value, $Res Function(_PostModel) _then) = __$PostModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? type,@JsonKey(name: "author") AuthorModel? author, PostableModel? postable,@JsonKey(name: "created_at") String? createdAt
});


@override $AuthorModelCopyWith<$Res>? get author;@override $PostableModelCopyWith<$Res>? get postable;

}
/// @nodoc
class __$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(this._self, this._then);

  final _PostModel _self;
  final $Res Function(_PostModel) _then;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = freezed,Object? author = freezed,Object? postable = freezed,Object? createdAt = freezed,}) {
  return _then(_PostModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorModel?,postable: freezed == postable ? _self.postable : postable // ignore: cast_nullable_to_non_nullable
as PostableModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorModelCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorModelCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableModelCopyWith<$Res>? get postable {
    if (_self.postable == null) {
    return null;
  }

  return $PostableModelCopyWith<$Res>(_self.postable!, (value) {
    return _then(_self.copyWith(postable: value));
  });
}
}


/// @nodoc
mixin _$PostableModel {

 int get id; String? get content;@JsonKey(name: "shared_post") PostModel? get sharedPost;@JsonKey(name: "likes_count") int? get likesCount;@JsonKey(name: "is_like") bool get isLike;@JsonKey(name: "cmnts_count") int? get cmntsCount;@JsonKey(name: "cmnters_images") List<String>? get cmntersImages;@JsonKey(name: "shares_count") int? get sharesCount;
/// Create a copy of PostableModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostableModelCopyWith<PostableModel> get copyWith => _$PostableModelCopyWithImpl<PostableModel>(this as PostableModel, _$identity);

  /// Serializes this PostableModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PostableModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostableModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.sharedPost, _this.sharedPost) || other.sharedPost == _this.sharedPost)&&(identical(other.likesCount, _this.likesCount) || other.likesCount == _this.likesCount)&&(identical(other.isLike, _this.isLike) || other.isLike == _this.isLike)&&(identical(other.cmntsCount, _this.cmntsCount) || other.cmntsCount == _this.cmntsCount)&&const DeepCollectionEquality().equals(other.cmntersImages, _this.cmntersImages)&&(identical(other.sharesCount, _this.sharesCount) || other.sharesCount == _this.sharesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PostableModel;
  return Object.hash(runtimeType,_this.id,_this.content,_this.sharedPost,_this.likesCount,_this.isLike,_this.cmntsCount,const DeepCollectionEquality().hash(_this.cmntersImages),_this.sharesCount);
}

@override
String toString() {
  final _this = this as PostableModel;
  return 'PostableModel(id: ${_this.id}, content: ${_this.content}, sharedPost: ${_this.sharedPost}, likesCount: ${_this.likesCount}, isLike: ${_this.isLike}, cmntsCount: ${_this.cmntsCount}, cmntersImages: ${_this.cmntersImages}, sharesCount: ${_this.sharesCount})';
}


}

/// @nodoc
abstract mixin class $PostableModelCopyWith<$Res>  {
  factory $PostableModelCopyWith(PostableModel value, $Res Function(PostableModel) _then) = _$PostableModelCopyWithImpl;
@useResult
$Res call({
 int id, String? content,@JsonKey(name: "shared_post") PostModel? sharedPost,@JsonKey(name: "likes_count") int? likesCount,@JsonKey(name: "is_like") bool isLike,@JsonKey(name: "cmnts_count") int? cmntsCount,@JsonKey(name: "cmnters_images") List<String>? cmntersImages,@JsonKey(name: "shares_count") int? sharesCount
});


$PostModelCopyWith<$Res>? get sharedPost;

}
/// @nodoc
class _$PostableModelCopyWithImpl<$Res>
    implements $PostableModelCopyWith<$Res> {
  _$PostableModelCopyWithImpl(this._self, this._then);

  final PostableModel _self;
  final $Res Function(PostableModel) _then;

/// Create a copy of PostableModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = freezed,Object? sharedPost = freezed,Object? likesCount = freezed,Object? isLike = null,Object? cmntsCount = freezed,Object? cmntersImages = freezed,Object? sharesCount = freezed,}) {
  return _then(PostableModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,sharedPost: freezed == sharedPost ? _self.sharedPost : sharedPost // ignore: cast_nullable_to_non_nullable
as PostModel?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,isLike: null == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool,cmntsCount: freezed == cmntsCount ? _self.cmntsCount : cmntsCount // ignore: cast_nullable_to_non_nullable
as int?,cmntersImages: freezed == cmntersImages ? _self.cmntersImages : cmntersImages // ignore: cast_nullable_to_non_nullable
as List<String>?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PostableModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostModelCopyWith<$Res>? get sharedPost {
    if (_self.sharedPost == null) {
    return null;
  }

  return $PostModelCopyWith<$Res>(_self.sharedPost!, (value) {
    return _then(_self.copyWith(sharedPost: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostableModel].
extension PostableModelPatterns on PostableModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostableModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostableModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostableModel value)  $default,){
final _that = this;
switch (_that) {
case _PostableModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostableModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostableModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? content, @JsonKey(name: "shared_post")  PostModel? sharedPost, @JsonKey(name: "likes_count")  int? likesCount, @JsonKey(name: "is_like")  bool isLike, @JsonKey(name: "cmnts_count")  int? cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count")  int? sharesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostableModel() when $default != null:
return $default(_that.id,_that.content,_that.sharedPost,_that.likesCount,_that.isLike,_that.cmntsCount,_that.cmntersImages,_that.sharesCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? content, @JsonKey(name: "shared_post")  PostModel? sharedPost, @JsonKey(name: "likes_count")  int? likesCount, @JsonKey(name: "is_like")  bool isLike, @JsonKey(name: "cmnts_count")  int? cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count")  int? sharesCount)  $default,) {final _that = this;
switch (_that) {
case _PostableModel():
return $default(_that.id,_that.content,_that.sharedPost,_that.likesCount,_that.isLike,_that.cmntsCount,_that.cmntersImages,_that.sharesCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? content, @JsonKey(name: "shared_post")  PostModel? sharedPost, @JsonKey(name: "likes_count")  int? likesCount, @JsonKey(name: "is_like")  bool isLike, @JsonKey(name: "cmnts_count")  int? cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count")  int? sharesCount)?  $default,) {final _that = this;
switch (_that) {
case _PostableModel() when $default != null:
return $default(_that.id,_that.content,_that.sharedPost,_that.likesCount,_that.isLike,_that.cmntsCount,_that.cmntersImages,_that.sharesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostableModel implements PostableModel {
  const _PostableModel({required this.id, this.content, @JsonKey(name: "shared_post") this.sharedPost, @JsonKey(name: "likes_count") this.likesCount, @JsonKey(name: "is_like") this.isLike = false, @JsonKey(name: "cmnts_count") this.cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count") this.sharesCount}): _cmntersImages = cmntersImages;
  factory _PostableModel.fromJson(Map<String, dynamic> json) => _$PostableModelFromJson(json);

@override final  int id;
@override final  String? content;
@override@JsonKey(name: "shared_post") final  PostModel? sharedPost;
@override@JsonKey(name: "likes_count") final  int? likesCount;
@override@JsonKey(name: "is_like") final  bool isLike;
@override@JsonKey(name: "cmnts_count") final  int? cmntsCount;
 final  List<String>? _cmntersImages;
@override@JsonKey(name: "cmnters_images") List<String>? get cmntersImages {
  final value = _cmntersImages;
  if (value == null) return null;
  if (_cmntersImages is EqualUnmodifiableListView) return _cmntersImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "shares_count") final  int? sharesCount;

/// Create a copy of PostableModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostableModelCopyWith<_PostableModel> get copyWith => __$PostableModelCopyWithImpl<_PostableModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostableModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostableModel&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.sharedPost, sharedPost) || other.sharedPost == sharedPost)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.isLike, isLike) || other.isLike == isLike)&&(identical(other.cmntsCount, cmntsCount) || other.cmntsCount == cmntsCount)&&const DeepCollectionEquality().equals(other.cmntersImages, _cmntersImages)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,content,sharedPost,likesCount,isLike,cmntsCount,const DeepCollectionEquality().hash(_cmntersImages),sharesCount);
}

@override
String toString() {
    return 'PostableModel(id: $id, content: $content, sharedPost: $sharedPost, likesCount: $likesCount, isLike: $isLike, cmntsCount: $cmntsCount, cmntersImages: $cmntersImages, sharesCount: $sharesCount)';
}


}

/// @nodoc
abstract mixin class _$PostableModelCopyWith<$Res> implements $PostableModelCopyWith<$Res> {
  factory _$PostableModelCopyWith(_PostableModel value, $Res Function(_PostableModel) _then) = __$PostableModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? content,@JsonKey(name: "shared_post") PostModel? sharedPost,@JsonKey(name: "likes_count") int? likesCount,@JsonKey(name: "is_like") bool isLike,@JsonKey(name: "cmnts_count") int? cmntsCount,@JsonKey(name: "cmnters_images") List<String>? cmntersImages,@JsonKey(name: "shares_count") int? sharesCount
});


@override $PostModelCopyWith<$Res>? get sharedPost;

}
/// @nodoc
class __$PostableModelCopyWithImpl<$Res>
    implements _$PostableModelCopyWith<$Res> {
  __$PostableModelCopyWithImpl(this._self, this._then);

  final _PostableModel _self;
  final $Res Function(_PostableModel) _then;

/// Create a copy of PostableModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = freezed,Object? sharedPost = freezed,Object? likesCount = freezed,Object? isLike = null,Object? cmntsCount = freezed,Object? cmntersImages = freezed,Object? sharesCount = freezed,}) {
  return _then(_PostableModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,sharedPost: freezed == sharedPost ? _self.sharedPost : sharedPost // ignore: cast_nullable_to_non_nullable
as PostModel?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,isLike: null == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool,cmntsCount: freezed == cmntsCount ? _self.cmntsCount : cmntsCount // ignore: cast_nullable_to_non_nullable
as int?,cmntersImages: freezed == cmntersImages ? _self._cmntersImages : cmntersImages // ignore: cast_nullable_to_non_nullable
as List<String>?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PostableModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostModelCopyWith<$Res>? get sharedPost {
    if (_self.sharedPost == null) {
    return null;
  }

  return $PostModelCopyWith<$Res>(_self.sharedPost!, (value) {
    return _then(_self.copyWith(sharedPost: value));
  });
}
}


/// @nodoc
mixin _$OptionModel {

 int get id; String? get option;@JsonKey(name: "votes_count") int? get votesCount;
/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionModelCopyWith<OptionModel> get copyWith => _$OptionModelCopyWithImpl<OptionModel>(this as OptionModel, _$identity);

  /// Serializes this OptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OptionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.option, _this.option) || other.option == _this.option)&&(identical(other.votesCount, _this.votesCount) || other.votesCount == _this.votesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OptionModel;
  return Object.hash(runtimeType,_this.id,_this.option,_this.votesCount);
}

@override
String toString() {
  final _this = this as OptionModel;
  return 'OptionModel(id: ${_this.id}, option: ${_this.option}, votesCount: ${_this.votesCount})';
}


}

/// @nodoc
abstract mixin class $OptionModelCopyWith<$Res>  {
  factory $OptionModelCopyWith(OptionModel value, $Res Function(OptionModel) _then) = _$OptionModelCopyWithImpl;
@useResult
$Res call({
 int id, String? option,@JsonKey(name: "votes_count") int? votesCount
});




}
/// @nodoc
class _$OptionModelCopyWithImpl<$Res>
    implements $OptionModelCopyWith<$Res> {
  _$OptionModelCopyWithImpl(this._self, this._then);

  final OptionModel _self;
  final $Res Function(OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? option = freezed,Object? votesCount = freezed,}) {
  return _then(OptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,votesCount: freezed == votesCount ? _self.votesCount : votesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionModel].
extension OptionModelPatterns on OptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionModel value)  $default,){
final _that = this;
switch (_that) {
case _OptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? option, @JsonKey(name: "votes_count")  int? votesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
return $default(_that.id,_that.option,_that.votesCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? option, @JsonKey(name: "votes_count")  int? votesCount)  $default,) {final _that = this;
switch (_that) {
case _OptionModel():
return $default(_that.id,_that.option,_that.votesCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? option, @JsonKey(name: "votes_count")  int? votesCount)?  $default,) {final _that = this;
switch (_that) {
case _OptionModel() when $default != null:
return $default(_that.id,_that.option,_that.votesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionModel implements OptionModel {
  const _OptionModel({required this.id, this.option, @JsonKey(name: "votes_count") this.votesCount});
  factory _OptionModel.fromJson(Map<String, dynamic> json) => _$OptionModelFromJson(json);

@override final  int id;
@override final  String? option;
@override@JsonKey(name: "votes_count") final  int? votesCount;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionModelCopyWith<_OptionModel> get copyWith => __$OptionModelCopyWithImpl<_OptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.option, option) || other.option == option)&&(identical(other.votesCount, votesCount) || other.votesCount == votesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,option,votesCount);
}

@override
String toString() {
    return 'OptionModel(id: $id, option: $option, votesCount: $votesCount)';
}


}

/// @nodoc
abstract mixin class _$OptionModelCopyWith<$Res> implements $OptionModelCopyWith<$Res> {
  factory _$OptionModelCopyWith(_OptionModel value, $Res Function(_OptionModel) _then) = __$OptionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? option,@JsonKey(name: "votes_count") int? votesCount
});




}
/// @nodoc
class __$OptionModelCopyWithImpl<$Res>
    implements _$OptionModelCopyWith<$Res> {
  __$OptionModelCopyWithImpl(this._self, this._then);

  final _OptionModel _self;
  final $Res Function(_OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? option = freezed,Object? votesCount = freezed,}) {
  return _then(_OptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,votesCount: freezed == votesCount ? _self.votesCount : votesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
