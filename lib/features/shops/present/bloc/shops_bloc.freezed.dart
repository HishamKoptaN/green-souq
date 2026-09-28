// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopsEvent()';
}


}

/// @nodoc
class $ShopsEventCopyWith<$Res>  {
$ShopsEventCopyWith(ShopsEvent _, $Res Function(ShopsEvent) __);
}


/// Adds pattern-matching-related methods to [ShopsEvent].
extension ShopsEventPatterns on ShopsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetShops value)?  getShops,TResult Function( _RecordVisit value)?  recordVisit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetShops() when getShops != null:
return getShops(_that);case _RecordVisit() when recordVisit != null:
return recordVisit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetShops value)  getShops,required TResult Function( _RecordVisit value)  recordVisit,}){
final _that = this;
switch (_that) {
case _GetShops():
return getShops(_that);case _RecordVisit():
return recordVisit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetShops value)?  getShops,TResult? Function( _RecordVisit value)?  recordVisit,}){
final _that = this;
switch (_that) {
case _GetShops() when getShops != null:
return getShops(_that);case _RecordVisit() when recordVisit != null:
return recordVisit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  String? query)?  getShops,TResult Function( String id)?  recordVisit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetShops() when getShops != null:
return getShops(_that.page,_that.query);case _RecordVisit() when recordVisit != null:
return recordVisit(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  String? query)  getShops,required TResult Function( String id)  recordVisit,}) {final _that = this;
switch (_that) {
case _GetShops():
return getShops(_that.page,_that.query);case _RecordVisit():
return recordVisit(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  String? query)?  getShops,TResult? Function( String id)?  recordVisit,}) {final _that = this;
switch (_that) {
case _GetShops() when getShops != null:
return getShops(_that.page,_that.query);case _RecordVisit() when recordVisit != null:
return recordVisit(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetShops implements ShopsEvent {
  const _GetShops({this.page = 1, this.query});
  

@JsonKey() final  int page;
 final  String? query;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetShopsCopyWith<_GetShops> get copyWith => __$GetShopsCopyWithImpl<_GetShops>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetShops&&(identical(other.page, page) || other.page == page)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode {
    return Object.hash(runtimeType,page,query);
}

@override
String toString() {
    return 'ShopsEvent.getShops(page: $page, query: $query)';
}


}

/// @nodoc
abstract mixin class _$GetShopsCopyWith<$Res> implements $ShopsEventCopyWith<$Res> {
  factory _$GetShopsCopyWith(_GetShops value, $Res Function(_GetShops) _then) = __$GetShopsCopyWithImpl;
@useResult
$Res call({
 int page, String? query
});




}
/// @nodoc
class __$GetShopsCopyWithImpl<$Res>
    implements _$GetShopsCopyWith<$Res> {
  __$GetShopsCopyWithImpl(this._self, this._then);

  final _GetShops _self;
  final $Res Function(_GetShops) _then;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? query = freezed,}) {
  return _then(_GetShops(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _RecordVisit implements ShopsEvent {
  const _RecordVisit({required this.id});
  

 final  String id;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordVisitCopyWith<_RecordVisit> get copyWith => __$RecordVisitCopyWithImpl<_RecordVisit>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordVisit&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'ShopsEvent.recordVisit(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RecordVisitCopyWith<$Res> implements $ShopsEventCopyWith<$Res> {
  factory _$RecordVisitCopyWith(_RecordVisit value, $Res Function(_RecordVisit) _then) = __$RecordVisitCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$RecordVisitCopyWithImpl<$Res>
    implements _$RecordVisitCopyWith<$Res> {
  __$RecordVisitCopyWithImpl(this._self, this._then);

  final _RecordVisit _self;
  final $Res Function(_RecordVisit) _then;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_RecordVisit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ShopsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopsState()';
}


}

/// @nodoc
class $ShopsStateCopyWith<$Res>  {
$ShopsStateCopyWith(ShopsState _, $Res Function(ShopsState) __);
}


/// Adds pattern-matching-related methods to [ShopsState].
extension ShopsStatePatterns on ShopsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Loading():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( ShopsResEntity shopsRes)?  loaded,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.shopsRes);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( ShopsResEntity shopsRes)  loaded,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.shopsRes);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( ShopsResEntity shopsRes)?  loaded,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.shopsRes);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements ShopsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopsState.loading()';
}


}




/// @nodoc


class _Loaded implements ShopsState {
  const _Loaded({required this.shopsRes});
  

 final  ShopsResEntity shopsRes;

/// Create a copy of ShopsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.shopsRes, shopsRes) || other.shopsRes == shopsRes));
}


@override
int get hashCode {
    return Object.hash(runtimeType,shopsRes);
}

@override
String toString() {
    return 'ShopsState.loaded(shopsRes: $shopsRes)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ShopsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 ShopsResEntity shopsRes
});


$ShopsResEntityCopyWith<$Res> get shopsRes;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ShopsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? shopsRes = null,}) {
  return _then(_Loaded(
shopsRes: null == shopsRes ? _self.shopsRes : shopsRes // ignore: cast_nullable_to_non_nullable
as ShopsResEntity,
  ));
}

/// Create a copy of ShopsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopsResEntityCopyWith<$Res> get shopsRes {
  
  return $ShopsResEntityCopyWith<$Res>(_self.shopsRes, (value) {
    return _then(_self.copyWith(shopsRes: value));
  });
}
}

/// @nodoc


class _Failure implements ShopsState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of ShopsState
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
    return 'ShopsState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $ShopsStateCopyWith<$Res> {
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

/// Create a copy of ShopsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of ShopsState
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
