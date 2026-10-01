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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Watch value)?  watch,TResult Function( _FetchNext value)?  fetchNext,TResult Function( _Refresh value)?  refresh,TResult Function( _UpdateData value)?  updateData,TResult Function( _CreatePost value)?  createPost,TResult Function( _Draft value)?  draft,TResult Function( _SharePost value)?  sharePost,TResult Function( _Report value)?  report,TResult Function( _Hide value)?  hide,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch(_that);case _FetchNext() when fetchNext != null:
return fetchNext(_that);case _Refresh() when refresh != null:
return refresh(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _CreatePost() when createPost != null:
return createPost(_that);case _Draft() when draft != null:
return draft(_that);case _SharePost() when sharePost != null:
return sharePost(_that);case _Report() when report != null:
return report(_that);case _Hide() when hide != null:
return hide(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Watch value)  watch,required TResult Function( _FetchNext value)  fetchNext,required TResult Function( _Refresh value)  refresh,required TResult Function( _UpdateData value)  updateData,required TResult Function( _CreatePost value)  createPost,required TResult Function( _Draft value)  draft,required TResult Function( _SharePost value)  sharePost,required TResult Function( _Report value)  report,required TResult Function( _Hide value)  hide,}){
final _that = this;
switch (_that) {
case _Watch():
return watch(_that);case _FetchNext():
return fetchNext(_that);case _Refresh():
return refresh(_that);case _UpdateData():
return updateData(_that);case _CreatePost():
return createPost(_that);case _Draft():
return draft(_that);case _SharePost():
return sharePost(_that);case _Report():
return report(_that);case _Hide():
return hide(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Watch value)?  watch,TResult? Function( _FetchNext value)?  fetchNext,TResult? Function( _Refresh value)?  refresh,TResult? Function( _UpdateData value)?  updateData,TResult? Function( _CreatePost value)?  createPost,TResult? Function( _Draft value)?  draft,TResult? Function( _SharePost value)?  sharePost,TResult? Function( _Report value)?  report,TResult? Function( _Hide value)?  hide,}){
final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch(_that);case _FetchNext() when fetchNext != null:
return fetchNext(_that);case _Refresh() when refresh != null:
return refresh(_that);case _UpdateData() when updateData != null:
return updateData(_that);case _CreatePost() when createPost != null:
return createPost(_that);case _Draft() when draft != null:
return draft(_that);case _SharePost() when sharePost != null:
return sharePost(_that);case _Report() when report != null:
return report(_that);case _Hide() when hide != null:
return hide(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? type,  int? userId)?  watch,TResult Function()?  fetchNext,TResult Function()?  refresh,TResult Function( CreatePostReqBody createPostReqBody)?  updateData,TResult Function()?  createPost,TResult Function()?  draft,TResult Function( SharePostReqBody sharePostReqBody)?  sharePost,TResult Function( ReportReq reportReq)?  report,TResult Function( HideReq hideReq)?  hide,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch(_that.type,_that.userId);case _FetchNext() when fetchNext != null:
return fetchNext();case _Refresh() when refresh != null:
return refresh();case _UpdateData() when updateData != null:
return updateData(_that.createPostReqBody);case _CreatePost() when createPost != null:
return createPost();case _Draft() when draft != null:
return draft();case _SharePost() when sharePost != null:
return sharePost(_that.sharePostReqBody);case _Report() when report != null:
return report(_that.reportReq);case _Hide() when hide != null:
return hide(_that.hideReq);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? type,  int? userId)  watch,required TResult Function()  fetchNext,required TResult Function()  refresh,required TResult Function( CreatePostReqBody createPostReqBody)  updateData,required TResult Function()  createPost,required TResult Function()  draft,required TResult Function( SharePostReqBody sharePostReqBody)  sharePost,required TResult Function( ReportReq reportReq)  report,required TResult Function( HideReq hideReq)  hide,}) {final _that = this;
switch (_that) {
case _Watch():
return watch(_that.type,_that.userId);case _FetchNext():
return fetchNext();case _Refresh():
return refresh();case _UpdateData():
return updateData(_that.createPostReqBody);case _CreatePost():
return createPost();case _Draft():
return draft();case _SharePost():
return sharePost(_that.sharePostReqBody);case _Report():
return report(_that.reportReq);case _Hide():
return hide(_that.hideReq);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? type,  int? userId)?  watch,TResult? Function()?  fetchNext,TResult? Function()?  refresh,TResult? Function( CreatePostReqBody createPostReqBody)?  updateData,TResult? Function()?  createPost,TResult? Function()?  draft,TResult? Function( SharePostReqBody sharePostReqBody)?  sharePost,TResult? Function( ReportReq reportReq)?  report,TResult? Function( HideReq hideReq)?  hide,}) {final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch(_that.type,_that.userId);case _FetchNext() when fetchNext != null:
return fetchNext();case _Refresh() when refresh != null:
return refresh();case _UpdateData() when updateData != null:
return updateData(_that.createPostReqBody);case _CreatePost() when createPost != null:
return createPost();case _Draft() when draft != null:
return draft();case _SharePost() when sharePost != null:
return sharePost(_that.sharePostReqBody);case _Report() when report != null:
return report(_that.reportReq);case _Hide() when hide != null:
return hide(_that.hideReq);case _:
  return null;

}
}

}

/// @nodoc


class _Watch implements PostsEvent {
  const _Watch({this.type, this.userId});
  

 final  String? type;
 final  int? userId;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchCopyWith<_Watch> get copyWith => __$WatchCopyWithImpl<_Watch>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Watch&&(identical(other.type, type) || other.type == type)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,type,userId);
}

@override
String toString() {
    return 'PostsEvent.watch(type: $type, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$WatchCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$WatchCopyWith(_Watch value, $Res Function(_Watch) _then) = __$WatchCopyWithImpl;
@useResult
$Res call({
 String? type, int? userId
});




}
/// @nodoc
class __$WatchCopyWithImpl<$Res>
    implements _$WatchCopyWith<$Res> {
  __$WatchCopyWithImpl(this._self, this._then);

  final _Watch _self;
  final $Res Function(_Watch) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? userId = freezed,}) {
  return _then(_Watch(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _FetchNext implements PostsEvent {
  const _FetchNext();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNext);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsEvent.fetchNext()';
}


}




/// @nodoc


class _Refresh implements PostsEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsEvent.refresh()';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _ContentUpdated value)?  contentUpdated,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _ContentUpdated value)  contentUpdated,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _ContentUpdated():
return contentUpdated(_that);case _Success():
return success(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _ContentUpdated value)?  contentUpdated,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( PostsResEntity postsRes,  CreatePostReqBody createPostReqBody,  String? videoPath,  bool isCreatePostLoading,  bool hasDraft,  PostableModel? draftPost)?  loaded,TResult Function( CreatePostReqBody createPostReqBody)?  contentUpdated,TResult Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)?  success,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.postsRes,_that.createPostReqBody,_that.videoPath,_that.isCreatePostLoading,_that.hasDraft,_that.draftPost);case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that.createPostReqBody);case _Success() when success != null:
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( PostsResEntity postsRes,  CreatePostReqBody createPostReqBody,  String? videoPath,  bool isCreatePostLoading,  bool hasDraft,  PostableModel? draftPost)  loaded,required TResult Function( CreatePostReqBody createPostReqBody)  contentUpdated,required TResult Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)  success,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.postsRes,_that.createPostReqBody,_that.videoPath,_that.isCreatePostLoading,_that.hasDraft,_that.draftPost);case _ContentUpdated():
return contentUpdated(_that.createPostReqBody);case _Success():
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( PostsResEntity postsRes,  CreatePostReqBody createPostReqBody,  String? videoPath,  bool isCreatePostLoading,  bool hasDraft,  PostableModel? draftPost)?  loaded,TResult? Function( CreatePostReqBody createPostReqBody)?  contentUpdated,TResult? Function( bool? create,  bool? share,  bool? scheduled,  bool? draft)?  success,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.postsRes,_that.createPostReqBody,_that.videoPath,_that.isCreatePostLoading,_that.hasDraft,_that.draftPost);case _ContentUpdated() when contentUpdated != null:
return contentUpdated(_that.createPostReqBody);case _Success() when success != null:
return success(_that.create,_that.share,_that.scheduled,_that.draft);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements PostsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PostsState.loading()';
}


}




/// @nodoc


class _Loaded implements PostsState {
  const _Loaded({this.postsRes = const PostsResEntity(), this.createPostReqBody = const CreatePostReqBody(), this.videoPath, this.isCreatePostLoading = false, this.hasDraft = false, this.draftPost});
  

@JsonKey() final  PostsResEntity postsRes;
@JsonKey() final  CreatePostReqBody createPostReqBody;
 final  String? videoPath;
@JsonKey() final  bool isCreatePostLoading;
@JsonKey() final  bool hasDraft;
 final  PostableModel? draftPost;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.postsRes, postsRes) || other.postsRes == postsRes)&&(identical(other.createPostReqBody, createPostReqBody) || other.createPostReqBody == createPostReqBody)&&(identical(other.videoPath, videoPath) || other.videoPath == videoPath)&&(identical(other.isCreatePostLoading, isCreatePostLoading) || other.isCreatePostLoading == isCreatePostLoading)&&(identical(other.hasDraft, hasDraft) || other.hasDraft == hasDraft)&&(identical(other.draftPost, draftPost) || other.draftPost == draftPost));
}


@override
int get hashCode {
    return Object.hash(runtimeType,postsRes,createPostReqBody,videoPath,isCreatePostLoading,hasDraft,draftPost);
}

@override
String toString() {
    return 'PostsState.loaded(postsRes: $postsRes, createPostReqBody: $createPostReqBody, videoPath: $videoPath, isCreatePostLoading: $isCreatePostLoading, hasDraft: $hasDraft, draftPost: $draftPost)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 PostsResEntity postsRes, CreatePostReqBody createPostReqBody, String? videoPath, bool isCreatePostLoading, bool hasDraft, PostableModel? draftPost
});


$PostsResEntityCopyWith<$Res> get postsRes;$CreatePostReqBodyCopyWith<$Res> get createPostReqBody;$PostableModelCopyWith<$Res>? get draftPost;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postsRes = null,Object? createPostReqBody = null,Object? videoPath = freezed,Object? isCreatePostLoading = null,Object? hasDraft = null,Object? draftPost = freezed,}) {
  return _then(_Loaded(
postsRes: null == postsRes ? _self.postsRes : postsRes // ignore: cast_nullable_to_non_nullable
as PostsResEntity,createPostReqBody: null == createPostReqBody ? _self.createPostReqBody : createPostReqBody // ignore: cast_nullable_to_non_nullable
as CreatePostReqBody,videoPath: freezed == videoPath ? _self.videoPath : videoPath // ignore: cast_nullable_to_non_nullable
as String?,isCreatePostLoading: null == isCreatePostLoading ? _self.isCreatePostLoading : isCreatePostLoading // ignore: cast_nullable_to_non_nullable
as bool,hasDraft: null == hasDraft ? _self.hasDraft : hasDraft // ignore: cast_nullable_to_non_nullable
as bool,draftPost: freezed == draftPost ? _self.draftPost : draftPost // ignore: cast_nullable_to_non_nullable
as PostableModel?,
  ));
}

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostsResEntityCopyWith<$Res> get postsRes {
  
  return $PostsResEntityCopyWith<$Res>(_self.postsRes, (value) {
    return _then(_self.copyWith(postsRes: value));
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
$PostableModelCopyWith<$Res>? get draftPost {
    if (_self.draftPost == null) {
    return null;
  }

  return $PostableModelCopyWith<$Res>(_self.draftPost!, (value) {
    return _then(_self.copyWith(draftPost: value));
  });
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
