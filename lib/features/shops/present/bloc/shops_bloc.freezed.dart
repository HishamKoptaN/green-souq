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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Watch value)?  watch,TResult Function( _FetchNext value)?  fetchNext,TResult Function( _Search value)?  search,TResult Function( _Refresh value)?  refresh,TResult Function( _Show value)?  show,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch(_that);case _FetchNext() when fetchNext != null:
return fetchNext(_that);case _Search() when search != null:
return search(_that);case _Refresh() when refresh != null:
return refresh(_that);case _Show() when show != null:
return show(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Watch value)  watch,required TResult Function( _FetchNext value)  fetchNext,required TResult Function( _Search value)  search,required TResult Function( _Refresh value)  refresh,required TResult Function( _Show value)  show,}){
final _that = this;
switch (_that) {
case _Watch():
return watch(_that);case _FetchNext():
return fetchNext(_that);case _Search():
return search(_that);case _Refresh():
return refresh(_that);case _Show():
return show(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Watch value)?  watch,TResult? Function( _FetchNext value)?  fetchNext,TResult? Function( _Search value)?  search,TResult? Function( _Refresh value)?  refresh,TResult? Function( _Show value)?  show,}){
final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch(_that);case _FetchNext() when fetchNext != null:
return fetchNext(_that);case _Search() when search != null:
return search(_that);case _Refresh() when refresh != null:
return refresh(_that);case _Show() when show != null:
return show(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  watch,TResult Function()?  fetchNext,TResult Function( String? query)?  search,TResult Function()?  refresh,TResult Function( int id)?  show,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch();case _FetchNext() when fetchNext != null:
return fetchNext();case _Search() when search != null:
return search(_that.query);case _Refresh() when refresh != null:
return refresh();case _Show() when show != null:
return show(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  watch,required TResult Function()  fetchNext,required TResult Function( String? query)  search,required TResult Function()  refresh,required TResult Function( int id)  show,}) {final _that = this;
switch (_that) {
case _Watch():
return watch();case _FetchNext():
return fetchNext();case _Search():
return search(_that.query);case _Refresh():
return refresh();case _Show():
return show(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  watch,TResult? Function()?  fetchNext,TResult? Function( String? query)?  search,TResult? Function()?  refresh,TResult? Function( int id)?  show,}) {final _that = this;
switch (_that) {
case _Watch() when watch != null:
return watch();case _FetchNext() when fetchNext != null:
return fetchNext();case _Search() when search != null:
return search(_that.query);case _Refresh() when refresh != null:
return refresh();case _Show() when show != null:
return show(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Watch implements ShopsEvent {
  const _Watch();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Watch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopsEvent.watch()';
}


}




/// @nodoc


class _FetchNext implements ShopsEvent {
  const _FetchNext();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNext);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopsEvent.fetchNext()';
}


}




/// @nodoc


class _Search implements ShopsEvent {
  const _Search({this.query});
  

 final  String? query;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode {
    return Object.hash(runtimeType,query);
}

@override
String toString() {
    return 'ShopsEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $ShopsEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String? query
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_Search(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Refresh implements ShopsEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopsEvent.refresh()';
}


}




/// @nodoc


class _Show implements ShopsEvent {
  const _Show({required this.id});
  

 final  int id;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowCopyWith<_Show> get copyWith => __$ShowCopyWithImpl<_Show>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Show&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'ShopsEvent.show(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ShowCopyWith<$Res> implements $ShopsEventCopyWith<$Res> {
  factory _$ShowCopyWith(_Show value, $Res Function(_Show) _then) = __$ShowCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$ShowCopyWithImpl<$Res>
    implements _$ShowCopyWith<$Res> {
  __$ShowCopyWithImpl(this._self, this._then);

  final _Show _self;
  final $Res Function(_Show) _then;

/// Create a copy of ShopsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Show(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( ShopEntity? shopDetail,  ShopsResEntity shopsRes,  String? query,  bool isSearching,  bool isLoadingMore,  bool isLoading)?  loaded,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.shopDetail,_that.shopsRes,_that.query,_that.isSearching,_that.isLoadingMore,_that.isLoading);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( ShopEntity? shopDetail,  ShopsResEntity shopsRes,  String? query,  bool isSearching,  bool isLoadingMore,  bool isLoading)  loaded,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.shopDetail,_that.shopsRes,_that.query,_that.isSearching,_that.isLoadingMore,_that.isLoading);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( ShopEntity? shopDetail,  ShopsResEntity shopsRes,  String? query,  bool isSearching,  bool isLoadingMore,  bool isLoading)?  loaded,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.shopDetail,_that.shopsRes,_that.query,_that.isSearching,_that.isLoadingMore,_that.isLoading);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Loading extends ShopsState {
  const _Loading(): super._();
  






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


class _Loaded extends ShopsState {
  const _Loaded({this.shopDetail, required this.shopsRes, this.query, this.isSearching = false, this.isLoadingMore = false, this.isLoading = false}): super._();
  

 final  ShopEntity? shopDetail;
 final  ShopsResEntity shopsRes;
 final  String? query;
@JsonKey() final  bool isSearching;
@JsonKey() final  bool isLoadingMore;
@JsonKey() final  bool isLoading;

/// Create a copy of ShopsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.shopDetail, shopDetail) || other.shopDetail == shopDetail)&&(identical(other.shopsRes, shopsRes) || other.shopsRes == shopsRes)&&(identical(other.query, query) || other.query == query)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode {
    return Object.hash(runtimeType,shopDetail,shopsRes,query,isSearching,isLoadingMore,isLoading);
}

@override
String toString() {
    return 'ShopsState.loaded(shopDetail: $shopDetail, shopsRes: $shopsRes, query: $query, isSearching: $isSearching, isLoadingMore: $isLoadingMore, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ShopsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 ShopEntity? shopDetail, ShopsResEntity shopsRes, String? query, bool isSearching, bool isLoadingMore, bool isLoading
});


$ShopEntityCopyWith<$Res>? get shopDetail;$ShopsResEntityCopyWith<$Res> get shopsRes;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ShopsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? shopDetail = freezed,Object? shopsRes = null,Object? query = freezed,Object? isSearching = null,Object? isLoadingMore = null,Object? isLoading = null,}) {
  return _then(_Loaded(
shopDetail: freezed == shopDetail ? _self.shopDetail : shopDetail // ignore: cast_nullable_to_non_nullable
as ShopEntity?,shopsRes: null == shopsRes ? _self.shopsRes : shopsRes // ignore: cast_nullable_to_non_nullable
as ShopsResEntity,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ShopsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopEntityCopyWith<$Res>? get shopDetail {
    if (_self.shopDetail == null) {
    return null;
  }

  return $ShopEntityCopyWith<$Res>(_self.shopDetail!, (value) {
    return _then(_self.copyWith(shopDetail: value));
  });
}/// Create a copy of ShopsState
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


class _Failure extends ShopsState {
  const _Failure({required this.errorInfo}): super._();
  

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
