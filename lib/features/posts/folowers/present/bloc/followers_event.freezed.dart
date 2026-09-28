// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followers_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowersEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FollowersEvent()';
}


}

/// @nodoc
class $FollowersEventCopyWith<$Res>  {
$FollowersEventCopyWith(FollowersEvent _, $Res Function(FollowersEvent) __);
}


/// Adds pattern-matching-related methods to [FollowersEvent].
extension FollowersEventPatterns on FollowersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetFollowers value)?  getFollowers,TResult Function( GetMoreFollowers value)?  getMoreFollowers,TResult Function( GetSuggestedFollowers value)?  getSuggestedFollowers,TResult Function( ToggleFolower value)?  toggleFolower,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetFollowers() when getFollowers != null:
return getFollowers(_that);case GetMoreFollowers() when getMoreFollowers != null:
return getMoreFollowers(_that);case GetSuggestedFollowers() when getSuggestedFollowers != null:
return getSuggestedFollowers(_that);case ToggleFolower() when toggleFolower != null:
return toggleFolower(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetFollowers value)  getFollowers,required TResult Function( GetMoreFollowers value)  getMoreFollowers,required TResult Function( GetSuggestedFollowers value)  getSuggestedFollowers,required TResult Function( ToggleFolower value)  toggleFolower,}){
final _that = this;
switch (_that) {
case GetFollowers():
return getFollowers(_that);case GetMoreFollowers():
return getMoreFollowers(_that);case GetSuggestedFollowers():
return getSuggestedFollowers(_that);case ToggleFolower():
return toggleFolower(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetFollowers value)?  getFollowers,TResult? Function( GetMoreFollowers value)?  getMoreFollowers,TResult? Function( GetSuggestedFollowers value)?  getSuggestedFollowers,TResult? Function( ToggleFolower value)?  toggleFolower,}){
final _that = this;
switch (_that) {
case GetFollowers() when getFollowers != null:
return getFollowers(_that);case GetMoreFollowers() when getMoreFollowers != null:
return getMoreFollowers(_that);case GetSuggestedFollowers() when getSuggestedFollowers != null:
return getSuggestedFollowers(_that);case ToggleFolower() when toggleFolower != null:
return toggleFolower(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? userId,  bool? myData)?  getFollowers,TResult Function( int? userId,  bool? myData)?  getMoreFollowers,TResult Function()?  getSuggestedFollowers,TResult Function( int id)?  toggleFolower,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetFollowers() when getFollowers != null:
return getFollowers(_that.userId,_that.myData);case GetMoreFollowers() when getMoreFollowers != null:
return getMoreFollowers(_that.userId,_that.myData);case GetSuggestedFollowers() when getSuggestedFollowers != null:
return getSuggestedFollowers();case ToggleFolower() when toggleFolower != null:
return toggleFolower(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? userId,  bool? myData)  getFollowers,required TResult Function( int? userId,  bool? myData)  getMoreFollowers,required TResult Function()  getSuggestedFollowers,required TResult Function( int id)  toggleFolower,}) {final _that = this;
switch (_that) {
case GetFollowers():
return getFollowers(_that.userId,_that.myData);case GetMoreFollowers():
return getMoreFollowers(_that.userId,_that.myData);case GetSuggestedFollowers():
return getSuggestedFollowers();case ToggleFolower():
return toggleFolower(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? userId,  bool? myData)?  getFollowers,TResult? Function( int? userId,  bool? myData)?  getMoreFollowers,TResult? Function()?  getSuggestedFollowers,TResult? Function( int id)?  toggleFolower,}) {final _that = this;
switch (_that) {
case GetFollowers() when getFollowers != null:
return getFollowers(_that.userId,_that.myData);case GetMoreFollowers() when getMoreFollowers != null:
return getMoreFollowers(_that.userId,_that.myData);case GetSuggestedFollowers() when getSuggestedFollowers != null:
return getSuggestedFollowers();case ToggleFolower() when toggleFolower != null:
return toggleFolower(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class GetFollowers implements FollowersEvent {
  const GetFollowers({required this.userId, required this.myData});
  

 final  int? userId;
 final  bool? myData;

/// Create a copy of FollowersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFollowersCopyWith<GetFollowers> get copyWith => _$GetFollowersCopyWithImpl<GetFollowers>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFollowers&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.myData, myData) || other.myData == myData));
}


@override
int get hashCode {
    return Object.hash(runtimeType,userId,myData);
}

@override
String toString() {
    return 'FollowersEvent.getFollowers(userId: $userId, myData: $myData)';
}


}

/// @nodoc
abstract mixin class $GetFollowersCopyWith<$Res> implements $FollowersEventCopyWith<$Res> {
  factory $GetFollowersCopyWith(GetFollowers value, $Res Function(GetFollowers) _then) = _$GetFollowersCopyWithImpl;
@useResult
$Res call({
 int? userId, bool? myData
});




}
/// @nodoc
class _$GetFollowersCopyWithImpl<$Res>
    implements $GetFollowersCopyWith<$Res> {
  _$GetFollowersCopyWithImpl(this._self, this._then);

  final GetFollowers _self;
  final $Res Function(GetFollowers) _then;

/// Create a copy of FollowersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? myData = freezed,}) {
  return _then(GetFollowers(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,myData: freezed == myData ? _self.myData : myData // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class GetMoreFollowers implements FollowersEvent {
  const GetMoreFollowers({required this.userId, required this.myData});
  

 final  int? userId;
 final  bool? myData;

/// Create a copy of FollowersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMoreFollowersCopyWith<GetMoreFollowers> get copyWith => _$GetMoreFollowersCopyWithImpl<GetMoreFollowers>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMoreFollowers&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.myData, myData) || other.myData == myData));
}


@override
int get hashCode {
    return Object.hash(runtimeType,userId,myData);
}

@override
String toString() {
    return 'FollowersEvent.getMoreFollowers(userId: $userId, myData: $myData)';
}


}

/// @nodoc
abstract mixin class $GetMoreFollowersCopyWith<$Res> implements $FollowersEventCopyWith<$Res> {
  factory $GetMoreFollowersCopyWith(GetMoreFollowers value, $Res Function(GetMoreFollowers) _then) = _$GetMoreFollowersCopyWithImpl;
@useResult
$Res call({
 int? userId, bool? myData
});




}
/// @nodoc
class _$GetMoreFollowersCopyWithImpl<$Res>
    implements $GetMoreFollowersCopyWith<$Res> {
  _$GetMoreFollowersCopyWithImpl(this._self, this._then);

  final GetMoreFollowers _self;
  final $Res Function(GetMoreFollowers) _then;

/// Create a copy of FollowersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? myData = freezed,}) {
  return _then(GetMoreFollowers(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,myData: freezed == myData ? _self.myData : myData // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class GetSuggestedFollowers implements FollowersEvent {
  const GetSuggestedFollowers();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSuggestedFollowers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FollowersEvent.getSuggestedFollowers()';
}


}




/// @nodoc


class ToggleFolower implements FollowersEvent {
  const ToggleFolower({required this.id});
  

 final  int id;

/// Create a copy of FollowersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFolowerCopyWith<ToggleFolower> get copyWith => _$ToggleFolowerCopyWithImpl<ToggleFolower>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFolower&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'FollowersEvent.toggleFolower(id: $id)';
}


}

/// @nodoc
abstract mixin class $ToggleFolowerCopyWith<$Res> implements $FollowersEventCopyWith<$Res> {
  factory $ToggleFolowerCopyWith(ToggleFolower value, $Res Function(ToggleFolower) _then) = _$ToggleFolowerCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ToggleFolowerCopyWithImpl<$Res>
    implements $ToggleFolowerCopyWith<$Res> {
  _$ToggleFolowerCopyWithImpl(this._self, this._then);

  final ToggleFolower _self;
  final $Res Function(ToggleFolower) _then;

/// Create a copy of FollowersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ToggleFolower(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
