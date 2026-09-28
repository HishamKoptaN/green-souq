// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cmnts_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CmntsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CmntsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CmntsEvent()';
}


}

/// @nodoc
class $CmntsEventCopyWith<$Res>  {
$CmntsEventCopyWith(CmntsEvent _, $Res Function(CmntsEvent) __);
}


/// Adds pattern-matching-related methods to [CmntsEvent].
extension CmntsEventPatterns on CmntsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCmnts value)?  getCmnts,TResult Function( _CreateCmnt value)?  createCmnt,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that);case _CreateCmnt() when createCmnt != null:
return createCmnt(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCmnts value)  getCmnts,required TResult Function( _CreateCmnt value)  createCmnt,}){
final _that = this;
switch (_that) {
case _GetCmnts():
return getCmnts(_that);case _CreateCmnt():
return createCmnt(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCmnts value)?  getCmnts,TResult? Function( _CreateCmnt value)?  createCmnt,}){
final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that);case _CreateCmnt() when createCmnt != null:
return createCmnt(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int postId,  int page)?  getCmnts,TResult Function( CreateCmntReqBody createCmntReqBody)?  createCmnt,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that.postId,_that.page);case _CreateCmnt() when createCmnt != null:
return createCmnt(_that.createCmntReqBody);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int postId,  int page)  getCmnts,required TResult Function( CreateCmntReqBody createCmntReqBody)  createCmnt,}) {final _that = this;
switch (_that) {
case _GetCmnts():
return getCmnts(_that.postId,_that.page);case _CreateCmnt():
return createCmnt(_that.createCmntReqBody);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int postId,  int page)?  getCmnts,TResult? Function( CreateCmntReqBody createCmntReqBody)?  createCmnt,}) {final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that.postId,_that.page);case _CreateCmnt() when createCmnt != null:
return createCmnt(_that.createCmntReqBody);case _:
  return null;

}
}

}

/// @nodoc


class _GetCmnts implements CmntsEvent {
  const _GetCmnts({required this.postId, required this.page});
  

 final  int postId;
 final  int page;

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCmntsCopyWith<_GetCmnts> get copyWith => __$GetCmntsCopyWithImpl<_GetCmnts>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCmnts&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode {
    return Object.hash(runtimeType,postId,page);
}

@override
String toString() {
    return 'CmntsEvent.getCmnts(postId: $postId, page: $page)';
}


}

/// @nodoc
abstract mixin class _$GetCmntsCopyWith<$Res> implements $CmntsEventCopyWith<$Res> {
  factory _$GetCmntsCopyWith(_GetCmnts value, $Res Function(_GetCmnts) _then) = __$GetCmntsCopyWithImpl;
@useResult
$Res call({
 int postId, int page
});




}
/// @nodoc
class __$GetCmntsCopyWithImpl<$Res>
    implements _$GetCmntsCopyWith<$Res> {
  __$GetCmntsCopyWithImpl(this._self, this._then);

  final _GetCmnts _self;
  final $Res Function(_GetCmnts) _then;

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? page = null,}) {
  return _then(_GetCmnts(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CreateCmnt implements CmntsEvent {
  const _CreateCmnt({required this.createCmntReqBody});
  

 final  CreateCmntReqBody createCmntReqBody;

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCmntCopyWith<_CreateCmnt> get copyWith => __$CreateCmntCopyWithImpl<_CreateCmnt>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCmnt&&(identical(other.createCmntReqBody, createCmntReqBody) || other.createCmntReqBody == createCmntReqBody));
}


@override
int get hashCode {
    return Object.hash(runtimeType,createCmntReqBody);
}

@override
String toString() {
    return 'CmntsEvent.createCmnt(createCmntReqBody: $createCmntReqBody)';
}


}

/// @nodoc
abstract mixin class _$CreateCmntCopyWith<$Res> implements $CmntsEventCopyWith<$Res> {
  factory _$CreateCmntCopyWith(_CreateCmnt value, $Res Function(_CreateCmnt) _then) = __$CreateCmntCopyWithImpl;
@useResult
$Res call({
 CreateCmntReqBody createCmntReqBody
});


$CreateCmntReqBodyCopyWith<$Res> get createCmntReqBody;

}
/// @nodoc
class __$CreateCmntCopyWithImpl<$Res>
    implements _$CreateCmntCopyWith<$Res> {
  __$CreateCmntCopyWithImpl(this._self, this._then);

  final _CreateCmnt _self;
  final $Res Function(_CreateCmnt) _then;

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createCmntReqBody = null,}) {
  return _then(_CreateCmnt(
createCmntReqBody: null == createCmntReqBody ? _self.createCmntReqBody : createCmntReqBody // ignore: cast_nullable_to_non_nullable
as CreateCmntReqBody,
  ));
}

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCmntReqBodyCopyWith<$Res> get createCmntReqBody {
  
  return $CreateCmntReqBodyCopyWith<$Res>(_self.createCmntReqBody, (value) {
    return _then(_self.copyWith(createCmntReqBody: value));
  });
}
}

// dart format on
