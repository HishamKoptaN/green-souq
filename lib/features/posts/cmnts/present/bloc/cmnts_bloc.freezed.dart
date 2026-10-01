// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cmnts_bloc.dart';

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCmnts value)?  getCmnts,TResult Function( _CreateCmnt value)?  createCmnt,TResult Function( _DataChanged value)?  dataChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that);case _CreateCmnt() when createCmnt != null:
return createCmnt(_that);case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCmnts value)  getCmnts,required TResult Function( _CreateCmnt value)  createCmnt,required TResult Function( _DataChanged value)  dataChanged,}){
final _that = this;
switch (_that) {
case _GetCmnts():
return getCmnts(_that);case _CreateCmnt():
return createCmnt(_that);case _DataChanged():
return dataChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCmnts value)?  getCmnts,TResult? Function( _CreateCmnt value)?  createCmnt,TResult? Function( _DataChanged value)?  dataChanged,}){
final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that);case _CreateCmnt() when createCmnt != null:
return createCmnt(_that);case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  int commentableId,  String commentableType)?  getCmnts,TResult Function()?  createCmnt,TResult Function( CreateCmntEntity createCmnt)?  dataChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that.page,_that.commentableId,_that.commentableType);case _CreateCmnt() when createCmnt != null:
return createCmnt();case _DataChanged() when dataChanged != null:
return dataChanged(_that.createCmnt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  int commentableId,  String commentableType)  getCmnts,required TResult Function()  createCmnt,required TResult Function( CreateCmntEntity createCmnt)  dataChanged,}) {final _that = this;
switch (_that) {
case _GetCmnts():
return getCmnts(_that.page,_that.commentableId,_that.commentableType);case _CreateCmnt():
return createCmnt();case _DataChanged():
return dataChanged(_that.createCmnt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  int commentableId,  String commentableType)?  getCmnts,TResult? Function()?  createCmnt,TResult? Function( CreateCmntEntity createCmnt)?  dataChanged,}) {final _that = this;
switch (_that) {
case _GetCmnts() when getCmnts != null:
return getCmnts(_that.page,_that.commentableId,_that.commentableType);case _CreateCmnt() when createCmnt != null:
return createCmnt();case _DataChanged() when dataChanged != null:
return dataChanged(_that.createCmnt);case _:
  return null;

}
}

}

/// @nodoc


class _GetCmnts implements CmntsEvent {
  const _GetCmnts({required this.page, required this.commentableId, required this.commentableType});
  

 final  int page;
 final  int commentableId;
 final  String commentableType;

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCmntsCopyWith<_GetCmnts> get copyWith => __$GetCmntsCopyWithImpl<_GetCmnts>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCmnts&&(identical(other.page, page) || other.page == page)&&(identical(other.commentableId, commentableId) || other.commentableId == commentableId)&&(identical(other.commentableType, commentableType) || other.commentableType == commentableType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,page,commentableId,commentableType);
}

@override
String toString() {
    return 'CmntsEvent.getCmnts(page: $page, commentableId: $commentableId, commentableType: $commentableType)';
}


}

/// @nodoc
abstract mixin class _$GetCmntsCopyWith<$Res> implements $CmntsEventCopyWith<$Res> {
  factory _$GetCmntsCopyWith(_GetCmnts value, $Res Function(_GetCmnts) _then) = __$GetCmntsCopyWithImpl;
@useResult
$Res call({
 int page, int commentableId, String commentableType
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
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? commentableId = null,Object? commentableType = null,}) {
  return _then(_GetCmnts(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,commentableId: null == commentableId ? _self.commentableId : commentableId // ignore: cast_nullable_to_non_nullable
as int,commentableType: null == commentableType ? _self.commentableType : commentableType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateCmnt implements CmntsEvent {
  const _CreateCmnt();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCmnt);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CmntsEvent.createCmnt()';
}


}




/// @nodoc


class _DataChanged implements CmntsEvent {
  const _DataChanged(this.createCmnt);
  

 final  CreateCmntEntity createCmnt;

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataChangedCopyWith<_DataChanged> get copyWith => __$DataChangedCopyWithImpl<_DataChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataChanged&&(identical(other.createCmnt, createCmnt) || other.createCmnt == createCmnt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,createCmnt);
}

@override
String toString() {
    return 'CmntsEvent.dataChanged(createCmnt: $createCmnt)';
}


}

/// @nodoc
abstract mixin class _$DataChangedCopyWith<$Res> implements $CmntsEventCopyWith<$Res> {
  factory _$DataChangedCopyWith(_DataChanged value, $Res Function(_DataChanged) _then) = __$DataChangedCopyWithImpl;
@useResult
$Res call({
 CreateCmntEntity createCmnt
});


$CreateCmntEntityCopyWith<$Res> get createCmnt;

}
/// @nodoc
class __$DataChangedCopyWithImpl<$Res>
    implements _$DataChangedCopyWith<$Res> {
  __$DataChangedCopyWithImpl(this._self, this._then);

  final _DataChanged _self;
  final $Res Function(_DataChanged) _then;

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? createCmnt = null,}) {
  return _then(_DataChanged(
null == createCmnt ? _self.createCmnt : createCmnt // ignore: cast_nullable_to_non_nullable
as CreateCmntEntity,
  ));
}

/// Create a copy of CmntsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCmntEntityCopyWith<$Res> get createCmnt {
  
  return $CreateCmntEntityCopyWith<$Res>(_self.createCmnt, (value) {
    return _then(_self.copyWith(createCmnt: value));
  });
}
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Success value)?  success,TResult Function( _CmntsLoading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that);case _CmntsLoading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Success value)  success,required TResult Function( _CmntsLoading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Success():
return success(_that);case _CmntsLoading():
return loading(_that);case _Loaded():
return loaded(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Success value)?  success,TResult? Function( _CmntsLoading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that);case _CmntsLoading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool create,  bool share)?  success,TResult Function()?  loading,TResult Function( CmntsResModel cmntsRes,  CreateCmntEntity createCmnt,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that.create,_that.share);case _CmntsLoading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.cmntsRes,_that.createCmnt,_that.formzSubmissionStatus);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool create,  bool share)  success,required TResult Function()  loading,required TResult Function( CmntsResModel cmntsRes,  CreateCmntEntity createCmnt,  FormzSubmissionStatus formzSubmissionStatus)  loaded,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Success():
return success(_that.create,_that.share);case _CmntsLoading():
return loading();case _Loaded():
return loaded(_that.cmntsRes,_that.createCmnt,_that.formzSubmissionStatus);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool create,  bool share)?  success,TResult? Function()?  loading,TResult? Function( CmntsResModel cmntsRes,  CreateCmntEntity createCmnt,  FormzSubmissionStatus formzSubmissionStatus)?  loaded,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that.create,_that.share);case _CmntsLoading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.cmntsRes,_that.createCmnt,_that.formzSubmissionStatus);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
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
    return 'CmntsState.loading()';
}


}




/// @nodoc


class _Loaded implements CmntsState {
  const _Loaded({this.cmntsRes = const CmntsResModel(cmnts: [], meta: MetaModel()), this.createCmnt = const CreateCmntEntity(), this.formzSubmissionStatus = FormzSubmissionStatus.initial});
  

@JsonKey() final  CmntsResModel cmntsRes;
@JsonKey() final  CreateCmntEntity createCmnt;
@JsonKey() final  FormzSubmissionStatus formzSubmissionStatus;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.cmntsRes, cmntsRes) || other.cmntsRes == cmntsRes)&&(identical(other.createCmnt, createCmnt) || other.createCmnt == createCmnt)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cmntsRes,createCmnt,formzSubmissionStatus);
}

@override
String toString() {
    return 'CmntsState.loaded(cmntsRes: $cmntsRes, createCmnt: $createCmnt, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $CmntsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 CmntsResModel cmntsRes, CreateCmntEntity createCmnt, FormzSubmissionStatus formzSubmissionStatus
});


$CmntsResModelCopyWith<$Res> get cmntsRes;$CreateCmntEntityCopyWith<$Res> get createCmnt;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cmntsRes = null,Object? createCmnt = null,Object? formzSubmissionStatus = null,}) {
  return _then(_Loaded(
cmntsRes: null == cmntsRes ? _self.cmntsRes : cmntsRes // ignore: cast_nullable_to_non_nullable
as CmntsResModel,createCmnt: null == createCmnt ? _self.createCmnt : createCmnt // ignore: cast_nullable_to_non_nullable
as CreateCmntEntity,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,
  ));
}

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CmntsResModelCopyWith<$Res> get cmntsRes {
  
  return $CmntsResModelCopyWith<$Res>(_self.cmntsRes, (value) {
    return _then(_self.copyWith(cmntsRes: value));
  });
}/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCmntEntityCopyWith<$Res> get createCmnt {
  
  return $CreateCmntEntityCopyWith<$Res>(_self.createCmnt, (value) {
    return _then(_self.copyWith(createCmnt: value));
  });
}
}

/// @nodoc


class _Failure implements CmntsState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of CmntsState
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
    return 'CmntsState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CmntsStateCopyWith<$Res> {
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

/// Create a copy of CmntsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
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
