// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsEvent()';
}


}

/// @nodoc
class $PostsEventCopyWith<$Res>  {
$PostsEventCopyWith(PostsEvent _, $Res Function(PostsEvent) __);
}


/// Adds pattern-matching-related methods to [PostsEvent].
extension PostsEventPatterns on PostsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPosts value)?  getPosts,TResult Function( _UpdateData value)?  updateData,TResult Function( _CreatePost value)?  createPost,TResult Function( _Draft value)?  draft,TResult Function( _SharePost value)?  sharePost,TResult Function( _ToggleLike value)?  toggleLike,TResult Function( _Report value)?  report,TResult Function( _Hide value)?  hide,TResult Function( _IncreasePostCmntsCount value)?  increasePostCmntsCount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPosts() when getPosts != null:
return getPosts(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _CreatePost() when createPost != null:
return createPost(_that);case _Draft() when draft != null:
return draft(_that);case _SharePost() when sharePost != null:
return sharePost(_that);case _ToggleLike() when toggleLike != null:
return toggleLike(_that);case _Report() when report != null:
return report(_that);case _Hide() when hide != null:
return hide(_that);case _IncreasePostCmntsCount() when increasePostCmntsCount != null:
return increasePostCmntsCount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPosts value)  getPosts,required TResult Function( _UpdateData value)  updateData,required TResult Function( _CreatePost value)  createPost,required TResult Function( _Draft value)  draft,required TResult Function( _SharePost value)  sharePost,required TResult Function( _ToggleLike value)  toggleLike,required TResult Function( _Report value)  report,required TResult Function( _Hide value)  hide,required TResult Function( _IncreasePostCmntsCount value)  increasePostCmntsCount,}){
final _that = this;
switch (_that) {
case _GetPosts():
return getPosts(_that);case _UpdateData():
return updateData(_that);case _CreatePost():
return createPost(_that);case _Draft():
return draft(_that);case _SharePost():
return sharePost(_that);case _ToggleLike():
return toggleLike(_that);case _Report():
return report(_that);case _Hide():
return hide(_that);case _IncreasePostCmntsCount():
return increasePostCmntsCount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPosts value)?  getPosts,TResult? Function( _UpdateData value)?  updateData,TResult? Function( _CreatePost value)?  createPost,TResult? Function( _Draft value)?  draft,TResult? Function( _SharePost value)?  sharePost,TResult? Function( _ToggleLike value)?  toggleLike,TResult? Function( _Report value)?  report,TResult? Function( _Hide value)?  hide,TResult? Function( _IncreasePostCmntsCount value)?  increasePostCmntsCount,}){
final _that = this;
switch (_that) {
case _GetPosts() when getPosts != null:
return getPosts(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _CreatePost() when createPost != null:
return createPost(_that);case _Draft() when draft != null:
return draft(_that);case _SharePost() when sharePost != null:
return sharePost(_that);case _ToggleLike() when toggleLike != null:
return toggleLike(_that);case _Report() when report != null:
return report(_that);case _Hide() when hide != null:
return hide(_that);case _IncreasePostCmntsCount() when increasePostCmntsCount != null:
return increasePostCmntsCount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? page)?  getPosts,TResult Function( CreatePostReqBody createPostReqBody)?  updateData,TResult Function()?  createPost,TResult Function()?  draft,TResult Function( SharePostReqBody sharePostReqBody)?  sharePost,TResult Function( ToggleLikeReqBody toggleLikeReqBody)?  toggleLike,TResult Function( ReportReq reportReq)?  report,TResult Function( HideReq hideReq)?  hide,TResult Function( int id)?  increasePostCmntsCount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPosts() when getPosts != null:
return getPosts(_that.page);case _UpdateData() when updateData != null:
return updateData(_that.createPostReqBody);case _CreatePost() when createPost != null:
return createPost();case _Draft() when draft != null:
return draft();case _SharePost() when sharePost != null:
return sharePost(_that.sharePostReqBody);case _ToggleLike() when toggleLike != null:
return toggleLike(_that.toggleLikeReqBody);case _Report() when report != null:
return report(_that.reportReq);case _Hide() when hide != null:
return hide(_that.hideReq);case _IncreasePostCmntsCount() when increasePostCmntsCount != null:
return increasePostCmntsCount(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? page)  getPosts,required TResult Function( CreatePostReqBody createPostReqBody)  updateData,required TResult Function()  createPost,required TResult Function()  draft,required TResult Function( SharePostReqBody sharePostReqBody)  sharePost,required TResult Function( ToggleLikeReqBody toggleLikeReqBody)  toggleLike,required TResult Function( ReportReq reportReq)  report,required TResult Function( HideReq hideReq)  hide,required TResult Function( int id)  increasePostCmntsCount,}) {final _that = this;
switch (_that) {
case _GetPosts():
return getPosts(_that.page);case _UpdateData():
return updateData(_that.createPostReqBody);case _CreatePost():
return createPost();case _Draft():
return draft();case _SharePost():
return sharePost(_that.sharePostReqBody);case _ToggleLike():
return toggleLike(_that.toggleLikeReqBody);case _Report():
return report(_that.reportReq);case _Hide():
return hide(_that.hideReq);case _IncreasePostCmntsCount():
return increasePostCmntsCount(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? page)?  getPosts,TResult? Function( CreatePostReqBody createPostReqBody)?  updateData,TResult? Function()?  createPost,TResult? Function()?  draft,TResult? Function( SharePostReqBody sharePostReqBody)?  sharePost,TResult? Function( ToggleLikeReqBody toggleLikeReqBody)?  toggleLike,TResult? Function( ReportReq reportReq)?  report,TResult? Function( HideReq hideReq)?  hide,TResult? Function( int id)?  increasePostCmntsCount,}) {final _that = this;
switch (_that) {
case _GetPosts() when getPosts != null:
return getPosts(_that.page);case _UpdateData() when updateData != null:
return updateData(_that.createPostReqBody);case _CreatePost() when createPost != null:
return createPost();case _Draft() when draft != null:
return draft();case _SharePost() when sharePost != null:
return sharePost(_that.sharePostReqBody);case _ToggleLike() when toggleLike != null:
return toggleLike(_that.toggleLikeReqBody);case _Report() when report != null:
return report(_that.reportReq);case _Hide() when hide != null:
return hide(_that.hideReq);case _IncreasePostCmntsCount() when increasePostCmntsCount != null:
return increasePostCmntsCount(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetPosts implements PostsEvent {
  const _GetPosts({required this.page});
  

 final  int? page;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPostsCopyWith<_GetPosts> get copyWith => __$GetPostsCopyWithImpl<_GetPosts>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPosts&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode {
    return Object.hash(runtimeType,page);
}

@override
String toString() {
    return 'PostsEvent.getPosts(page: $page)';
}


}

/// @nodoc
abstract mixin class _$GetPostsCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$GetPostsCopyWith(_GetPosts value, $Res Function(_GetPosts) _then) = __$GetPostsCopyWithImpl;
@useResult
$Res call({
 int? page
});




}
/// @nodoc
class __$GetPostsCopyWithImpl<$Res>
    implements _$GetPostsCopyWith<$Res> {
  __$GetPostsCopyWithImpl(this._self, this._then);

  final _GetPosts _self;
  final $Res Function(_GetPosts) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = freezed,}) {
  return _then(_GetPosts(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _UpdateData implements PostsEvent {
  const _UpdateData({required this.createPostReqBody});
  

 final  CreatePostReqBody createPostReqBody;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDataCopyWith<_UpdateData> get copyWith => __$UpdateDataCopyWithImpl<_UpdateData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateData&&(identical(other.createPostReqBody, createPostReqBody) || other.createPostReqBody == createPostReqBody));
}


@override
int get hashCode {
    return Object.hash(runtimeType,createPostReqBody);
}

@override
String toString() {
    return 'PostsEvent.updateData(createPostReqBody: $createPostReqBody)';
}


}

/// @nodoc
abstract mixin class _$UpdateDataCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$UpdateDataCopyWith(_UpdateData value, $Res Function(_UpdateData) _then) = __$UpdateDataCopyWithImpl;
@useResult
$Res call({
 CreatePostReqBody createPostReqBody
});


$CreatePostReqBodyCopyWith<$Res> get createPostReqBody;

}
/// @nodoc
class __$UpdateDataCopyWithImpl<$Res>
    implements _$UpdateDataCopyWith<$Res> {
  __$UpdateDataCopyWithImpl(this._self, this._then);

  final _UpdateData _self;
  final $Res Function(_UpdateData) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createPostReqBody = null,}) {
  return _then(_UpdateData(
createPostReqBody: null == createPostReqBody ? _self.createPostReqBody : createPostReqBody // ignore: cast_nullable_to_non_nullable
as CreatePostReqBody,
  ));
}

/// Create a copy of PostsEvent
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


class _CreatePost implements PostsEvent {
  const _CreatePost();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePost);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsEvent.createPost()';
}


}




/// @nodoc


class _Draft implements PostsEvent {
  const _Draft();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Draft);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsEvent.draft()';
}


}




/// @nodoc


class _SharePost implements PostsEvent {
  const _SharePost({required this.sharePostReqBody});
  

 final  SharePostReqBody sharePostReqBody;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharePostCopyWith<_SharePost> get copyWith => __$SharePostCopyWithImpl<_SharePost>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharePost&&(identical(other.sharePostReqBody, sharePostReqBody) || other.sharePostReqBody == sharePostReqBody));
}


@override
int get hashCode {
    return Object.hash(runtimeType,sharePostReqBody);
}

@override
String toString() {
    return 'PostsEvent.sharePost(sharePostReqBody: $sharePostReqBody)';
}


}

/// @nodoc
abstract mixin class _$SharePostCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$SharePostCopyWith(_SharePost value, $Res Function(_SharePost) _then) = __$SharePostCopyWithImpl;
@useResult
$Res call({
 SharePostReqBody sharePostReqBody
});


$SharePostReqBodyCopyWith<$Res> get sharePostReqBody;

}
/// @nodoc
class __$SharePostCopyWithImpl<$Res>
    implements _$SharePostCopyWith<$Res> {
  __$SharePostCopyWithImpl(this._self, this._then);

  final _SharePost _self;
  final $Res Function(_SharePost) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sharePostReqBody = null,}) {
  return _then(_SharePost(
sharePostReqBody: null == sharePostReqBody ? _self.sharePostReqBody : sharePostReqBody // ignore: cast_nullable_to_non_nullable
as SharePostReqBody,
  ));
}

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SharePostReqBodyCopyWith<$Res> get sharePostReqBody {
  
  return $SharePostReqBodyCopyWith<$Res>(_self.sharePostReqBody, (value) {
    return _then(_self.copyWith(sharePostReqBody: value));
  });
}
}

/// @nodoc


class _ToggleLike implements PostsEvent {
  const _ToggleLike({required this.toggleLikeReqBody});
  

 final  ToggleLikeReqBody toggleLikeReqBody;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleLikeCopyWith<_ToggleLike> get copyWith => __$ToggleLikeCopyWithImpl<_ToggleLike>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleLike&&(identical(other.toggleLikeReqBody, toggleLikeReqBody) || other.toggleLikeReqBody == toggleLikeReqBody));
}


@override
int get hashCode {
    return Object.hash(runtimeType,toggleLikeReqBody);
}

@override
String toString() {
    return 'PostsEvent.toggleLike(toggleLikeReqBody: $toggleLikeReqBody)';
}


}

/// @nodoc
abstract mixin class _$ToggleLikeCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$ToggleLikeCopyWith(_ToggleLike value, $Res Function(_ToggleLike) _then) = __$ToggleLikeCopyWithImpl;
@useResult
$Res call({
 ToggleLikeReqBody toggleLikeReqBody
});


$ToggleLikeReqBodyCopyWith<$Res> get toggleLikeReqBody;

}
/// @nodoc
class __$ToggleLikeCopyWithImpl<$Res>
    implements _$ToggleLikeCopyWith<$Res> {
  __$ToggleLikeCopyWithImpl(this._self, this._then);

  final _ToggleLike _self;
  final $Res Function(_ToggleLike) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? toggleLikeReqBody = null,}) {
  return _then(_ToggleLike(
toggleLikeReqBody: null == toggleLikeReqBody ? _self.toggleLikeReqBody : toggleLikeReqBody // ignore: cast_nullable_to_non_nullable
as ToggleLikeReqBody,
  ));
}

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToggleLikeReqBodyCopyWith<$Res> get toggleLikeReqBody {
  
  return $ToggleLikeReqBodyCopyWith<$Res>(_self.toggleLikeReqBody, (value) {
    return _then(_self.copyWith(toggleLikeReqBody: value));
  });
}
}

/// @nodoc


class _Report implements PostsEvent {
  const _Report({required this.reportReq});
  

 final  ReportReq reportReq;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCopyWith<_Report> get copyWith => __$ReportCopyWithImpl<_Report>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Report&&(identical(other.reportReq, reportReq) || other.reportReq == reportReq));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reportReq);
}

@override
String toString() {
    return 'PostsEvent.report(reportReq: $reportReq)';
}


}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) = __$ReportCopyWithImpl;
@useResult
$Res call({
 ReportReq reportReq
});


$ReportReqCopyWith<$Res> get reportReq;

}
/// @nodoc
class __$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reportReq = null,}) {
  return _then(_Report(
reportReq: null == reportReq ? _self.reportReq : reportReq // ignore: cast_nullable_to_non_nullable
as ReportReq,
  ));
}

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportReqCopyWith<$Res> get reportReq {
  
  return $ReportReqCopyWith<$Res>(_self.reportReq, (value) {
    return _then(_self.copyWith(reportReq: value));
  });
}
}

/// @nodoc


class _Hide implements PostsEvent {
  const _Hide({required this.hideReq});
  

 final  HideReq hideReq;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HideCopyWith<_Hide> get copyWith => __$HideCopyWithImpl<_Hide>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Hide&&(identical(other.hideReq, hideReq) || other.hideReq == hideReq));
}


@override
int get hashCode {
    return Object.hash(runtimeType,hideReq);
}

@override
String toString() {
    return 'PostsEvent.hide(hideReq: $hideReq)';
}


}

/// @nodoc
abstract mixin class _$HideCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$HideCopyWith(_Hide value, $Res Function(_Hide) _then) = __$HideCopyWithImpl;
@useResult
$Res call({
 HideReq hideReq
});


$HideReqCopyWith<$Res> get hideReq;

}
/// @nodoc
class __$HideCopyWithImpl<$Res>
    implements _$HideCopyWith<$Res> {
  __$HideCopyWithImpl(this._self, this._then);

  final _Hide _self;
  final $Res Function(_Hide) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hideReq = null,}) {
  return _then(_Hide(
hideReq: null == hideReq ? _self.hideReq : hideReq // ignore: cast_nullable_to_non_nullable
as HideReq,
  ));
}

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HideReqCopyWith<$Res> get hideReq {
  
  return $HideReqCopyWith<$Res>(_self.hideReq, (value) {
    return _then(_self.copyWith(hideReq: value));
  });
}
}

/// @nodoc


class _IncreasePostCmntsCount implements PostsEvent {
  const _IncreasePostCmntsCount({required this.id});
  

 final  int id;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncreasePostCmntsCountCopyWith<_IncreasePostCmntsCount> get copyWith => __$IncreasePostCmntsCountCopyWithImpl<_IncreasePostCmntsCount>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncreasePostCmntsCount&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'PostsEvent.increasePostCmntsCount(id: $id)';
}


}

/// @nodoc
abstract mixin class _$IncreasePostCmntsCountCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$IncreasePostCmntsCountCopyWith(_IncreasePostCmntsCount value, $Res Function(_IncreasePostCmntsCount) _then) = __$IncreasePostCmntsCountCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$IncreasePostCmntsCountCopyWithImpl<$Res>
    implements _$IncreasePostCmntsCountCopyWith<$Res> {
  __$IncreasePostCmntsCountCopyWithImpl(this._self, this._then);

  final _IncreasePostCmntsCount _self;
  final $Res Function(_IncreasePostCmntsCount) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_IncreasePostCmntsCount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  postsLoading,TResult Function()?  createPostLoading,TResult Function( CreatePostReqBody createPostReqBody)?  contentUpdated,TResult Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)?  success,TResult Function( ErrorInfo errorInfo)?  getPostsFailure,TResult Function()?  existedDraft,TResult Function( PostsResEntity posts,  CreatePostReqBody createPostReqBody,  String? videoPath,  bool isCreatePostLoading,  bool hasDraft,  Postable? draftPost)?  loaded,TResult Function( ErrorInfo errorInfo)?  createPostFailure,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _PostsLoading() when postsLoading != null:
return postsLoading();case _CreatePostLoading() when createPostLoading != null:
return createPostLoading();case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that.createPostReqBody);case _Success() when success != null:
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _GetPostsFailure() when getPostsFailure != null:
return getPostsFailure(_that.errorInfo);case _ExistedDraft() when existedDraft != null:
return existedDraft();case _Loaded() when loaded != null:
return loaded(_that.posts,_that.createPostReqBody,_that.videoPath,_that.isCreatePostLoading,_that.hasDraft,_that.draftPost);case _CreatePostFailure() when createPostFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  postsLoading,required TResult Function()  createPostLoading,required TResult Function( CreatePostReqBody createPostReqBody)  contentUpdated,required TResult Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)  success,required TResult Function( ErrorInfo errorInfo)  getPostsFailure,required TResult Function()  existedDraft,required TResult Function( PostsResEntity posts,  CreatePostReqBody createPostReqBody,  String? videoPath,  bool isCreatePostLoading,  bool hasDraft,  Postable? draftPost)  loaded,required TResult Function( ErrorInfo errorInfo)  createPostFailure,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _PostsLoading():
return postsLoading();case _CreatePostLoading():
return createPostLoading();case _ContentUpdated():
return contentUpdated(_that.createPostReqBody);case _Success():
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _GetPostsFailure():
return getPostsFailure(_that.errorInfo);case _ExistedDraft():
return existedDraft();case _Loaded():
return loaded(_that.posts,_that.createPostReqBody,_that.videoPath,_that.isCreatePostLoading,_that.hasDraft,_that.draftPost);case _CreatePostFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  postsLoading,TResult? Function()?  createPostLoading,TResult? Function( CreatePostReqBody createPostReqBody)?  contentUpdated,TResult? Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)?  success,TResult? Function( ErrorInfo errorInfo)?  getPostsFailure,TResult? Function()?  existedDraft,TResult? Function( PostsResEntity posts,  CreatePostReqBody createPostReqBody,  String? videoPath,  bool isCreatePostLoading,  bool hasDraft,  Postable? draftPost)?  loaded,TResult? Function( ErrorInfo errorInfo)?  createPostFailure,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _PostsLoading() when postsLoading != null:
return postsLoading();case _CreatePostLoading() when createPostLoading != null:
return createPostLoading();case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that.createPostReqBody);case _Success() when success != null:
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _GetPostsFailure() when getPostsFailure != null:
return getPostsFailure(_that.errorInfo);case _ExistedDraft() when existedDraft != null:
return existedDraft();case _Loaded() when loaded != null:
return loaded(_that.posts,_that.createPostReqBody,_that.videoPath,_that.isCreatePostLoading,_that.hasDraft,_that.draftPost);case _CreatePostFailure() when createPostFailure != null:
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
  const _Loaded({this.posts = const PostsResEntity(), this.createPostReqBody = const CreatePostReqBody(), this.videoPath, this.isCreatePostLoading = false, this.hasDraft = false, this.draftPost});
  

@JsonKey() final  PostsResEntity posts;
@JsonKey() final  CreatePostReqBody createPostReqBody;
 final  String? videoPath;
@JsonKey() final  bool isCreatePostLoading;
@JsonKey() final  bool hasDraft;
 final  Postable? draftPost;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.posts, posts) || other.posts == posts)&&(identical(other.createPostReqBody, createPostReqBody) || other.createPostReqBody == createPostReqBody)&&(identical(other.videoPath, videoPath) || other.videoPath == videoPath)&&(identical(other.isCreatePostLoading, isCreatePostLoading) || other.isCreatePostLoading == isCreatePostLoading)&&(identical(other.hasDraft, hasDraft) || other.hasDraft == hasDraft)&&(identical(other.draftPost, draftPost) || other.draftPost == draftPost));
}


@override
int get hashCode {
    return Object.hash(runtimeType,posts,createPostReqBody,videoPath,isCreatePostLoading,hasDraft,draftPost);
}

@override
String toString() {
    return 'PostsState.loaded(posts: $posts, createPostReqBody: $createPostReqBody, videoPath: $videoPath, isCreatePostLoading: $isCreatePostLoading, hasDraft: $hasDraft, draftPost: $draftPost)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 PostsResEntity posts, CreatePostReqBody createPostReqBody, String? videoPath, bool isCreatePostLoading, bool hasDraft, Postable? draftPost
});


$PostsResEntityCopyWith<$Res> get posts;$CreatePostReqBodyCopyWith<$Res> get createPostReqBody;$PostableCopyWith<$Res>? get draftPost;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? createPostReqBody = null,Object? videoPath = freezed,Object? isCreatePostLoading = null,Object? hasDraft = null,Object? draftPost = freezed,}) {
  return _then(_Loaded(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as PostsResEntity,createPostReqBody: null == createPostReqBody ? _self.createPostReqBody : createPostReqBody // ignore: cast_nullable_to_non_nullable
as CreatePostReqBody,videoPath: freezed == videoPath ? _self.videoPath : videoPath // ignore: cast_nullable_to_non_nullable
as String?,isCreatePostLoading: null == isCreatePostLoading ? _self.isCreatePostLoading : isCreatePostLoading // ignore: cast_nullable_to_non_nullable
as bool,hasDraft: null == hasDraft ? _self.hasDraft : hasDraft // ignore: cast_nullable_to_non_nullable
as bool,draftPost: freezed == draftPost ? _self.draftPost : draftPost // ignore: cast_nullable_to_non_nullable
as Postable?,
  ));
}

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostsResEntityCopyWith<$Res> get posts {
  
  return $PostsResEntityCopyWith<$Res>(_self.posts, (value) {
    return _then(_self.copyWith(posts: value));
  });
}/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatePostReqBodyCopyWith<$Res> get createPostReqBody {
  
  return $CreatePostReqBodyCopyWith<$Res>(_self.createPostReqBody, (value) {
    return _then(_self.copyWith(createPostReqBody: value));
  });
}/// Create a copy of PostsState
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
