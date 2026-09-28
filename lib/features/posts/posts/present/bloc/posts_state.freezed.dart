// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsState()';
}


}

/// @nodoc
class $PostsStateCopyWith<$Res>  {
$PostsStateCopyWith(PostsState _, $Res Function(PostsState) __);
}


/// Adds pattern-matching-related methods to [PostsState].
extension PostsStatePatterns on PostsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _PostsLoading value)?  postsLoading,TResult Function( _CreatePostLoading value)?  createPostLoading,TResult Function( _ContentUpdated value)?  contentUpdated,TResult Function( _Success value)?  success,TResult Function( _GetPostsFailure value)?  getPostsFailure,TResult Function( _ExistedDraft value)?  existedDraft,TResult Function( _Loaded value)?  loaded,TResult Function( _CreatePostFailure value)?  createPostFailure,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _PostsLoading() when postsLoading != null:
return postsLoading(_that);case _CreatePostLoading() when createPostLoading != null:
return createPostLoading(_that);case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that);case _Success() when success != null:
return success(_that);case _GetPostsFailure() when getPostsFailure != null:
return getPostsFailure(_that);case _ExistedDraft() when existedDraft != null:
return existedDraft(_that);case _Loaded() when loaded != null:
return loaded(_that);case _CreatePostFailure() when createPostFailure != null:
return createPostFailure(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _PostsLoading value)  postsLoading,required TResult Function( _CreatePostLoading value)  createPostLoading,required TResult Function( _ContentUpdated value)  contentUpdated,required TResult Function( _Success value)  success,required TResult Function( _GetPostsFailure value)  getPostsFailure,required TResult Function( _ExistedDraft value)  existedDraft,required TResult Function( _Loaded value)  loaded,required TResult Function( _CreatePostFailure value)  createPostFailure,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _PostsLoading():
return postsLoading(_that);case _CreatePostLoading():
return createPostLoading(_that);case _ContentUpdated():
return contentUpdated(_that);case _Success():
return success(_that);case _GetPostsFailure():
return getPostsFailure(_that);case _ExistedDraft():
return existedDraft(_that);case _Loaded():
return loaded(_that);case _CreatePostFailure():
return createPostFailure(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _PostsLoading value)?  postsLoading,TResult? Function( _CreatePostLoading value)?  createPostLoading,TResult? Function( _ContentUpdated value)?  contentUpdated,TResult? Function( _Success value)?  success,TResult? Function( _GetPostsFailure value)?  getPostsFailure,TResult? Function( _ExistedDraft value)?  existedDraft,TResult? Function( _Loaded value)?  loaded,TResult? Function( _CreatePostFailure value)?  createPostFailure,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _PostsLoading() when postsLoading != null:
return postsLoading(_that);case _CreatePostLoading() when createPostLoading != null:
return createPostLoading(_that);case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that);case _Success() when success != null:
return success(_that);case _GetPostsFailure() when getPostsFailure != null:
return getPostsFailure(_that);case _ExistedDraft() when existedDraft != null:
return existedDraft(_that);case _Loaded() when loaded != null:
return loaded(_that);case _CreatePostFailure() when createPostFailure != null:
return createPostFailure(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  postsLoading,TResult Function()?  createPostLoading,TResult Function( CreatePostReqBody createPostReqBody)?  contentUpdated,TResult Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)?  success,TResult Function( ErrorInfo errorInfo)?  getPostsFailure,TResult Function()?  existedDraft,TResult Function( List<Post>? posts,  List<Post>? scheduledPosts,  bool? hasNextPage,  CreatePostReqBody? createPostReqBody,  String? videoPath,  ScheduledDateTime? scheduledDateTime,  bool? isCreatePostLoading,  bool? hasDraft)?  loaded,TResult Function( ErrorInfo errorInfo)?  createPostFailure,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _PostsLoading() when postsLoading != null:
return postsLoading();case _CreatePostLoading() when createPostLoading != null:
return createPostLoading();case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that.createPostReqBody);case _Success() when success != null:
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _GetPostsFailure() when getPostsFailure != null:
return getPostsFailure(_that.errorInfo);case _ExistedDraft() when existedDraft != null:
return existedDraft();case _Loaded() when loaded != null:
return loaded(_that.posts,_that.scheduledPosts,_that.hasNextPage,_that.createPostReqBody,_that.videoPath,_that.scheduledDateTime,_that.isCreatePostLoading,_that.hasDraft);case _CreatePostFailure() when createPostFailure != null:
return createPostFailure(_that.errorInfo);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  postsLoading,required TResult Function()  createPostLoading,required TResult Function( CreatePostReqBody createPostReqBody)  contentUpdated,required TResult Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)  success,required TResult Function( ErrorInfo errorInfo)  getPostsFailure,required TResult Function()  existedDraft,required TResult Function( List<Post>? posts,  List<Post>? scheduledPosts,  bool? hasNextPage,  CreatePostReqBody? createPostReqBody,  String? videoPath,  ScheduledDateTime? scheduledDateTime,  bool? isCreatePostLoading,  bool? hasDraft)  loaded,required TResult Function( ErrorInfo errorInfo)  createPostFailure,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _PostsLoading():
return postsLoading();case _CreatePostLoading():
return createPostLoading();case _ContentUpdated():
return contentUpdated(_that.createPostReqBody);case _Success():
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _GetPostsFailure():
return getPostsFailure(_that.errorInfo);case _ExistedDraft():
return existedDraft();case _Loaded():
return loaded(_that.posts,_that.scheduledPosts,_that.hasNextPage,_that.createPostReqBody,_that.videoPath,_that.scheduledDateTime,_that.isCreatePostLoading,_that.hasDraft);case _CreatePostFailure():
return createPostFailure(_that.errorInfo);case _Failure():
return failure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  postsLoading,TResult? Function()?  createPostLoading,TResult? Function( CreatePostReqBody createPostReqBody)?  contentUpdated,TResult? Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)?  success,TResult? Function( ErrorInfo errorInfo)?  getPostsFailure,TResult? Function()?  existedDraft,TResult? Function( List<Post>? posts,  List<Post>? scheduledPosts,  bool? hasNextPage,  CreatePostReqBody? createPostReqBody,  String? videoPath,  ScheduledDateTime? scheduledDateTime,  bool? isCreatePostLoading,  bool? hasDraft)?  loaded,TResult? Function( ErrorInfo errorInfo)?  createPostFailure,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _PostsLoading() when postsLoading != null:
return postsLoading();case _CreatePostLoading() when createPostLoading != null:
return createPostLoading();case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that.createPostReqBody);case _Success() when success != null:
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _GetPostsFailure() when getPostsFailure != null:
return getPostsFailure(_that.errorInfo);case _ExistedDraft() when existedDraft != null:
return existedDraft();case _Loaded() when loaded != null:
return loaded(_that.posts,_that.scheduledPosts,_that.hasNextPage,_that.createPostReqBody,_that.videoPath,_that.scheduledDateTime,_that.isCreatePostLoading,_that.hasDraft);case _CreatePostFailure() when createPostFailure != null:
return createPostFailure(_that.errorInfo);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PostsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsState.initial()';
}


}




/// @nodoc


class _PostsLoading implements PostsState {
  const _PostsLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsState.postsLoading()';
}


}




/// @nodoc


class _CreatePostLoading implements PostsState {
  const _CreatePostLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsState.createPostLoading()';
}


}




/// @nodoc


class _ContentUpdated implements PostsState {
  const _ContentUpdated({required this.createPostReqBody});
  

 final  CreatePostReqBody createPostReqBody;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentUpdatedCopyWith<_ContentUpdated> get copyWith => __$ContentUpdatedCopyWithImpl<_ContentUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentUpdated&&(identical(other.createPostReqBody, createPostReqBody) || other.createPostReqBody == createPostReqBody));
}


@override
int get hashCode {
    return Object.hash(runtimeType,createPostReqBody);
}

@override
String toString() {
    return 'PostsState.contentUpdated(createPostReqBody: $createPostReqBody)';
}


}

/// @nodoc
abstract mixin class _$ContentUpdatedCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$ContentUpdatedCopyWith(_ContentUpdated value, $Res Function(_ContentUpdated) _then) = __$ContentUpdatedCopyWithImpl;
@useResult
$Res call({
 CreatePostReqBody createPostReqBody
});


$CreatePostReqBodyCopyWith<$Res> get createPostReqBody;

}
/// @nodoc
class __$ContentUpdatedCopyWithImpl<$Res>
    implements _$ContentUpdatedCopyWith<$Res> {
  __$ContentUpdatedCopyWithImpl(this._self, this._then);

  final _ContentUpdated _self;
  final $Res Function(_ContentUpdated) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createPostReqBody = null,}) {
  return _then(_ContentUpdated(
createPostReqBody: null == createPostReqBody ? _self.createPostReqBody : createPostReqBody // ignore: cast_nullable_to_non_nullable
as CreatePostReqBody,
  ));
}

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePostReqBodyCopyWith<$Res> get createPostReqBody {
  
  return $CreatePostReqBodyCopyWith<$Res>(_self.createPostReqBody, (value) {
    return _then(_self.copyWith(createPostReqBody: value));
  });
}
}

/// @nodoc


class _Success implements PostsState {
  const _Success({required this.create, required this.share, required this.scheduled, required this.draft});
  

 final  bool? create;
 final  bool? share;
 final  bool? scheduled;
 final  bool? draft;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.create, create) || other.create == create)&&(identical(other.share, share) || other.share == share)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode {
    return Object.hash(runtimeType,create,share,scheduled,draft);
}

@override
String toString() {
    return 'PostsState.success(create: $create, share: $share, scheduled: $scheduled, draft: $draft)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 bool? create, bool? share, bool? scheduled, bool? draft
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? create = freezed,Object? share = freezed,Object? scheduled = freezed,Object? draft = freezed,}) {
  return _then(_Success(
create: freezed == create ? _self.create : create // ignore: cast_nullable_to_non_nullable
as bool?,share: freezed == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as bool?,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as bool?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _GetPostsFailure implements PostsState {
  const _GetPostsFailure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPostsFailureCopyWith<_GetPostsFailure> get copyWith => __$GetPostsFailureCopyWithImpl<_GetPostsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPostsFailure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errorInfo);
}

@override
String toString() {
    return 'PostsState.getPostsFailure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$GetPostsFailureCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$GetPostsFailureCopyWith(_GetPostsFailure value, $Res Function(_GetPostsFailure) _then) = __$GetPostsFailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$GetPostsFailureCopyWithImpl<$Res>
    implements _$GetPostsFailureCopyWith<$Res> {
  __$GetPostsFailureCopyWithImpl(this._self, this._then);

  final _GetPostsFailure _self;
  final $Res Function(_GetPostsFailure) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_GetPostsFailure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<$Res> get errorInfo {
  
  return $ErrorInfoCopyWith<$Res>(_self.errorInfo, (value) {
    return _then(_self.copyWith(errorInfo: value));
  });
}
}

/// @nodoc


class _ExistedDraft implements PostsState {
  const _ExistedDraft();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExistedDraft);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsState.existedDraft()';
}


}




/// @nodoc


class _Loaded implements PostsState {
  const _Loaded({required  List<Post>? posts, required  List<Post>? scheduledPosts, required this.hasNextPage, required this.createPostReqBody, required this.videoPath, required this.scheduledDateTime, required this.isCreatePostLoading, required this.hasDraft}): _posts = posts,_scheduledPosts = scheduledPosts;
  

 final  List<Post>? _posts;
 List<Post>? get posts {
  final value = _posts;
  if (value == null) return null;
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Post>? _scheduledPosts;
 List<Post>? get scheduledPosts {
  final value = _scheduledPosts;
  if (value == null) return null;
  if (_scheduledPosts is EqualUnmodifiableListView) return _scheduledPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  bool? hasNextPage;
 final  CreatePostReqBody? createPostReqBody;
 final  String? videoPath;
 final  ScheduledDateTime? scheduledDateTime;
 final  bool? isCreatePostLoading;
 final  bool? hasDraft;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other.posts, _posts)&&const DeepCollectionEquality().equals(other.scheduledPosts, _scheduledPosts)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.createPostReqBody, createPostReqBody) || other.createPostReqBody == createPostReqBody)&&(identical(other.videoPath, videoPath) || other.videoPath == videoPath)&&(identical(other.scheduledDateTime, scheduledDateTime) || other.scheduledDateTime == scheduledDateTime)&&(identical(other.isCreatePostLoading, isCreatePostLoading) || other.isCreatePostLoading == isCreatePostLoading)&&(identical(other.hasDraft, hasDraft) || other.hasDraft == hasDraft));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),const DeepCollectionEquality().hash(_scheduledPosts),hasNextPage,createPostReqBody,videoPath,scheduledDateTime,isCreatePostLoading,hasDraft);
}

@override
String toString() {
    return 'PostsState.loaded(posts: $posts, scheduledPosts: $scheduledPosts, hasNextPage: $hasNextPage, createPostReqBody: $createPostReqBody, videoPath: $videoPath, scheduledDateTime: $scheduledDateTime, isCreatePostLoading: $isCreatePostLoading, hasDraft: $hasDraft)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<Post>? posts, List<Post>? scheduledPosts, bool? hasNextPage, CreatePostReqBody? createPostReqBody, String? videoPath, ScheduledDateTime? scheduledDateTime, bool? isCreatePostLoading, bool? hasDraft
});


$CreatePostReqBodyCopyWith<$Res>? get createPostReqBody;$ScheduledDateTimeCopyWith<$Res>? get scheduledDateTime;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? posts = freezed,Object? scheduledPosts = freezed,Object? hasNextPage = freezed,Object? createPostReqBody = freezed,Object? videoPath = freezed,Object? scheduledDateTime = freezed,Object? isCreatePostLoading = freezed,Object? hasDraft = freezed,}) {
  return _then(_Loaded(
posts: freezed == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<Post>?,scheduledPosts: freezed == scheduledPosts ? _self._scheduledPosts : scheduledPosts // ignore: cast_nullable_to_non_nullable
as List<Post>?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,createPostReqBody: freezed == createPostReqBody ? _self.createPostReqBody : createPostReqBody // ignore: cast_nullable_to_non_nullable
as CreatePostReqBody?,videoPath: freezed == videoPath ? _self.videoPath : videoPath // ignore: cast_nullable_to_non_nullable
as String?,scheduledDateTime: freezed == scheduledDateTime ? _self.scheduledDateTime : scheduledDateTime // ignore: cast_nullable_to_non_nullable
as ScheduledDateTime?,isCreatePostLoading: freezed == isCreatePostLoading ? _self.isCreatePostLoading : isCreatePostLoading // ignore: cast_nullable_to_non_nullable
as bool?,hasDraft: freezed == hasDraft ? _self.hasDraft : hasDraft // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePostReqBodyCopyWith<$Res>? get createPostReqBody {
    if (_self.createPostReqBody == null) {
    return null;
  }

  return $CreatePostReqBodyCopyWith<$Res>(_self.createPostReqBody!, (value) {
    return _then(_self.copyWith(createPostReqBody: value));
  });
}/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduledDateTimeCopyWith<$Res>? get scheduledDateTime {
    if (_self.scheduledDateTime == null) {
    return null;
  }

  return $ScheduledDateTimeCopyWith<$Res>(_self.scheduledDateTime!, (value) {
    return _then(_self.copyWith(scheduledDateTime: value));
  });
}
}

/// @nodoc


class _CreatePostFailure implements PostsState {
  const _CreatePostFailure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostFailureCopyWith<_CreatePostFailure> get copyWith => __$CreatePostFailureCopyWithImpl<_CreatePostFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostFailure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errorInfo);
}

@override
String toString() {
    return 'PostsState.createPostFailure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$CreatePostFailureCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$CreatePostFailureCopyWith(_CreatePostFailure value, $Res Function(_CreatePostFailure) _then) = __$CreatePostFailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$CreatePostFailureCopyWithImpl<$Res>
    implements _$CreatePostFailureCopyWith<$Res> {
  __$CreatePostFailureCopyWithImpl(this._self, this._then);

  final _CreatePostFailure _self;
  final $Res Function(_CreatePostFailure) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_CreatePostFailure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<$Res> get errorInfo {
  
  return $ErrorInfoCopyWith<$Res>(_self.errorInfo, (value) {
    return _then(_self.copyWith(errorInfo: value));
  });
}
}

/// @nodoc


class _Failure implements PostsState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errorInfo);
}

@override
String toString() {
    return 'PostsState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<$Res> get errorInfo {
  
  return $ErrorInfoCopyWith<$Res>(_self.errorInfo, (value) {
    return _then(_self.copyWith(errorInfo: value));
  });
}
}

// dart format on
