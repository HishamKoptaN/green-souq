// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occasions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OccasionsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OccasionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OccasionsState()';
}


}

/// @nodoc
class $OccasionsStateCopyWith<$Res>  {
$OccasionsStateCopyWith(OccasionsState _, $Res Function(OccasionsState) __);
}


/// Adds pattern-matching-related methods to [OccasionsState].
extension OccasionsStatePatterns on OccasionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _OcassionsLoading value)?  ocassionsLoading,TResult Function( _ContentUpdated value)?  contentUpdated,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _OcassionsLoading() when ocassionsLoading != null:
return ocassionsLoading(_that);case _ContentUpdated() when contentUpdated != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _OcassionsLoading value)  ocassionsLoading,required TResult Function( _ContentUpdated value)  contentUpdated,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _OcassionsLoading():
return ocassionsLoading(_that);case _ContentUpdated():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _OcassionsLoading value)?  ocassionsLoading,TResult? Function( _ContentUpdated value)?  contentUpdated,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _OcassionsLoading() when ocassionsLoading != null:
return ocassionsLoading(_that);case _ContentUpdated() when contentUpdated != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  ocassionsLoading,TResult Function()?  contentUpdated,TResult Function()?  success,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _OcassionsLoading() when ocassionsLoading != null:
return ocassionsLoading();case _ContentUpdated() when contentUpdated != null:
return contentUpdated();case _Success() when success != null:
return success();case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  ocassionsLoading,required TResult Function()  contentUpdated,required TResult Function()  success,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _OcassionsLoading():
return ocassionsLoading();case _ContentUpdated():
return contentUpdated();case _Success():
return success();case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  ocassionsLoading,TResult? Function()?  contentUpdated,TResult? Function()?  success,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _OcassionsLoading() when ocassionsLoading != null:
return ocassionsLoading();case _ContentUpdated() when contentUpdated != null:
return contentUpdated();case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OccasionsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OccasionsState.initial()';
}


}




/// @nodoc


class _OcassionsLoading implements OccasionsState {
  const _OcassionsLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OcassionsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OccasionsState.ocassionsLoading()';
}


}




/// @nodoc


class _ContentUpdated implements OccasionsState {
  const _ContentUpdated();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentUpdated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OccasionsState.contentUpdated()';
}


}




/// @nodoc


class _Success implements OccasionsState {
  const _Success();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OccasionsState.success()';
}


}




/// @nodoc


class _Failure implements OccasionsState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of OccasionsState
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
    return 'OccasionsState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $OccasionsStateCopyWith<$Res> {
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

/// Create a copy of OccasionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of OccasionsState
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
