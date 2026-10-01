// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthorEntity {

 int get id; String? get avatar; String? get name; String? get bio; String? get type; bool get isFollowing;
/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorEntityCopyWith<AuthorEntity> get copyWith => _$AuthorEntityCopyWithImpl<AuthorEntity>(this as AuthorEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AuthorEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bio, _this.bio) || other.bio == _this.bio)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.isFollowing, _this.isFollowing) || other.isFollowing == _this.isFollowing));
}


@override
int get hashCode {
  final _this = this as AuthorEntity;
  return Object.hash(runtimeType,_this.id,_this.avatar,_this.name,_this.bio,_this.type,_this.isFollowing);
}

@override
String toString() {
  final _this = this as AuthorEntity;
  return 'AuthorEntity(id: ${_this.id}, avatar: ${_this.avatar}, name: ${_this.name}, bio: ${_this.bio}, type: ${_this.type}, isFollowing: ${_this.isFollowing})';
}


}

/// @nodoc
abstract mixin class $AuthorEntityCopyWith<$Res>  {
  factory $AuthorEntityCopyWith(AuthorEntity value, $Res Function(AuthorEntity) _then) = _$AuthorEntityCopyWithImpl;
@useResult
$Res call({
 int id, String? avatar, String? name, String? bio, String? type, bool isFollowing
});




}
/// @nodoc
class _$AuthorEntityCopyWithImpl<$Res>
    implements $AuthorEntityCopyWith<$Res> {
  _$AuthorEntityCopyWithImpl(this._self, this._then);

  final AuthorEntity _self;
  final $Res Function(AuthorEntity) _then;

/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? avatar = freezed,Object? name = freezed,Object? bio = freezed,Object? type = freezed,Object? isFollowing = null,}) {
  return _then(AuthorEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorEntity].
extension AuthorEntityPatterns on AuthorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorEntity value)  $default,){
final _that = this;
switch (_that) {
case _AuthorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? avatar,  String? name,  String? bio,  String? type,  bool isFollowing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
return $default(_that.id,_that.avatar,_that.name,_that.bio,_that.type,_that.isFollowing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? avatar,  String? name,  String? bio,  String? type,  bool isFollowing)  $default,) {final _that = this;
switch (_that) {
case _AuthorEntity():
return $default(_that.id,_that.avatar,_that.name,_that.bio,_that.type,_that.isFollowing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? avatar,  String? name,  String? bio,  String? type,  bool isFollowing)?  $default,) {final _that = this;
switch (_that) {
case _AuthorEntity() when $default != null:
return $default(_that.id,_that.avatar,_that.name,_that.bio,_that.type,_that.isFollowing);case _:
  return null;

}
}

}

/// @nodoc


class _AuthorEntity implements AuthorEntity {
  const _AuthorEntity({required this.id, this.avatar, this.name, this.bio, this.type, this.isFollowing = false});
  

@override final  int id;
@override final  String? avatar;
@override final  String? name;
@override final  String? bio;
@override final  String? type;
@override@JsonKey() final  bool isFollowing;

/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorEntityCopyWith<_AuthorEntity> get copyWith => __$AuthorEntityCopyWithImpl<_AuthorEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.type, type) || other.type == type)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,avatar,name,bio,type,isFollowing);
}

@override
String toString() {
    return 'AuthorEntity(id: $id, avatar: $avatar, name: $name, bio: $bio, type: $type, isFollowing: $isFollowing)';
}


}

/// @nodoc
abstract mixin class _$AuthorEntityCopyWith<$Res> implements $AuthorEntityCopyWith<$Res> {
  factory _$AuthorEntityCopyWith(_AuthorEntity value, $Res Function(_AuthorEntity) _then) = __$AuthorEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String? avatar, String? name, String? bio, String? type, bool isFollowing
});




}
/// @nodoc
class __$AuthorEntityCopyWithImpl<$Res>
    implements _$AuthorEntityCopyWith<$Res> {
  __$AuthorEntityCopyWithImpl(this._self, this._then);

  final _AuthorEntity _self;
  final $Res Function(_AuthorEntity) _then;

/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? avatar = freezed,Object? name = freezed,Object? bio = freezed,Object? type = freezed,Object? isFollowing = null,}) {
  return _then(_AuthorEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PostsResEntity {

 List<PostEntity> get posts; MetaEntity get meta;
/// Create a copy of PostsResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostsResEntityCopyWith<PostsResEntity> get copyWith => _$PostsResEntityCopyWithImpl<PostsResEntity>(this as PostsResEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PostsResEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsResEntity&&const DeepCollectionEquality().equals(other.posts, _this.posts)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}


@override
int get hashCode {
  final _this = this as PostsResEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.posts),_this.meta);
}

@override
String toString() {
  final _this = this as PostsResEntity;
  return 'PostsResEntity(posts: ${_this.posts}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $PostsResEntityCopyWith<$Res>  {
  factory $PostsResEntityCopyWith(PostsResEntity value, $Res Function(PostsResEntity) _then) = _$PostsResEntityCopyWithImpl;
@useResult
$Res call({
 List<PostEntity> posts, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$PostsResEntityCopyWithImpl<$Res>
    implements $PostsResEntityCopyWith<$Res> {
  _$PostsResEntityCopyWithImpl(this._self, this._then);

  final PostsResEntity _self;
  final $Res Function(PostsResEntity) _then;

/// Create a copy of PostsResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? meta = null,}) {
  return _then(PostsResEntity(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}
/// Create a copy of PostsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostsResEntity].
extension PostsResEntityPatterns on PostsResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostsResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostsResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostsResEntity value)  $default,){
final _that = this;
switch (_that) {
case _PostsResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostsResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PostsResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostEntity> posts,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostsResEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostEntity> posts,  MetaEntity meta)  $default,) {final _that = this;
switch (_that) {
case _PostsResEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostEntity> posts,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _PostsResEntity() when $default != null:
return $default(_that.posts,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _PostsResEntity implements PostsResEntity {
  const _PostsResEntity({ List<PostEntity> posts = const [], this.meta = const MetaEntity()}): _posts = posts;
  

 final  List<PostEntity> _posts;
@override@JsonKey() List<PostEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override@JsonKey() final  MetaEntity meta;

/// Create a copy of PostsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsResEntityCopyWith<_PostsResEntity> get copyWith => __$PostsResEntityCopyWithImpl<_PostsResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsResEntity&&const DeepCollectionEquality().equals(other.posts, _posts)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),meta);
}

@override
String toString() {
    return 'PostsResEntity(posts: $posts, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PostsResEntityCopyWith<$Res> implements $PostsResEntityCopyWith<$Res> {
  factory _$PostsResEntityCopyWith(_PostsResEntity value, $Res Function(_PostsResEntity) _then) = __$PostsResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<PostEntity> posts, MetaEntity meta
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$PostsResEntityCopyWithImpl<$Res>
    implements _$PostsResEntityCopyWith<$Res> {
  __$PostsResEntityCopyWithImpl(this._self, this._then);

  final _PostsResEntity _self;
  final $Res Function(_PostsResEntity) _then;

/// Create a copy of PostsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? meta = null,}) {
  return _then(_PostsResEntity(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}

/// Create a copy of PostsResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

/// @nodoc
mixin _$PostEntity {

 int get id; String? get type; AuthorEntity? get author; bool get isFollowing; PostableEntity? get postable; String? get createdAt;
/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostEntityCopyWith<PostEntity> get copyWith => _$PostEntityCopyWithImpl<PostEntity>(this as PostEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PostEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.author, _this.author) || other.author == _this.author)&&(identical(other.isFollowing, _this.isFollowing) || other.isFollowing == _this.isFollowing)&&(identical(other.postable, _this.postable) || other.postable == _this.postable)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as PostEntity;
  return Object.hash(runtimeType,_this.id,_this.type,_this.author,_this.isFollowing,_this.postable,_this.createdAt);
}

@override
String toString() {
  final _this = this as PostEntity;
  return 'PostEntity(id: ${_this.id}, type: ${_this.type}, author: ${_this.author}, isFollowing: ${_this.isFollowing}, postable: ${_this.postable}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $PostEntityCopyWith<$Res>  {
  factory $PostEntityCopyWith(PostEntity value, $Res Function(PostEntity) _then) = _$PostEntityCopyWithImpl;
@useResult
$Res call({
 int id, String? type, AuthorEntity? author, bool isFollowing, PostableEntity? postable, String? createdAt
});


$AuthorEntityCopyWith<$Res>? get author;$PostableEntityCopyWith<$Res>? get postable;

}
/// @nodoc
class _$PostEntityCopyWithImpl<$Res>
    implements $PostEntityCopyWith<$Res> {
  _$PostEntityCopyWithImpl(this._self, this._then);

  final PostEntity _self;
  final $Res Function(PostEntity) _then;

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = freezed,Object? author = freezed,Object? isFollowing = null,Object? postable = freezed,Object? createdAt = freezed,}) {
  return _then(PostEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorEntity?,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,postable: freezed == postable ? _self.postable : postable // ignore: cast_nullable_to_non_nullable
as PostableEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorEntityCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorEntityCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableEntityCopyWith<$Res>? get postable {
    if (_self.postable == null) {
    return null;
  }

  return $PostableEntityCopyWith<$Res>(_self.postable!, (value) {
    return _then(_self.copyWith(postable: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostEntity].
extension PostEntityPatterns on PostEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostEntity value)  $default,){
final _that = this;
switch (_that) {
case _PostEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? type,  AuthorEntity? author,  bool isFollowing,  PostableEntity? postable,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
return $default(_that.id,_that.type,_that.author,_that.isFollowing,_that.postable,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? type,  AuthorEntity? author,  bool isFollowing,  PostableEntity? postable,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PostEntity():
return $default(_that.id,_that.type,_that.author,_that.isFollowing,_that.postable,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? type,  AuthorEntity? author,  bool isFollowing,  PostableEntity? postable,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
return $default(_that.id,_that.type,_that.author,_that.isFollowing,_that.postable,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _PostEntity implements PostEntity {
  const _PostEntity({required this.id, this.type, this.author, this.isFollowing = false, this.postable, this.createdAt});
  

@override final  int id;
@override final  String? type;
@override final  AuthorEntity? author;
@override@JsonKey() final  bool isFollowing;
@override final  PostableEntity? postable;
@override final  String? createdAt;

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostEntityCopyWith<_PostEntity> get copyWith => __$PostEntityCopyWithImpl<_PostEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.author, author) || other.author == author)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.postable, postable) || other.postable == postable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,type,author,isFollowing,postable,createdAt);
}

@override
String toString() {
    return 'PostEntity(id: $id, type: $type, author: $author, isFollowing: $isFollowing, postable: $postable, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PostEntityCopyWith<$Res> implements $PostEntityCopyWith<$Res> {
  factory _$PostEntityCopyWith(_PostEntity value, $Res Function(_PostEntity) _then) = __$PostEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String? type, AuthorEntity? author, bool isFollowing, PostableEntity? postable, String? createdAt
});


@override $AuthorEntityCopyWith<$Res>? get author;@override $PostableEntityCopyWith<$Res>? get postable;

}
/// @nodoc
class __$PostEntityCopyWithImpl<$Res>
    implements _$PostEntityCopyWith<$Res> {
  __$PostEntityCopyWithImpl(this._self, this._then);

  final _PostEntity _self;
  final $Res Function(_PostEntity) _then;

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = freezed,Object? author = freezed,Object? isFollowing = null,Object? postable = freezed,Object? createdAt = freezed,}) {
  return _then(_PostEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorEntity?,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,postable: freezed == postable ? _self.postable : postable // ignore: cast_nullable_to_non_nullable
as PostableEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorEntityCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorEntityCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostableEntityCopyWith<$Res>? get postable {
    if (_self.postable == null) {
    return null;
  }

  return $PostableEntityCopyWith<$Res>(_self.postable!, (value) {
    return _then(_self.copyWith(postable: value));
  });
}
}

/// @nodoc
mixin _$PostableEntity {

 int? get id; String? get content; PostEntity? get sharedPost; bool get isLike; bool get isFav; int? get cmntsCount; int? get likesCount; List<String>? get cmntersImages; int? get sharesCount;
/// Create a copy of PostableEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostableEntityCopyWith<PostableEntity> get copyWith => _$PostableEntityCopyWithImpl<PostableEntity>(this as PostableEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PostableEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostableEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.sharedPost, _this.sharedPost) || other.sharedPost == _this.sharedPost)&&(identical(other.isLike, _this.isLike) || other.isLike == _this.isLike)&&(identical(other.isFav, _this.isFav) || other.isFav == _this.isFav)&&(identical(other.cmntsCount, _this.cmntsCount) || other.cmntsCount == _this.cmntsCount)&&(identical(other.likesCount, _this.likesCount) || other.likesCount == _this.likesCount)&&const DeepCollectionEquality().equals(other.cmntersImages, _this.cmntersImages)&&(identical(other.sharesCount, _this.sharesCount) || other.sharesCount == _this.sharesCount));
}


@override
int get hashCode {
  final _this = this as PostableEntity;
  return Object.hash(runtimeType,_this.id,_this.content,_this.sharedPost,_this.isLike,_this.isFav,_this.cmntsCount,_this.likesCount,const DeepCollectionEquality().hash(_this.cmntersImages),_this.sharesCount);
}

@override
String toString() {
  final _this = this as PostableEntity;
  return 'PostableEntity(id: ${_this.id}, content: ${_this.content}, sharedPost: ${_this.sharedPost}, isLike: ${_this.isLike}, isFav: ${_this.isFav}, cmntsCount: ${_this.cmntsCount}, likesCount: ${_this.likesCount}, cmntersImages: ${_this.cmntersImages}, sharesCount: ${_this.sharesCount})';
}


}

/// @nodoc
abstract mixin class $PostableEntityCopyWith<$Res>  {
  factory $PostableEntityCopyWith(PostableEntity value, $Res Function(PostableEntity) _then) = _$PostableEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? content, PostEntity? sharedPost, bool isLike, bool isFav, int? cmntsCount, int? likesCount, List<String>? cmntersImages, int? sharesCount
});


$PostEntityCopyWith<$Res>? get sharedPost;

}
/// @nodoc
class _$PostableEntityCopyWithImpl<$Res>
    implements $PostableEntityCopyWith<$Res> {
  _$PostableEntityCopyWithImpl(this._self, this._then);

  final PostableEntity _self;
  final $Res Function(PostableEntity) _then;

/// Create a copy of PostableEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? content = freezed,Object? sharedPost = freezed,Object? isLike = null,Object? isFav = null,Object? cmntsCount = freezed,Object? likesCount = freezed,Object? cmntersImages = freezed,Object? sharesCount = freezed,}) {
  return _then(PostableEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,sharedPost: freezed == sharedPost ? _self.sharedPost : sharedPost // ignore: cast_nullable_to_non_nullable
as PostEntity?,isLike: null == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool,isFav: null == isFav ? _self.isFav : isFav // ignore: cast_nullable_to_non_nullable
as bool,cmntsCount: freezed == cmntsCount ? _self.cmntsCount : cmntsCount // ignore: cast_nullable_to_non_nullable
as int?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,cmntersImages: freezed == cmntersImages ? _self.cmntersImages : cmntersImages // ignore: cast_nullable_to_non_nullable
as List<String>?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PostableEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res>? get sharedPost {
    if (_self.sharedPost == null) {
    return null;
  }

  return $PostEntityCopyWith<$Res>(_self.sharedPost!, (value) {
    return _then(_self.copyWith(sharedPost: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostableEntity].
extension PostableEntityPatterns on PostableEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostableEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostableEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostableEntity value)  $default,){
final _that = this;
switch (_that) {
case _PostableEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostableEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PostableEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? content,  PostEntity? sharedPost,  bool isLike,  bool isFav,  int? cmntsCount,  int? likesCount,  List<String>? cmntersImages,  int? sharesCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostableEntity() when $default != null:
return $default(_that.id,_that.content,_that.sharedPost,_that.isLike,_that.isFav,_that.cmntsCount,_that.likesCount,_that.cmntersImages,_that.sharesCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? content,  PostEntity? sharedPost,  bool isLike,  bool isFav,  int? cmntsCount,  int? likesCount,  List<String>? cmntersImages,  int? sharesCount)  $default,) {final _that = this;
switch (_that) {
case _PostableEntity():
return $default(_that.id,_that.content,_that.sharedPost,_that.isLike,_that.isFav,_that.cmntsCount,_that.likesCount,_that.cmntersImages,_that.sharesCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? content,  PostEntity? sharedPost,  bool isLike,  bool isFav,  int? cmntsCount,  int? likesCount,  List<String>? cmntersImages,  int? sharesCount)?  $default,) {final _that = this;
switch (_that) {
case _PostableEntity() when $default != null:
return $default(_that.id,_that.content,_that.sharedPost,_that.isLike,_that.isFav,_that.cmntsCount,_that.likesCount,_that.cmntersImages,_that.sharesCount);case _:
  return null;

}
}

}

/// @nodoc


class _PostableEntity implements PostableEntity {
  const _PostableEntity({this.id, this.content, this.sharedPost, this.isLike = false, this.isFav = false, this.cmntsCount, this.likesCount,  List<String>? cmntersImages, this.sharesCount}): _cmntersImages = cmntersImages;
  

@override final  int? id;
@override final  String? content;
@override final  PostEntity? sharedPost;
@override@JsonKey() final  bool isLike;
@override@JsonKey() final  bool isFav;
@override final  int? cmntsCount;
@override final  int? likesCount;
 final  List<String>? _cmntersImages;
@override List<String>? get cmntersImages {
  final value = _cmntersImages;
  if (value == null) return null;
  if (_cmntersImages is EqualUnmodifiableListView) return _cmntersImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? sharesCount;

/// Create a copy of PostableEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostableEntityCopyWith<_PostableEntity> get copyWith => __$PostableEntityCopyWithImpl<_PostableEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostableEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.sharedPost, sharedPost) || other.sharedPost == sharedPost)&&(identical(other.isLike, isLike) || other.isLike == isLike)&&(identical(other.isFav, isFav) || other.isFav == isFav)&&(identical(other.cmntsCount, cmntsCount) || other.cmntsCount == cmntsCount)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&const DeepCollectionEquality().equals(other.cmntersImages, _cmntersImages)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,content,sharedPost,isLike,isFav,cmntsCount,likesCount,const DeepCollectionEquality().hash(_cmntersImages),sharesCount);
}

@override
String toString() {
    return 'PostableEntity(id: $id, content: $content, sharedPost: $sharedPost, isLike: $isLike, isFav: $isFav, cmntsCount: $cmntsCount, likesCount: $likesCount, cmntersImages: $cmntersImages, sharesCount: $sharesCount)';
}


}

/// @nodoc
abstract mixin class _$PostableEntityCopyWith<$Res> implements $PostableEntityCopyWith<$Res> {
  factory _$PostableEntityCopyWith(_PostableEntity value, $Res Function(_PostableEntity) _then) = __$PostableEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? content, PostEntity? sharedPost, bool isLike, bool isFav, int? cmntsCount, int? likesCount, List<String>? cmntersImages, int? sharesCount
});


@override $PostEntityCopyWith<$Res>? get sharedPost;

}
/// @nodoc
class __$PostableEntityCopyWithImpl<$Res>
    implements _$PostableEntityCopyWith<$Res> {
  __$PostableEntityCopyWithImpl(this._self, this._then);

  final _PostableEntity _self;
  final $Res Function(_PostableEntity) _then;

/// Create a copy of PostableEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? content = freezed,Object? sharedPost = freezed,Object? isLike = null,Object? isFav = null,Object? cmntsCount = freezed,Object? likesCount = freezed,Object? cmntersImages = freezed,Object? sharesCount = freezed,}) {
  return _then(_PostableEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,sharedPost: freezed == sharedPost ? _self.sharedPost : sharedPost // ignore: cast_nullable_to_non_nullable
as PostEntity?,isLike: null == isLike ? _self.isLike : isLike // ignore: cast_nullable_to_non_nullable
as bool,isFav: null == isFav ? _self.isFav : isFav // ignore: cast_nullable_to_non_nullable
as bool,cmntsCount: freezed == cmntsCount ? _self.cmntsCount : cmntsCount // ignore: cast_nullable_to_non_nullable
as int?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,cmntersImages: freezed == cmntersImages ? _self._cmntersImages : cmntersImages // ignore: cast_nullable_to_non_nullable
as List<String>?,sharesCount: freezed == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PostableEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostEntityCopyWith<$Res>? get sharedPost {
    if (_self.sharedPost == null) {
    return null;
  }

  return $PostEntityCopyWith<$Res>(_self.sharedPost!, (value) {
    return _then(_self.copyWith(sharedPost: value));
  });
}
}

// dart format on
