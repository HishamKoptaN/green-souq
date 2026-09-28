// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hide_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HideEvent {

 HideReq? get hideReq;
/// Create a copy of HideEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HideEventCopyWith<HideEvent> get copyWith => _$HideEventCopyWithImpl<HideEvent>(this as HideEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HideEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HideEvent&&(identical(other.hideReq, _this.hideReq) || other.hideReq == _this.hideReq));
}


@override
int get hashCode {
  final _this = this as HideEvent;
  return Object.hash(runtimeType,_this.hideReq);
}

@override
String toString() {
  final _this = this as HideEvent;
  return 'HideEvent(hideReq: ${_this.hideReq})';
}


}

/// @nodoc
abstract mixin class $HideEventCopyWith<$Res>  {
  factory $HideEventCopyWith(HideEvent value, $Res Function(HideEvent) _then) = _$HideEventCopyWithImpl;
@useResult
$Res call({
 HideReq? hideReq
});


$HideReqCopyWith<$Res>? get hideReq;

}
/// @nodoc
class _$HideEventCopyWithImpl<$Res>
    implements $HideEventCopyWith<$Res> {
  _$HideEventCopyWithImpl(this._self, this._then);

  final HideEvent _self;
  final $Res Function(HideEvent) _then;

/// Create a copy of HideEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hideReq = freezed,}) {
  return _then(HideEvent.hide(
hideReq: freezed == hideReq ? _self.hideReq : hideReq // ignore: cast_nullable_to_non_nullable
as HideReq?,
  ));
}
/// Create a copy of HideEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HideReqCopyWith<$Res>? get hideReq {
    if (_self.hideReq == null) {
    return null;
  }

  return $HideReqCopyWith<$Res>(_self.hideReq!, (value) {
    return _then(_self.copyWith(hideReq: value));
  });
}
}


/// Adds pattern-matching-related methods to [HideEvent].
extension HideEventPatterns on HideEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Hide value)?  hide,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Hide() when hide != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Hide value)  hide,}){
final _that = this;
switch (_that) {
case _Hide():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Hide value)?  hide,}){
final _that = this;
switch (_that) {
case _Hide() when hide != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( HideReq? hideReq)?  hide,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Hide() when hide != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( HideReq? hideReq)  hide,}) {final _that = this;
switch (_that) {
case _Hide():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( HideReq? hideReq)?  hide,}) {final _that = this;
switch (_that) {
case _Hide() when hide != null:
return hide(_that.hideReq);case _:
  return null;

}
}

}

/// @nodoc


class _Hide implements HideEvent {
  const _Hide({required this.hideReq});
  

@override final  HideReq? hideReq;

/// Create a copy of HideEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'HideEvent.hide(hideReq: $hideReq)';
}


}

/// @nodoc
abstract mixin class _$HideCopyWith<$Res> implements $HideEventCopyWith<$Res> {
  factory _$HideCopyWith(_Hide value, $Res Function(_Hide) _then) = __$HideCopyWithImpl;
@override @useResult
$Res call({
 HideReq? hideReq
});


@override $HideReqCopyWith<$Res>? get hideReq;

}
/// @nodoc
class __$HideCopyWithImpl<$Res>
    implements _$HideCopyWith<$Res> {
  __$HideCopyWithImpl(this._self, this._then);

  final _Hide _self;
  final $Res Function(_Hide) _then;

/// Create a copy of HideEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hideReq = freezed,}) {
  return _then(_Hide(
hideReq: freezed == hideReq ? _self.hideReq : hideReq // ignore: cast_nullable_to_non_nullable
as HideReq?,
  ));
}

/// Create a copy of HideEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HideReqCopyWith<$Res>? get hideReq {
    if (_self.hideReq == null) {
    return null;
  }

  return $HideReqCopyWith<$Res>(_self.hideReq!, (value) {
    return _then(_self.copyWith(hideReq: value));
  });
}
}

// dart format on
