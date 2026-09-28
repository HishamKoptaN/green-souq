// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cmnts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CmntsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CmntsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CmntsState()';
}


}

/// @nodoc
class $CmntsStateCopyWith<$Res>  {
$CmntsStateCopyWith(CmntsState _, $Res Function(CmntsState) __);
}


/// Adds pattern-matching-related methods to [CmntsState].
extension CmntsStatePatterns on CmntsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Success value)?  success,TResult Function( _CmntsLoading value)?  cmntsLoading,TResult Function( _CmntsLoaded value)?  cmntsloaded,TResult Function( _GetCmntsFailure value)?  getCmntsFailure,TResult Function( _CreateCmntFailure value)?  createCmntFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Success() when success != null:
return success(_that);case _CmntsLoading() when cmntsLoading != null:
return cmntsLoading(_that);case _CmntsLoaded() when cmntsloaded != null:
return cmntsloaded(_that);case _GetCmntsFailure() when getCmntsFailure != null:
return getCmntsFailure(_that);case _CreateCmntFailure() when createCmntFailure != null:
return createCmntFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Success value)  success,required TResult Function( _CmntsLoading value)  cmntsLoading,required TResult Function( _CmntsLoaded value)  cmntsloaded,required TResult Function( _GetCmntsFailure value)  getCmntsFailure,required TResult Function( _CreateCmntFailure value)  createCmntFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Success():
return success(_that);case _CmntsLoading():
return cmntsLoading(_that);case _CmntsLoaded():
return cmntsloaded(_that);case _GetCmntsFailure():
return getCmntsFailure(_that);case _CreateCmntFailure():
return createCmntFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Success value)?  success,TResult? Function( _CmntsLoading value)?  cmntsLoading,TResult? Function( _CmntsLoaded value)?  cmntsloaded,TResult? Function( _GetCmntsFailure value)?  getCmntsFailure,TResult? Function( _CreateCmntFailure value)?  createCmntFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Success() when success != null:
return success(_that);case _CmntsLoading() when cmntsLoading != null:
return cmntsLoading(_that);case _CmntsLoaded() when cmntsloaded != null:
return cmntsloaded(_that);case _GetCmntsFailure() when getCmntsFailure != null:
return getCmntsFailure(_that);case _CreateCmntFailure() when createCmntFailure != null:
return createCmntFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool create,  bool share)?  success,TResult Function()?  cmntsLoading,TResult Function( List<Cmnt>? cmnts,  bool? hasMore)?  cmntsloaded,TResult Function( ErrorInfo errorInfo)?  getCmntsFailure,TResult Function( ErrorInfo errorInfo)?  createCmntFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Success() when success != null:
return success(_that.create,_that.share);case _CmntsLoading() when cmntsLoading != null:
return cmntsLoading();case _CmntsLoaded() when cmntsloaded != null:
return cmntsloaded(_that.cmnts,_that.hasMore);case _GetCmntsFailure() when getCmntsFailure != null:
return getCmntsFailure(_that.errorInfo);case _CreateCmntFailure() when createCmntFailure != null:
return createCmntFailure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool create,  bool share)  success,required TResult Function()  cmntsLoading,required TResult Function( List<Cmnt>? cmnts,  bool? hasMore)  cmntsloaded,required TResult Function( ErrorInfo errorInfo)  getCmntsFailure,required TResult Function( ErrorInfo errorInfo)  createCmntFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Success():
return success(_that.create,_that.share);case _CmntsLoading():
return cmntsLoading();case _CmntsLoaded():
return cmntsloaded(_that.cmnts,_that.hasMore);case _GetCmntsFailure():
return getCmntsFailure(_that.errorInfo);case _CreateCmntFailure():
return createCmntFailure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool create,  bool share)?  success,TResult? Function()?  cmntsLoading,TResult? Function( List<Cmnt>? cmnts,  bool? hasMore)?  cmntsloaded,TResult? Function( ErrorInfo errorInfo)?  getCmntsFailure,TResult? Function( ErrorInfo errorInfo)?  createCmntFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Success() when success != null:
return success(_that.create,_that.share);case _CmntsLoading() when cmntsLoading != null:
return cmntsLoading();case _CmntsLoaded() when cmntsloaded != null:
return cmntsloaded(_that.cmnts,_that.hasMore);case _GetCmntsFailure() when getCmntsFailure != null:
return getCmntsFailure(_that.errorInfo);case _CreateCmntFailure() when createCmntFailure != null:
return createCmntFailure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CmntsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CmntsState.initial()';
}


}




/// @nodoc


class _Success implements CmntsState {
  const _Success({required this.create, required this.share});
  

 final  bool create;
 final  bool share;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.create, create) || other.create == create)&&(identical(other.share, share) || other.share == share));
}


@override
int get hashCode {
    return Object.hash(runtimeType,create,share);
}

@override
String toString() {
    return 'CmntsState.success(create: $create, share: $share)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CmntsStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 bool create, bool share
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? create = null,Object? share = null,}) {
  return _then(_Success(
create: null == create ? _self.create : create // ignore: cast_nullable_to_non_nullable
as bool,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _CmntsLoading implements CmntsState {
  const _CmntsLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CmntsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CmntsState.cmntsLoading()';
}


}




/// @nodoc


class _CmntsLoaded implements CmntsState {
  const _CmntsLoaded({required  List<Cmnt>? cmnts, required this.hasMore}): _cmnts = cmnts;
  

 final  List<Cmnt>? _cmnts;
 List<Cmnt>? get cmnts {
  final value = _cmnts;
  if (value == null) return null;
  if (_cmnts is EqualUnmodifiableListView) return _cmnts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  bool? hasMore;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CmntsLoadedCopyWith<_CmntsLoaded> get copyWith => __$CmntsLoadedCopyWithImpl<_CmntsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CmntsLoaded&&const DeepCollectionEquality().equals(other.cmnts, _cmnts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_cmnts),hasMore);
}

@override
String toString() {
    return 'CmntsState.cmntsloaded(cmnts: $cmnts, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$CmntsLoadedCopyWith<$Res> implements $CmntsStateCopyWith<$Res> {
  factory _$CmntsLoadedCopyWith(_CmntsLoaded value, $Res Function(_CmntsLoaded) _then) = __$CmntsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Cmnt>? cmnts, bool? hasMore
});




}
/// @nodoc
class __$CmntsLoadedCopyWithImpl<$Res>
    implements _$CmntsLoadedCopyWith<$Res> {
  __$CmntsLoadedCopyWithImpl(this._self, this._then);

  final _CmntsLoaded _self;
  final $Res Function(_CmntsLoaded) _then;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cmnts = freezed,Object? hasMore = freezed,}) {
  return _then(_CmntsLoaded(
cmnts: freezed == cmnts ? _self._cmnts : cmnts // ignore: cast_nullable_to_non_nullable
as List<Cmnt>?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc


class _GetCmntsFailure implements CmntsState {
  const _GetCmntsFailure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCmntsFailureCopyWith<_GetCmntsFailure> get copyWith => __$GetCmntsFailureCopyWithImpl<_GetCmntsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCmntsFailure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errorInfo);
}

@override
String toString() {
    return 'CmntsState.getCmntsFailure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$GetCmntsFailureCopyWith<$Res> implements $CmntsStateCopyWith<$Res> {
  factory _$GetCmntsFailureCopyWith(_GetCmntsFailure value, $Res Function(_GetCmntsFailure) _then) = __$GetCmntsFailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$GetCmntsFailureCopyWithImpl<$Res>
    implements _$GetCmntsFailureCopyWith<$Res> {
  __$GetCmntsFailureCopyWithImpl(this._self, this._then);

  final _GetCmntsFailure _self;
  final $Res Function(_GetCmntsFailure) _then;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_GetCmntsFailure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of CmntsState
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


class _CreateCmntFailure implements CmntsState {
  const _CreateCmntFailure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCmntFailureCopyWith<_CreateCmntFailure> get copyWith => __$CreateCmntFailureCopyWithImpl<_CreateCmntFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCmntFailure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,errorInfo);
}

@override
String toString() {
    return 'CmntsState.createCmntFailure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$CreateCmntFailureCopyWith<$Res> implements $CmntsStateCopyWith<$Res> {
  factory _$CreateCmntFailureCopyWith(_CreateCmntFailure value, $Res Function(_CreateCmntFailure) _then) = __$CreateCmntFailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$CreateCmntFailureCopyWithImpl<$Res>
    implements _$CreateCmntFailureCopyWith<$Res> {
  __$CreateCmntFailureCopyWithImpl(this._self, this._then);

  final _CreateCmntFailure _self;
  final $Res Function(_CreateCmntFailure) _then;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_CreateCmntFailure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of CmntsState
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
