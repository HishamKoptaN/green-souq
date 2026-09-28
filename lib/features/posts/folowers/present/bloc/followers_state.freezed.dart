// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowersState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FollowersState()';
}


}

/// @nodoc
class $FollowersStateCopyWith<$Res>  {
$FollowersStateCopyWith(FollowersState _, $Res Function(FollowersState) __);
}


/// Adds pattern-matching-related methods to [FollowersState].
extension FollowersStatePatterns on FollowersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Success value)?  success,TResult Function( _GetFollowersLoading value)?  getFollowersLoading,TResult Function( _FollowersLoaded value)?  followersLoaded,TResult Function( _GetFriendFailure value)?  getFollowersFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Success() when success != null:
return success(_that);case _GetFollowersLoading() when getFollowersLoading != null:
return getFollowersLoading(_that);case _FollowersLoaded() when followersLoaded != null:
return followersLoaded(_that);case _GetFriendFailure() when getFollowersFailure != null:
return getFollowersFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Success value)  success,required TResult Function( _GetFollowersLoading value)  getFollowersLoading,required TResult Function( _FollowersLoaded value)  followersLoaded,required TResult Function( _GetFriendFailure value)  getFollowersFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Success():
return success(_that);case _GetFollowersLoading():
return getFollowersLoading(_that);case _FollowersLoaded():
return followersLoaded(_that);case _GetFriendFailure():
return getFollowersFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Success value)?  success,TResult? Function( _GetFollowersLoading value)?  getFollowersLoading,TResult? Function( _FollowersLoaded value)?  followersLoaded,TResult? Function( _GetFriendFailure value)?  getFollowersFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Success() when success != null:
return success(_that);case _GetFollowersLoading() when getFollowersLoading != null:
return getFollowersLoading(_that);case _FollowersLoaded() when followersLoaded != null:
return followersLoaded(_that);case _GetFriendFailure() when getFollowersFailure != null:
return getFollowersFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  success,TResult Function()?  getFollowersLoading,TResult Function( List<FollowerModel>? followers,  bool? hasNextPage)?  followersLoaded,TResult Function( ErrorInfo errorInfo)?  getFollowersFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Success() when success != null:
return success();case _GetFollowersLoading() when getFollowersLoading != null:
return getFollowersLoading();case _FollowersLoaded() when followersLoaded != null:
return followersLoaded(_that.followers,_that.hasNextPage);case _GetFriendFailure() when getFollowersFailure != null:
return getFollowersFailure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  success,required TResult Function()  getFollowersLoading,required TResult Function( List<FollowerModel>? followers,  bool? hasNextPage)  followersLoaded,required TResult Function( ErrorInfo errorInfo)  getFollowersFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Success():
return success();case _GetFollowersLoading():
return getFollowersLoading();case _FollowersLoaded():
return followersLoaded(_that.followers,_that.hasNextPage);case _GetFriendFailure():
return getFollowersFailure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  success,TResult? Function()?  getFollowersLoading,TResult? Function( List<FollowerModel>? followers,  bool? hasNextPage)?  followersLoaded,TResult? Function( ErrorInfo errorInfo)?  getFollowersFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Success() when success != null:
return success();case _GetFollowersLoading() when getFollowersLoading != null:
return getFollowersLoading();case _FollowersLoaded() when followersLoaded != null:
return followersLoaded(_that.followers,_that.hasNextPage);case _GetFriendFailure() when getFollowersFailure != null:
return getFollowersFailure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FollowersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FollowersState.initial()';
}


}




/// @nodoc


class _Success implements FollowersState {
  const _Success();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FollowersState.success()';
}


}




/// @nodoc


class _GetFollowersLoading implements FollowersState {
  const _GetFollowersLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFollowersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FollowersState.getFollowersLoading()';
}


}




/// @nodoc


class _FollowersLoaded implements FollowersState {
  const _FollowersLoaded({required  List<FollowerModel>? followers, required this.hasNextPage}): _followers = followers;
  

 final  List<FollowerModel>? _followers;
 List<FollowerModel>? get followers {
  final value = _followers;
  if (value == null) return null;
  if (_followers is EqualUnmodifiableListView) return _followers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  bool? hasNextPage;

/// Create a copy of FollowersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowersLoadedCopyWith<_FollowersLoaded> get copyWith => __$FollowersLoadedCopyWithImpl<_FollowersLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowersLoaded&&const DeepCollectionEquality().equals(other.followers, _followers)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_followers),hasNextPage);
}

@override
String toString() {
    return 'FollowersState.followersLoaded(followers: $followers, hasNextPage: $hasNextPage)';
}


}

/// @nodoc
abstract mixin class _$FollowersLoadedCopyWith<$Res> implements $FollowersStateCopyWith<$Res> {
  factory _$FollowersLoadedCopyWith(_FollowersLoaded value, $Res Function(_FollowersLoaded) _then) = __$FollowersLoadedCopyWithImpl;
@useResult
$Res call({
 List<FollowerModel>? followers, bool? hasNextPage
});




}
/// @nodoc
class __$FollowersLoadedCopyWithImpl<$Res>
    implements _$FollowersLoadedCopyWith<$Res> {
  __$FollowersLoadedCopyWithImpl(this._self, this._then);

  final _FollowersLoaded _self;
  final $Res Function(_FollowersLoaded) _then;

/// Create a copy of FollowersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? followers = freezed,Object? hasNextPage = freezed,}) {
  return _then(_FollowersLoaded(
followers: freezed == followers ? _self._followers : followers // ignore: cast_nullable_to_non_nullable
as List<FollowerModel>?,hasNextPage: freezed == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _GetFriendFailure implements FollowersState {
  const _GetFriendFailure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of FollowersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFriendFailureCopyWith<_GetFriendFailure> get copyWith => __$GetFriendFailureCopyWithImpl<_GetFriendFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFriendFailure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errorInfo);
}

@override
String toString() {
    return 'FollowersState.getFollowersFailure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$GetFriendFailureCopyWith<$Res> implements $FollowersStateCopyWith<$Res> {
  factory _$GetFriendFailureCopyWith(_GetFriendFailure value, $Res Function(_GetFriendFailure) _then) = __$GetFriendFailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$GetFriendFailureCopyWithImpl<$Res>
    implements _$GetFriendFailureCopyWith<$Res> {
  __$GetFriendFailureCopyWithImpl(this._self, this._then);

  final _GetFriendFailure _self;
  final $Res Function(_GetFriendFailure) _then;

/// Create a copy of FollowersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_GetFriendFailure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of FollowersState
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
