// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occasions_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OccasionsEvent {

 int? get id;
/// Create a copy of OccasionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OccasionsEventCopyWith<OccasionsEvent> get copyWith => _$OccasionsEventCopyWithImpl<OccasionsEvent>(this as OccasionsEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OccasionsEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OccasionsEvent&&(identical(other.id, _this.id) || other.id == _this.id));
}


@override
int get hashCode {
  final _this = this as OccasionsEvent;
  return Object.hash(runtimeType,_this.id);
}

@override
String toString() {
  final _this = this as OccasionsEvent;
  return 'OccasionsEvent(id: ${_this.id})';
}


}

/// @nodoc
abstract mixin class $OccasionsEventCopyWith<$Res>  {
  factory $OccasionsEventCopyWith(OccasionsEvent value, $Res Function(OccasionsEvent) _then) = _$OccasionsEventCopyWithImpl;
@useResult
$Res call({
 int? id
});




}
/// @nodoc
class _$OccasionsEventCopyWithImpl<$Res>
    implements $OccasionsEventCopyWith<$Res> {
  _$OccasionsEventCopyWithImpl(this._self, this._then);

  final OccasionsEvent _self;
  final $Res Function(OccasionsEvent) _then;

/// Create a copy of OccasionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(OccasionsEvent.toggleOcassionInterest(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OccasionsEvent].
extension OccasionsEventPatterns on OccasionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ToggleOcassionInterest value)?  toggleOcassionInterest,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToggleOcassionInterest() when toggleOcassionInterest != null:
return toggleOcassionInterest(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ToggleOcassionInterest value)  toggleOcassionInterest,}){
final _that = this;
switch (_that) {
case _ToggleOcassionInterest():
return toggleOcassionInterest(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ToggleOcassionInterest value)?  toggleOcassionInterest,}){
final _that = this;
switch (_that) {
case _ToggleOcassionInterest() when toggleOcassionInterest != null:
return toggleOcassionInterest(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? id)?  toggleOcassionInterest,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToggleOcassionInterest() when toggleOcassionInterest != null:
return toggleOcassionInterest(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? id)  toggleOcassionInterest,}) {final _that = this;
switch (_that) {
case _ToggleOcassionInterest():
return toggleOcassionInterest(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? id)?  toggleOcassionInterest,}) {final _that = this;
switch (_that) {
case _ToggleOcassionInterest() when toggleOcassionInterest != null:
return toggleOcassionInterest(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _ToggleOcassionInterest implements OccasionsEvent {
  const _ToggleOcassionInterest({required this.id});
  

@override final  int? id;

/// Create a copy of OccasionsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleOcassionInterestCopyWith<_ToggleOcassionInterest> get copyWith => __$ToggleOcassionInterestCopyWithImpl<_ToggleOcassionInterest>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleOcassionInterest&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'OccasionsEvent.toggleOcassionInterest(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ToggleOcassionInterestCopyWith<$Res> implements $OccasionsEventCopyWith<$Res> {
  factory _$ToggleOcassionInterestCopyWith(_ToggleOcassionInterest value, $Res Function(_ToggleOcassionInterest) _then) = __$ToggleOcassionInterestCopyWithImpl;
@override @useResult
$Res call({
 int? id
});




}
/// @nodoc
class __$ToggleOcassionInterestCopyWithImpl<$Res>
    implements _$ToggleOcassionInterestCopyWith<$Res> {
  __$ToggleOcassionInterestCopyWithImpl(this._self, this._then);

  final _ToggleOcassionInterest _self;
  final $Res Function(_ToggleOcassionInterest) _then;

/// Create a copy of OccasionsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_ToggleOcassionInterest(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
