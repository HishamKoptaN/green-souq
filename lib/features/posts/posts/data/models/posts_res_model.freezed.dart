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

@JsonKey(name: "posts") Posts? get posts;@JsonKey(name: "draft_post") Postable? get draftPost;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsResModel&&(identical(other.posts, _this.posts) || other.posts == _this.posts)&&(identical(other.draftPost, _this.draftPost) || other.draftPost == _this.draftPost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PostsResModel;
  return Object.hash(runtimeType,_this.posts,_this.draftPost);
}

@override
String toString() {
  final _this = this as PostsResModel;
  return 'PostsResModel(posts: ${_this.posts}, draftPost: ${_this.draftPost})';
}


}

/// @nodoc
abstract mixin class $PostsResModelCopyWith<$Res>  {
  factory $PostsResModelCopyWith(PostsResModel value, $Res Function(PostsResModel) _then) = _$PostsResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "posts") Posts? posts,@JsonKey(name: "draft_post") Postable? draftPost
});


$PostsCopyWith<$Res>? get posts;$PostableCopyWith<$Res>? get draftPost;

}
/// @nodoc
class _$PostsResModelCopyWithImpl<$Res>
    implements $PostsResModelCopyWith<$Res> {
  _$PostsResModelCopyWithImpl(this._self, this._then);

  final PostsResModel _self;
  final $Res Function(PostsResModel) _then;

/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = freezed,Object? draftPost = freezed,}) {
  return _then(PostsResModel(
posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as Posts?,draftPost: freezed == draftPost ? _self.draftPost : draftPost // ignore: cast_nullable_to_non_nullable
as Postable?,
  ));
}
/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostsCopyWith<$Res>? get posts {
    if (_self.posts == null) {
    return null;
  }

  return $PostsCopyWith<$Res>(_self.posts!, (value) {
    return _then(_self.copyWith(posts: value));
  });
}/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableCopyWith<$Res>? get draftPost {
    if (_self.draftPost == null) {
    return null;
  }

  return $PostableCopyWith<$Res>(_self.draftPost!, (value) {
    return _then(_self.copyWith(draftPost: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "posts")  Posts? posts, @JsonKey(name: "draft_post")  Postable? draftPost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostsResModel() when $default != null:
return $default(_that.posts,_that.draftPost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "posts")  Posts? posts, @JsonKey(name: "draft_post")  Postable? draftPost)  $default,) {final _that = this;
switch (_that) {
case _PostsResModel():
return $default(_that.posts,_that.draftPost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "posts")  Posts? posts, @JsonKey(name: "draft_post")  Postable? draftPost)?  $default,) {final _that = this;
switch (_that) {
case _PostsResModel() when $default != null:
return $default(_that.posts,_that.draftPost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostsResModel implements PostsResModel {
  const _PostsResModel({@JsonKey(name: "posts") this.posts, @JsonKey(name: "draft_post") this.draftPost});
  factory _PostsResModel.fromJson(Map<String, dynamic> json) => _$PostsResModelFromJson(json);

@override@JsonKey(name: "posts") final  Posts? posts;
@override@JsonKey(name: "draft_post") final  Postable? draftPost;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsResModel&&(identical(other.posts, posts) || other.posts == posts)&&(identical(other.draftPost, draftPost) || other.draftPost == draftPost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,posts,draftPost);
}

@override
String toString() {
    return 'PostsResModel(posts: $posts, draftPost: $draftPost)';
}


}

/// @nodoc
abstract mixin class _$PostsResModelCopyWith<$Res> implements $PostsResModelCopyWith<$Res> {
  factory _$PostsResModelCopyWith(_PostsResModel value, $Res Function(_PostsResModel) _then) = __$PostsResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "posts") Posts? posts,@JsonKey(name: "draft_post") Postable? draftPost
});


@override $PostsCopyWith<$Res>? get posts;@override $PostableCopyWith<$Res>? get draftPost;

}
/// @nodoc
class __$PostsResModelCopyWithImpl<$Res>
    implements _$PostsResModelCopyWith<$Res> {
  __$PostsResModelCopyWithImpl(this._self, this._then);

  final _PostsResModel _self;
  final $Res Function(_PostsResModel) _then;

/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = freezed,Object? draftPost = freezed,}) {
  return _then(_PostsResModel(
posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as Posts?,draftPost: freezed == draftPost ? _self.draftPost : draftPost // ignore: cast_nullable_to_non_nullable
as Postable?,
  ));
}

/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostsCopyWith<$Res>? get posts {
    if (_self.posts == null) {
    return null;
  }

  return $PostsCopyWith<$Res>(_self.posts!, (value) {
    return _then(_self.copyWith(posts: value));
  });
}/// Create a copy of PostsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableCopyWith<$Res>? get draftPost {
    if (_self.draftPost == null) {
    return null;
  }

  return $PostableCopyWith<$Res>(_self.draftPost!, (value) {
    return _then(_self.copyWith(draftPost: value));
  });
}
}


/// @nodoc
mixin _$Posts {

@JsonKey(name: "posts") List<Post>? get posts;@JsonKey(name: "meta") Meta? get meta;
/// Create a copy of Posts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostsCopyWith<Posts> get copyWith => _$PostsCopyWithImpl<Posts>(this as Posts, _$identity);

  /// Serializes this Posts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Posts;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Posts&&const DeepCollectionEquality().equals(other.posts, _this.posts)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Posts;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.posts),_this.meta);
}

@override
String toString() {
  final _this = this as Posts;
  return 'Posts(posts: ${_this.posts}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $PostsCopyWith<$Res>  {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) _then) = _$PostsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "posts") List<Post>? posts,@JsonKey(name: "meta") Meta? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$PostsCopyWithImpl<$Res>
    implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._self, this._then);

  final Posts _self;
  final $Res Function(Posts) _then;

/// Create a copy of Posts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = freezed,Object? meta = freezed,}) {
  return _then(Posts(
posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of Posts
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


/// Adds pattern-matching-related methods to [Posts].
extension PostsPatterns on Posts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Posts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Posts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Posts value)  $default,){
final _that = this;
switch (_that) {
case _Posts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Posts value)?  $default,){
final _that = this;
switch (_that) {
case _Posts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "posts")  List<Post>? posts, @JsonKey(name: "meta")  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Posts() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "posts")  List<Post>? posts, @JsonKey(name: "meta")  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _Posts():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "posts")  List<Post>? posts, @JsonKey(name: "meta")  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _Posts() when $default != null:
return $default(_that.posts,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Posts implements Posts {
  const _Posts({@JsonKey(name: "posts")  List<Post>? posts, @JsonKey(name: "meta") this.meta}): _posts = posts;
  factory _Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);

 final  List<Post>? _posts;
@override@JsonKey(name: "posts") List<Post>? get posts {
  final value = _posts;
  if (value == null) return null;
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "meta") final  Meta? meta;

/// Create a copy of Posts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsCopyWith<_Posts> get copyWith => __$PostsCopyWithImpl<_Posts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Posts&&const DeepCollectionEquality().equals(other.posts, _posts)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),meta);
}

@override
String toString() {
    return 'Posts(posts: $posts, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PostsCopyWith<$Res> implements $PostsCopyWith<$Res> {
  factory _$PostsCopyWith(_Posts value, $Res Function(_Posts) _then) = __$PostsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "posts") List<Post>? posts,@JsonKey(name: "meta") Meta? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$PostsCopyWithImpl<$Res>
    implements _$PostsCopyWith<$Res> {
  __$PostsCopyWithImpl(this._self, this._then);

  final _Posts _self;
  final $Res Function(_Posts) _then;

/// Create a copy of Posts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = freezed,Object? meta = freezed,}) {
  return _then(_Posts(
posts: freezed == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of Posts
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
mixin _$Post {

@JsonKey(name: "id") int? get id;@JsonKey(name: "type") String? get type;@JsonKey(name: "post_owner") PostOwner? get postOwner;@JsonKey(name: "likes_count") int? get likesCount;@JsonKey(name: "is_like") bool? get isLike;@JsonKey(name: "cmnts_count") int? get cmntsCount;@JsonKey(name: "cmnters_images") List<String>? get cmntersImages;@JsonKey(name: "shares_count") int? get sharesCount;@JsonKey(name: "postable") Postable? get postable;@JsonKey(name: "created_at") String? get createdAt;@JsonKey(name: "publish_at") String? get publishAt;
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCopyWith<Post> get copyWith => _$PostCopyWithImpl<Post>(this as Post, _$identity);

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Post;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Post&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.postOwner, _this.postOwner) || other.postOwner == _this.postOwner)&&(identical(other.likesCount, _this.likesCount) || other.likesCount == _this.likesCount)&&(identical(other.isLike, _this.isLike) || other.isLike == _this.isLike)&&(identical(other.cmntsCount, _this.cmntsCount) || other.cmntsCount == _this.cmntsCount)&&const DeepCollectionEquality().equals(other.cmntersImages, _this.cmntersImages)&&(identical(other.sharesCount, _this.sharesCount) || other.sharesCount == _this.sharesCount)&&(identical(other.postable, _this.postable) || other.postable == _this.postable)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.publishAt, _this.publishAt) || other.publishAt == _this.publishAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Post;
  return Object.hash(runtimeType,_this.id,_this.type,_this.postOwner,_this.likesCount,_this.isLike,_this.cmntsCount,const DeepCollectionEquality().hash(_this.cmntersImages),_this.sharesCount,_this.postable,_this.createdAt,_this.publishAt);
}

@override
String toString() {
  final _this = this as Post;
  return 'Post(id: ${_this.id}, type: ${_this.type}, postOwner: ${_this.postOwner}, likesCount: ${_this.likesCount}, isLike: ${_this.isLike}, cmntsCount: ${_this.cmntsCount}, cmntersImages: ${_this.cmntersImages}, sharesCount: ${_this.sharesCount}, postable: ${_this.postable}, createdAt: ${_this.createdAt}, publishAt: ${_this.publishAt})';
}


}

/// @nodoc
abstract mixin class $PostCopyWith<$Res>  {
  factory $PostCopyWith(Post value, $Res Function(Post) _then) = _$PostCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "type") String? type,@JsonKey(name: "post_owner") PostOwner? postOwner,@JsonKey(name: "likes_count") int? likesCount,@JsonKey(name: "is_like") bool? isLike,@JsonKey(name: "cmnts_count") int? cmntsCount,@JsonKey(name: "cmnters_images") List<String>? cmntersImages,@JsonKey(name: "shares_count") int? sharesCount,@JsonKey(name: "postable") Postable? postable,@JsonKey(name: "created_at") String? createdAt,@JsonKey(name: "publish_at") String? publishAt
});


$PostOwnerCopyWith<$Res>? get postOwner;$PostableCopyWith<$Res>? get postable;

}
/// @nodoc
class _$PostCopyWithImpl<$Res>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._self, this._then);

  final Post _self;
  final $Res Function(Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? postOwner = freezed,Object? likesCount = freezed,Object? isLike = freezed,Object? cmntsCount = freezed,Object? cmntersImages = freezed,Object? sharesCount = freezed,Object? postable = freezed,Object? createdAt = freezed,Object? publishAt = freezed,}) {
  return _then(Post(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostOwner?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,isLike: freezed == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool?,cmntsCount: freezed == cmntsCount ? _self.cmntsCount : cmntsCount // ignore: cast_nullable_to_non_nullable
as int?,cmntersImages: freezed == cmntersImages ? _self.cmntersImages : cmntersImages // ignore: cast_nullable_to_non_nullable
as List<String>?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,postable: freezed == postable ? _self.postable : postable // ignore: cast_nullable_to_non_nullable
as Postable?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostOwnerCopyWith<$Res>? get postOwner {
    if (_self.postOwner == null) {
    return null;
  }

  return $PostOwnerCopyWith<$Res>(_self.postOwner!, (value) {
    return _then(_self.copyWith(postOwner: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableCopyWith<$Res>? get postable {
    if (_self.postable == null) {
    return null;
  }

  return $PostableCopyWith<$Res>(_self.postable!, (value) {
    return _then(_self.copyWith(postable: value));
  });
}
}


/// Adds pattern-matching-related methods to [Post].
extension PostPatterns on Post {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Post value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Post value)  $default,){
final _that = this;
switch (_that) {
case _Post():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Post value)?  $default,){
final _that = this;
switch (_that) {
case _Post() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "post_owner")  PostOwner? postOwner, @JsonKey(name: "likes_count")  int? likesCount, @JsonKey(name: "is_like")  bool? isLike, @JsonKey(name: "cmnts_count")  int? cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count")  int? sharesCount, @JsonKey(name: "postable")  Postable? postable, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "publish_at")  String? publishAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.type,_that.postOwner,_that.likesCount,_that.isLike,_that.cmntsCount,_that.cmntersImages,_that.sharesCount,_that.postable,_that.createdAt,_that.publishAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "post_owner")  PostOwner? postOwner, @JsonKey(name: "likes_count")  int? likesCount, @JsonKey(name: "is_like")  bool? isLike, @JsonKey(name: "cmnts_count")  int? cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count")  int? sharesCount, @JsonKey(name: "postable")  Postable? postable, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "publish_at")  String? publishAt)  $default,) {final _that = this;
switch (_that) {
case _Post():
return $default(_that.id,_that.type,_that.postOwner,_that.likesCount,_that.isLike,_that.cmntsCount,_that.cmntersImages,_that.sharesCount,_that.postable,_that.createdAt,_that.publishAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "post_owner")  PostOwner? postOwner, @JsonKey(name: "likes_count")  int? likesCount, @JsonKey(name: "is_like")  bool? isLike, @JsonKey(name: "cmnts_count")  int? cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count")  int? sharesCount, @JsonKey(name: "postable")  Postable? postable, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "publish_at")  String? publishAt)?  $default,) {final _that = this;
switch (_that) {
case _Post() when $default != null:
return $default(_that.id,_that.type,_that.postOwner,_that.likesCount,_that.isLike,_that.cmntsCount,_that.cmntersImages,_that.sharesCount,_that.postable,_that.createdAt,_that.publishAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Post implements Post {
  const _Post({@JsonKey(name: "id") this.id, @JsonKey(name: "type") this.type, @JsonKey(name: "post_owner") this.postOwner, @JsonKey(name: "likes_count") this.likesCount, @JsonKey(name: "is_like") this.isLike, @JsonKey(name: "cmnts_count") this.cmntsCount, @JsonKey(name: "cmnters_images")  List<String>? cmntersImages, @JsonKey(name: "shares_count") this.sharesCount, @JsonKey(name: "postable") this.postable, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "publish_at") this.publishAt}): _cmntersImages = cmntersImages;
  factory _Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "post_owner") final  PostOwner? postOwner;
@override@JsonKey(name: "likes_count") final  int? likesCount;
@override@JsonKey(name: "is_like") final  bool? isLike;
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
@override@JsonKey(name: "postable") final  Postable? postable;
@override@JsonKey(name: "created_at") final  String? createdAt;
@override@JsonKey(name: "publish_at") final  String? publishAt;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCopyWith<_Post> get copyWith => __$PostCopyWithImpl<_Post>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Post&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.isLike, isLike) || other.isLike == isLike)&&(identical(other.cmntsCount, cmntsCount) || other.cmntsCount == cmntsCount)&&const DeepCollectionEquality().equals(other.cmntersImages, _cmntersImages)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&(identical(other.postable, postable) || other.postable == postable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.publishAt, publishAt) || other.publishAt == publishAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,postOwner,likesCount,isLike,cmntsCount,const DeepCollectionEquality().hash(_cmntersImages),sharesCount,postable,createdAt,publishAt);
}

@override
String toString() {
    return 'Post(id: $id, type: $type, postOwner: $postOwner, likesCount: $likesCount, isLike: $isLike, cmntsCount: $cmntsCount, cmntersImages: $cmntersImages, sharesCount: $sharesCount, postable: $postable, createdAt: $createdAt, publishAt: $publishAt)';
}


}

/// @nodoc
abstract mixin class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) _then) = __$PostCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "type") String? type,@JsonKey(name: "post_owner") PostOwner? postOwner,@JsonKey(name: "likes_count") int? likesCount,@JsonKey(name: "is_like") bool? isLike,@JsonKey(name: "cmnts_count") int? cmntsCount,@JsonKey(name: "cmnters_images") List<String>? cmntersImages,@JsonKey(name: "shares_count") int? sharesCount,@JsonKey(name: "postable") Postable? postable,@JsonKey(name: "created_at") String? createdAt,@JsonKey(name: "publish_at") String? publishAt
});


@override $PostOwnerCopyWith<$Res>? get postOwner;@override $PostableCopyWith<$Res>? get postable;

}
/// @nodoc
class __$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(this._self, this._then);

  final _Post _self;
  final $Res Function(_Post) _then;

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? postOwner = freezed,Object? likesCount = freezed,Object? isLike = freezed,Object? cmntsCount = freezed,Object? cmntersImages = freezed,Object? sharesCount = freezed,Object? postable = freezed,Object? createdAt = freezed,Object? publishAt = freezed,}) {
  return _then(_Post(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostOwner?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,isLike: freezed == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool?,cmntsCount: freezed == cmntsCount ? _self.cmntsCount : cmntsCount // ignore: cast_nullable_to_non_nullable
as int?,cmntersImages: freezed == cmntersImages ? _self._cmntersImages : cmntersImages // ignore: cast_nullable_to_non_nullable
as List<String>?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,postable: freezed == postable ? _self.postable : postable // ignore: cast_nullable_to_non_nullable
as Postable?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostOwnerCopyWith<$Res>? get postOwner {
    if (_self.postOwner == null) {
    return null;
  }

  return $PostOwnerCopyWith<$Res>(_self.postOwner!, (value) {
    return _then(_self.copyWith(postOwner: value));
  });
}/// Create a copy of Post
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableCopyWith<$Res>? get postable {
    if (_self.postable == null) {
    return null;
  }

  return $PostableCopyWith<$Res>(_self.postable!, (value) {
    return _then(_self.copyWith(postable: value));
  });
}
}


/// @nodoc
mixin _$PostOwner {

@JsonKey(name: "id") int? get id;@JsonKey(name: "type") String? get type;@JsonKey(name: "name") String? get name;@JsonKey(name: "image") String? get image;@JsonKey(name: "is_following") bool? get isFollowing;
/// Create a copy of PostOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostOwnerCopyWith<PostOwner> get copyWith => _$PostOwnerCopyWithImpl<PostOwner>(this as PostOwner, _$identity);

  /// Serializes this PostOwner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PostOwner;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostOwner&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.isFollowing, _this.isFollowing) || other.isFollowing == _this.isFollowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PostOwner;
  return Object.hash(runtimeType,_this.id,_this.type,_this.name,_this.image,_this.isFollowing);
}

@override
String toString() {
  final _this = this as PostOwner;
  return 'PostOwner(id: ${_this.id}, type: ${_this.type}, name: ${_this.name}, image: ${_this.image}, isFollowing: ${_this.isFollowing})';
}


}

/// @nodoc
abstract mixin class $PostOwnerCopyWith<$Res>  {
  factory $PostOwnerCopyWith(PostOwner value, $Res Function(PostOwner) _then) = _$PostOwnerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "type") String? type,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image,@JsonKey(name: "is_following") bool? isFollowing
});




}
/// @nodoc
class _$PostOwnerCopyWithImpl<$Res>
    implements $PostOwnerCopyWith<$Res> {
  _$PostOwnerCopyWithImpl(this._self, this._then);

  final PostOwner _self;
  final $Res Function(PostOwner) _then;

/// Create a copy of PostOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? image = freezed,Object? isFollowing = freezed,}) {
  return _then(PostOwner(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,isFollowing: freezed == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostOwner].
extension PostOwnerPatterns on PostOwner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostOwner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostOwner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostOwner value)  $default,){
final _that = this;
switch (_that) {
case _PostOwner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostOwner value)?  $default,){
final _that = this;
switch (_that) {
case _PostOwner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image, @JsonKey(name: "is_following")  bool? isFollowing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostOwner() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.image,_that.isFollowing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image, @JsonKey(name: "is_following")  bool? isFollowing)  $default,) {final _that = this;
switch (_that) {
case _PostOwner():
return $default(_that.id,_that.type,_that.name,_that.image,_that.isFollowing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "type")  String? type, @JsonKey(name: "name")  String? name, @JsonKey(name: "image")  String? image, @JsonKey(name: "is_following")  bool? isFollowing)?  $default,) {final _that = this;
switch (_that) {
case _PostOwner() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.image,_that.isFollowing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostOwner implements PostOwner {
  const _PostOwner({@JsonKey(name: "id") this.id, @JsonKey(name: "type") this.type, @JsonKey(name: "name") this.name, @JsonKey(name: "image") this.image, @JsonKey(name: "is_following") this.isFollowing});
  factory _PostOwner.fromJson(Map<String, dynamic> json) => _$PostOwnerFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "image") final  String? image;
@override@JsonKey(name: "is_following") final  bool? isFollowing;

/// Create a copy of PostOwner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostOwnerCopyWith<_PostOwner> get copyWith => __$PostOwnerCopyWithImpl<_PostOwner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostOwnerToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostOwner&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,name,image,isFollowing);
}

@override
String toString() {
    return 'PostOwner(id: $id, type: $type, name: $name, image: $image, isFollowing: $isFollowing)';
}


}

/// @nodoc
abstract mixin class _$PostOwnerCopyWith<$Res> implements $PostOwnerCopyWith<$Res> {
  factory _$PostOwnerCopyWith(_PostOwner value, $Res Function(_PostOwner) _then) = __$PostOwnerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "type") String? type,@JsonKey(name: "name") String? name,@JsonKey(name: "image") String? image,@JsonKey(name: "is_following") bool? isFollowing
});




}
/// @nodoc
class __$PostOwnerCopyWithImpl<$Res>
    implements _$PostOwnerCopyWith<$Res> {
  __$PostOwnerCopyWithImpl(this._self, this._then);

  final _PostOwner _self;
  final $Res Function(_PostOwner) _then;

/// Create a copy of PostOwner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? name = freezed,Object? image = freezed,Object? isFollowing = freezed,}) {
  return _then(_PostOwner(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,isFollowing: freezed == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$Postable {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "details") String? get details;@JsonKey(name: "content") String? get content;@JsonKey(name: "image") String? get image;@JsonKey(name: "video") String? get video;@JsonKey(name: "thumbnail_url") String? get thumbnailUrl;@JsonKey(name: "pdf") String? get pdf;@JsonKey(name: "pdf_name") String? get pdfName;@JsonKey(name: "status") int? get status;@JsonKey(name: "question") String? get question;@JsonKey(name: "options") List<Option>? get options;@JsonKey(name: "selected_option") int? get selectedOption;@JsonKey(name: "description") String? get description;@JsonKey(name: "shared_post") Post? get sharedPost;@JsonKey(name: "interested_count") int? get interestedCount;@JsonKey(name: "is_interested") bool? get isInterested;@JsonKey(name: "start_at") String? get startAt;@JsonKey(name: "end_at") String? get endAt;@JsonKey(name: "is_ended") bool? get isEnded;
/// Create a copy of Postable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostableCopyWith<Postable> get copyWith => _$PostableCopyWithImpl<Postable>(this as Postable, _$identity);

  /// Serializes this Postable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Postable;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Postable&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.details, _this.details) || other.details == _this.details)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.video, _this.video) || other.video == _this.video)&&(identical(other.thumbnailUrl, _this.thumbnailUrl) || other.thumbnailUrl == _this.thumbnailUrl)&&(identical(other.pdf, _this.pdf) || other.pdf == _this.pdf)&&(identical(other.pdfName, _this.pdfName) || other.pdfName == _this.pdfName)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.question, _this.question) || other.question == _this.question)&&const DeepCollectionEquality().equals(other.options, _this.options)&&(identical(other.selectedOption, _this.selectedOption) || other.selectedOption == _this.selectedOption)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.sharedPost, _this.sharedPost) || other.sharedPost == _this.sharedPost)&&(identical(other.interestedCount, _this.interestedCount) || other.interestedCount == _this.interestedCount)&&(identical(other.isInterested, _this.isInterested) || other.isInterested == _this.isInterested)&&(identical(other.startAt, _this.startAt) || other.startAt == _this.startAt)&&(identical(other.endAt, _this.endAt) || other.endAt == _this.endAt)&&(identical(other.isEnded, _this.isEnded) || other.isEnded == _this.isEnded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Postable;
  return Object.hashAll([runtimeType,_this.id,_this.title,_this.details,_this.content,_this.image,_this.video,_this.thumbnailUrl,_this.pdf,_this.pdfName,_this.status,_this.question,const DeepCollectionEquality().hash(_this.options),_this.selectedOption,_this.description,_this.sharedPost,_this.interestedCount,_this.isInterested,_this.startAt,_this.endAt,_this.isEnded]);
}

@override
String toString() {
  final _this = this as Postable;
  return 'Postable(id: ${_this.id}, title: ${_this.title}, details: ${_this.details}, content: ${_this.content}, image: ${_this.image}, video: ${_this.video}, thumbnailUrl: ${_this.thumbnailUrl}, pdf: ${_this.pdf}, pdfName: ${_this.pdfName}, status: ${_this.status}, question: ${_this.question}, options: ${_this.options}, selectedOption: ${_this.selectedOption}, description: ${_this.description}, sharedPost: ${_this.sharedPost}, interestedCount: ${_this.interestedCount}, isInterested: ${_this.isInterested}, startAt: ${_this.startAt}, endAt: ${_this.endAt}, isEnded: ${_this.isEnded})';
}


}

/// @nodoc
abstract mixin class $PostableCopyWith<$Res>  {
  factory $PostableCopyWith(Postable value, $Res Function(Postable) _then) = _$PostableCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "details") String? details,@JsonKey(name: "content") String? content,@JsonKey(name: "image") String? image,@JsonKey(name: "video") String? video,@JsonKey(name: "thumbnail_url") String? thumbnailUrl,@JsonKey(name: "pdf") String? pdf,@JsonKey(name: "pdf_name") String? pdfName,@JsonKey(name: "status") int? status,@JsonKey(name: "question") String? question,@JsonKey(name: "options") List<Option>? options,@JsonKey(name: "selected_option") int? selectedOption,@JsonKey(name: "description") String? description,@JsonKey(name: "shared_post") Post? sharedPost,@JsonKey(name: "interested_count") int? interestedCount,@JsonKey(name: "is_interested") bool? isInterested,@JsonKey(name: "start_at") String? startAt,@JsonKey(name: "end_at") String? endAt,@JsonKey(name: "is_ended") bool? isEnded
});


$PostCopyWith<$Res>? get sharedPost;

}
/// @nodoc
class _$PostableCopyWithImpl<$Res>
    implements $PostableCopyWith<$Res> {
  _$PostableCopyWithImpl(this._self, this._then);

  final Postable _self;
  final $Res Function(Postable) _then;

/// Create a copy of Postable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? details = freezed,Object? content = freezed,Object? image = freezed,Object? video = freezed,Object? thumbnailUrl = freezed,Object? pdf = freezed,Object? pdfName = freezed,Object? status = freezed,Object? question = freezed,Object? options = freezed,Object? selectedOption = freezed,Object? description = freezed,Object? sharedPost = freezed,Object? interestedCount = freezed,Object? isInterested = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? isEnded = freezed,}) {
  return _then(Postable(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,pdf: freezed == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as String?,pdfName: freezed == pdfName ? _self.pdfName : pdfName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<Option>?,selectedOption: freezed == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sharedPost: freezed == sharedPost ? _self.sharedPost : sharedPost // ignore: cast_nullable_to_non_nullable
as Post?,interestedCount: freezed == interestedCount ? _self.interestedCount : interestedCount // ignore: cast_nullable_to_non_nullable
as int?,isInterested: freezed == isInterested ? _self.isInterested : isInterested // ignore: cast_nullable_to_non_nullable
as bool?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String?,isEnded: freezed == isEnded ? _self.isEnded : isEnded // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Postable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCopyWith<$Res>? get sharedPost {
    if (_self.sharedPost == null) {
    return null;
  }

  return $PostCopyWith<$Res>(_self.sharedPost!, (value) {
    return _then(_self.copyWith(sharedPost: value));
  });
}
}


/// Adds pattern-matching-related methods to [Postable].
extension PostablePatterns on Postable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Postable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Postable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Postable value)  $default,){
final _that = this;
switch (_that) {
case _Postable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Postable value)?  $default,){
final _that = this;
switch (_that) {
case _Postable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "details")  String? details, @JsonKey(name: "content")  String? content, @JsonKey(name: "image")  String? image, @JsonKey(name: "video")  String? video, @JsonKey(name: "thumbnail_url")  String? thumbnailUrl, @JsonKey(name: "pdf")  String? pdf, @JsonKey(name: "pdf_name")  String? pdfName, @JsonKey(name: "status")  int? status, @JsonKey(name: "question")  String? question, @JsonKey(name: "options")  List<Option>? options, @JsonKey(name: "selected_option")  int? selectedOption, @JsonKey(name: "description")  String? description, @JsonKey(name: "shared_post")  Post? sharedPost, @JsonKey(name: "interested_count")  int? interestedCount, @JsonKey(name: "is_interested")  bool? isInterested, @JsonKey(name: "start_at")  String? startAt, @JsonKey(name: "end_at")  String? endAt, @JsonKey(name: "is_ended")  bool? isEnded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Postable() when $default != null:
return $default(_that.id,_that.title,_that.details,_that.content,_that.image,_that.video,_that.thumbnailUrl,_that.pdf,_that.pdfName,_that.status,_that.question,_that.options,_that.selectedOption,_that.description,_that.sharedPost,_that.interestedCount,_that.isInterested,_that.startAt,_that.endAt,_that.isEnded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "details")  String? details, @JsonKey(name: "content")  String? content, @JsonKey(name: "image")  String? image, @JsonKey(name: "video")  String? video, @JsonKey(name: "thumbnail_url")  String? thumbnailUrl, @JsonKey(name: "pdf")  String? pdf, @JsonKey(name: "pdf_name")  String? pdfName, @JsonKey(name: "status")  int? status, @JsonKey(name: "question")  String? question, @JsonKey(name: "options")  List<Option>? options, @JsonKey(name: "selected_option")  int? selectedOption, @JsonKey(name: "description")  String? description, @JsonKey(name: "shared_post")  Post? sharedPost, @JsonKey(name: "interested_count")  int? interestedCount, @JsonKey(name: "is_interested")  bool? isInterested, @JsonKey(name: "start_at")  String? startAt, @JsonKey(name: "end_at")  String? endAt, @JsonKey(name: "is_ended")  bool? isEnded)  $default,) {final _that = this;
switch (_that) {
case _Postable():
return $default(_that.id,_that.title,_that.details,_that.content,_that.image,_that.video,_that.thumbnailUrl,_that.pdf,_that.pdfName,_that.status,_that.question,_that.options,_that.selectedOption,_that.description,_that.sharedPost,_that.interestedCount,_that.isInterested,_that.startAt,_that.endAt,_that.isEnded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "details")  String? details, @JsonKey(name: "content")  String? content, @JsonKey(name: "image")  String? image, @JsonKey(name: "video")  String? video, @JsonKey(name: "thumbnail_url")  String? thumbnailUrl, @JsonKey(name: "pdf")  String? pdf, @JsonKey(name: "pdf_name")  String? pdfName, @JsonKey(name: "status")  int? status, @JsonKey(name: "question")  String? question, @JsonKey(name: "options")  List<Option>? options, @JsonKey(name: "selected_option")  int? selectedOption, @JsonKey(name: "description")  String? description, @JsonKey(name: "shared_post")  Post? sharedPost, @JsonKey(name: "interested_count")  int? interestedCount, @JsonKey(name: "is_interested")  bool? isInterested, @JsonKey(name: "start_at")  String? startAt, @JsonKey(name: "end_at")  String? endAt, @JsonKey(name: "is_ended")  bool? isEnded)?  $default,) {final _that = this;
switch (_that) {
case _Postable() when $default != null:
return $default(_that.id,_that.title,_that.details,_that.content,_that.image,_that.video,_that.thumbnailUrl,_that.pdf,_that.pdfName,_that.status,_that.question,_that.options,_that.selectedOption,_that.description,_that.sharedPost,_that.interestedCount,_that.isInterested,_that.startAt,_that.endAt,_that.isEnded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Postable implements Postable {
  const _Postable({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "details") this.details, @JsonKey(name: "content") this.content, @JsonKey(name: "image") this.image, @JsonKey(name: "video") this.video, @JsonKey(name: "thumbnail_url") this.thumbnailUrl, @JsonKey(name: "pdf") this.pdf, @JsonKey(name: "pdf_name") this.pdfName, @JsonKey(name: "status") this.status, @JsonKey(name: "question") this.question, @JsonKey(name: "options")  List<Option>? options, @JsonKey(name: "selected_option") this.selectedOption, @JsonKey(name: "description") this.description, @JsonKey(name: "shared_post") this.sharedPost, @JsonKey(name: "interested_count") this.interestedCount, @JsonKey(name: "is_interested") this.isInterested, @JsonKey(name: "start_at") this.startAt, @JsonKey(name: "end_at") this.endAt, @JsonKey(name: "is_ended") this.isEnded}): _options = options;
  factory _Postable.fromJson(Map<String, dynamic> json) => _$PostableFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "details") final  String? details;
@override@JsonKey(name: "content") final  String? content;
@override@JsonKey(name: "image") final  String? image;
@override@JsonKey(name: "video") final  String? video;
@override@JsonKey(name: "thumbnail_url") final  String? thumbnailUrl;
@override@JsonKey(name: "pdf") final  String? pdf;
@override@JsonKey(name: "pdf_name") final  String? pdfName;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "question") final  String? question;
 final  List<Option>? _options;
@override@JsonKey(name: "options") List<Option>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "selected_option") final  int? selectedOption;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "shared_post") final  Post? sharedPost;
@override@JsonKey(name: "interested_count") final  int? interestedCount;
@override@JsonKey(name: "is_interested") final  bool? isInterested;
@override@JsonKey(name: "start_at") final  String? startAt;
@override@JsonKey(name: "end_at") final  String? endAt;
@override@JsonKey(name: "is_ended") final  bool? isEnded;

/// Create a copy of Postable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostableCopyWith<_Postable> get copyWith => __$PostableCopyWithImpl<_Postable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostableToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Postable&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&(identical(other.content, content) || other.content == content)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.pdf, pdf) || other.pdf == pdf)&&(identical(other.pdfName, pdfName) || other.pdfName == pdfName)&&(identical(other.status, status) || other.status == status)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.options, _options)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.description, description) || other.description == description)&&(identical(other.sharedPost, sharedPost) || other.sharedPost == sharedPost)&&(identical(other.interestedCount, interestedCount) || other.interestedCount == interestedCount)&&(identical(other.isInterested, isInterested) || other.isInterested == isInterested)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.isEnded, isEnded) || other.isEnded == isEnded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,title,details,content,image,video,thumbnailUrl,pdf,pdfName,status,question,const DeepCollectionEquality().hash(_options),selectedOption,description,sharedPost,interestedCount,isInterested,startAt,endAt,isEnded]);
}

@override
String toString() {
    return 'Postable(id: $id, title: $title, details: $details, content: $content, image: $image, video: $video, thumbnailUrl: $thumbnailUrl, pdf: $pdf, pdfName: $pdfName, status: $status, question: $question, options: $options, selectedOption: $selectedOption, description: $description, sharedPost: $sharedPost, interestedCount: $interestedCount, isInterested: $isInterested, startAt: $startAt, endAt: $endAt, isEnded: $isEnded)';
}


}

/// @nodoc
abstract mixin class _$PostableCopyWith<$Res> implements $PostableCopyWith<$Res> {
  factory _$PostableCopyWith(_Postable value, $Res Function(_Postable) _then) = __$PostableCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "details") String? details,@JsonKey(name: "content") String? content,@JsonKey(name: "image") String? image,@JsonKey(name: "video") String? video,@JsonKey(name: "thumbnail_url") String? thumbnailUrl,@JsonKey(name: "pdf") String? pdf,@JsonKey(name: "pdf_name") String? pdfName,@JsonKey(name: "status") int? status,@JsonKey(name: "question") String? question,@JsonKey(name: "options") List<Option>? options,@JsonKey(name: "selected_option") int? selectedOption,@JsonKey(name: "description") String? description,@JsonKey(name: "shared_post") Post? sharedPost,@JsonKey(name: "interested_count") int? interestedCount,@JsonKey(name: "is_interested") bool? isInterested,@JsonKey(name: "start_at") String? startAt,@JsonKey(name: "end_at") String? endAt,@JsonKey(name: "is_ended") bool? isEnded
});


@override $PostCopyWith<$Res>? get sharedPost;

}
/// @nodoc
class __$PostableCopyWithImpl<$Res>
    implements _$PostableCopyWith<$Res> {
  __$PostableCopyWithImpl(this._self, this._then);

  final _Postable _self;
  final $Res Function(_Postable) _then;

/// Create a copy of Postable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? details = freezed,Object? content = freezed,Object? image = freezed,Object? video = freezed,Object? thumbnailUrl = freezed,Object? pdf = freezed,Object? pdfName = freezed,Object? status = freezed,Object? question = freezed,Object? options = freezed,Object? selectedOption = freezed,Object? description = freezed,Object? sharedPost = freezed,Object? interestedCount = freezed,Object? isInterested = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? isEnded = freezed,}) {
  return _then(_Postable(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,pdf: freezed == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as String?,pdfName: freezed == pdfName ? _self.pdfName : pdfName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<Option>?,selectedOption: freezed == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sharedPost: freezed == sharedPost ? _self.sharedPost : sharedPost // ignore: cast_nullable_to_non_nullable
as Post?,interestedCount: freezed == interestedCount ? _self.interestedCount : interestedCount // ignore: cast_nullable_to_non_nullable
as int?,isInterested: freezed == isInterested ? _self.isInterested : isInterested // ignore: cast_nullable_to_non_nullable
as bool?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String?,isEnded: freezed == isEnded ? _self.isEnded : isEnded // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Postable
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCopyWith<$Res>? get sharedPost {
    if (_self.sharedPost == null) {
    return null;
  }

  return $PostCopyWith<$Res>(_self.sharedPost!, (value) {
    return _then(_self.copyWith(sharedPost: value));
  });
}
}


/// @nodoc
mixin _$Option {

@JsonKey(name: "id") int? get id;@JsonKey(name: "option") String? get option;@JsonKey(name: "votes_count") int? get votesCount;
/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionCopyWith<Option> get copyWith => _$OptionCopyWithImpl<Option>(this as Option, _$identity);

  /// Serializes this Option to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Option;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Option&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.option, _this.option) || other.option == _this.option)&&(identical(other.votesCount, _this.votesCount) || other.votesCount == _this.votesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Option;
  return Object.hash(runtimeType,_this.id,_this.option,_this.votesCount);
}

@override
String toString() {
  final _this = this as Option;
  return 'Option(id: ${_this.id}, option: ${_this.option}, votesCount: ${_this.votesCount})';
}


}

/// @nodoc
abstract mixin class $OptionCopyWith<$Res>  {
  factory $OptionCopyWith(Option value, $Res Function(Option) _then) = _$OptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "option") String? option,@JsonKey(name: "votes_count") int? votesCount
});




}
/// @nodoc
class _$OptionCopyWithImpl<$Res>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._self, this._then);

  final Option _self;
  final $Res Function(Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? option = freezed,Object? votesCount = freezed,}) {
  return _then(Option(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,votesCount: freezed == votesCount ? _self.votesCount : votesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Option].
extension OptionPatterns on Option {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Option value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Option() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Option value)  $default,){
final _that = this;
switch (_that) {
case _Option():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Option value)?  $default,){
final _that = this;
switch (_that) {
case _Option() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "option")  String? option, @JsonKey(name: "votes_count")  int? votesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Option() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "option")  String? option, @JsonKey(name: "votes_count")  int? votesCount)  $default,) {final _that = this;
switch (_that) {
case _Option():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "option")  String? option, @JsonKey(name: "votes_count")  int? votesCount)?  $default,) {final _that = this;
switch (_that) {
case _Option() when $default != null:
return $default(_that.id,_that.option,_that.votesCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Option implements Option {
  const _Option({@JsonKey(name: "id") this.id, @JsonKey(name: "option") this.option, @JsonKey(name: "votes_count") this.votesCount});
  factory _Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "option") final  String? option;
@override@JsonKey(name: "votes_count") final  int? votesCount;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionCopyWith<_Option> get copyWith => __$OptionCopyWithImpl<_Option>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Option&&(identical(other.id, id) || other.id == id)&&(identical(other.option, option) || other.option == option)&&(identical(other.votesCount, votesCount) || other.votesCount == votesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,option,votesCount);
}

@override
String toString() {
    return 'Option(id: $id, option: $option, votesCount: $votesCount)';
}


}

/// @nodoc
abstract mixin class _$OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$OptionCopyWith(_Option value, $Res Function(_Option) _then) = __$OptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "option") String? option,@JsonKey(name: "votes_count") int? votesCount
});




}
/// @nodoc
class __$OptionCopyWithImpl<$Res>
    implements _$OptionCopyWith<$Res> {
  __$OptionCopyWithImpl(this._self, this._then);

  final _Option _self;
  final $Res Function(_Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? option = freezed,Object? votesCount = freezed,}) {
  return _then(_Option(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,option: freezed == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String?,votesCount: freezed == votesCount ? _self.votesCount : votesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
