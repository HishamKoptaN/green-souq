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
mixin _$PostsResEntity {

 List<Postable> get posts; MetaEntity get meta;
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
 List<Postable> posts, MetaEntity meta
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
as List<Postable>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Postable> posts,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Postable> posts,  MetaEntity meta)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Postable> posts,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _PostsResEntity() when $default != null:
return $default(_that.posts,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _PostsResEntity implements PostsResEntity {
  const _PostsResEntity({ List<Postable> posts = const [], this.meta = const MetaEntity()}): _posts = posts;
  

 final  List<Postable> _posts;
@override@JsonKey() List<Postable> get posts {
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
 List<Postable> posts, MetaEntity meta
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
as List<Postable>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
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

// dart format on
