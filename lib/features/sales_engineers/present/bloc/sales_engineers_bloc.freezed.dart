// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_engineers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesEngineersEvent {

 int get page; String? get query;
/// Create a copy of SalesEngineersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesEngineersEventCopyWith<SalesEngineersEvent> get copyWith => _$SalesEngineersEventCopyWithImpl<SalesEngineersEvent>(this as SalesEngineersEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SalesEngineersEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesEngineersEvent&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.query, _this.query) || other.query == _this.query));
}


@override
int get hashCode {
  final _this = this as SalesEngineersEvent;
  return Object.hash(runtimeType,_this.page,_this.query);
}

@override
String toString() {
  final _this = this as SalesEngineersEvent;
  return 'SalesEngineersEvent(page: ${_this.page}, query: ${_this.query})';
}


}

/// @nodoc
abstract mixin class $SalesEngineersEventCopyWith<$Res>  {
  factory $SalesEngineersEventCopyWith(SalesEngineersEvent value, $Res Function(SalesEngineersEvent) _then) = _$SalesEngineersEventCopyWithImpl;
@useResult
$Res call({
 int page, String? query
});




}
/// @nodoc
class _$SalesEngineersEventCopyWithImpl<$Res>
    implements $SalesEngineersEventCopyWith<$Res> {
  _$SalesEngineersEventCopyWithImpl(this._self, this._then);

  final SalesEngineersEvent _self;
  final $Res Function(SalesEngineersEvent) _then;

/// Create a copy of SalesEngineersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? query = freezed,}) {
  return _then(SalesEngineersEvent.getSalesEngineers(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesEngineersEvent].
extension SalesEngineersEventPatterns on SalesEngineersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetSalesEngineers value)?  getSalesEngineers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSalesEngineers() when getSalesEngineers != null:
return getSalesEngineers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetSalesEngineers value)  getSalesEngineers,}){
final _that = this;
switch (_that) {
case _GetSalesEngineers():
return getSalesEngineers(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetSalesEngineers value)?  getSalesEngineers,}){
final _that = this;
switch (_that) {
case _GetSalesEngineers() when getSalesEngineers != null:
return getSalesEngineers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  String? query)?  getSalesEngineers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSalesEngineers() when getSalesEngineers != null:
return getSalesEngineers(_that.page,_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  String? query)  getSalesEngineers,}) {final _that = this;
switch (_that) {
case _GetSalesEngineers():
return getSalesEngineers(_that.page,_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  String? query)?  getSalesEngineers,}) {final _that = this;
switch (_that) {
case _GetSalesEngineers() when getSalesEngineers != null:
return getSalesEngineers(_that.page,_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _GetSalesEngineers implements SalesEngineersEvent {
  const _GetSalesEngineers({this.page = 1, this.query});
  

@override@JsonKey() final  int page;
@override final  String? query;

/// Create a copy of SalesEngineersEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSalesEngineersCopyWith<_GetSalesEngineers> get copyWith => __$GetSalesEngineersCopyWithImpl<_GetSalesEngineers>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSalesEngineers&&(identical(other.page, page) || other.page == page)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode {
    return Object.hash(runtimeType,page,query);
}

@override
String toString() {
    return 'SalesEngineersEvent.getSalesEngineers(page: $page, query: $query)';
}


}

/// @nodoc
abstract mixin class _$GetSalesEngineersCopyWith<$Res> implements $SalesEngineersEventCopyWith<$Res> {
  factory _$GetSalesEngineersCopyWith(_GetSalesEngineers value, $Res Function(_GetSalesEngineers) _then) = __$GetSalesEngineersCopyWithImpl;
@override @useResult
$Res call({
 int page, String? query
});




}
/// @nodoc
class __$GetSalesEngineersCopyWithImpl<$Res>
    implements _$GetSalesEngineersCopyWith<$Res> {
  __$GetSalesEngineersCopyWithImpl(this._self, this._then);

  final _GetSalesEngineers _self;
  final $Res Function(_GetSalesEngineers) _then;

/// Create a copy of SalesEngineersEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? query = freezed,}) {
  return _then(_GetSalesEngineers(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SalesEngineersState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesEngineersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SalesEngineersState()';
}


}

/// @nodoc
class $SalesEngineersStateCopyWith<$Res>  {
$SalesEngineersStateCopyWith(SalesEngineersState _, $Res Function(SalesEngineersState) __);
}


/// Adds pattern-matching-related methods to [SalesEngineersState].
extension SalesEngineersStatePatterns on SalesEngineersState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( SalesEngineersResEntity salesEngineersRes)?  loaded,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.salesEngineersRes);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( SalesEngineersResEntity salesEngineersRes)  loaded,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.salesEngineersRes);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( SalesEngineersResEntity salesEngineersRes)?  loaded,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.salesEngineersRes);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements SalesEngineersState {
  const _Loading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SalesEngineersState.loading()';
}


}




/// @nodoc


class _Loaded implements SalesEngineersState {
  const _Loaded({required this.salesEngineersRes});
  

 final  SalesEngineersResEntity salesEngineersRes;

/// Create a copy of SalesEngineersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.salesEngineersRes, salesEngineersRes) || other.salesEngineersRes == salesEngineersRes));
}


@override
int get hashCode {
    return Object.hash(runtimeType,salesEngineersRes);
}

@override
String toString() {
    return 'SalesEngineersState.loaded(salesEngineersRes: $salesEngineersRes)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $SalesEngineersStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 SalesEngineersResEntity salesEngineersRes
});


$SalesEngineersResEntityCopyWith<$Res> get salesEngineersRes;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of SalesEngineersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? salesEngineersRes = null,}) {
  return _then(_Loaded(
salesEngineersRes: null == salesEngineersRes ? _self.salesEngineersRes : salesEngineersRes // ignore: cast_nullable_to_non_nullable
as SalesEngineersResEntity,
  ));
}

/// Create a copy of SalesEngineersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesEngineersResEntityCopyWith<$Res> get salesEngineersRes {
  
  return $SalesEngineersResEntityCopyWith<$Res>(_self.salesEngineersRes, (value) {
    return _then(_self.copyWith(salesEngineersRes: value));
  });
}
}

/// @nodoc


class _Failure implements SalesEngineersState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of SalesEngineersState
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
    return 'SalesEngineersState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $SalesEngineersStateCopyWith<$Res> {
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

/// Create a copy of SalesEngineersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of SalesEngineersState
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
