// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_poll_req_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePollReqBody {

@JsonKey(name: "period") int? get period;@JsonKey(name: "options") List<String> get options;
/// Create a copy of CreatePollReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePollReqBodyCopyWith<CreatePollReqBody> get copyWith => _$CreatePollReqBodyCopyWithImpl<CreatePollReqBody>(this as CreatePollReqBody, _$identity);

  /// Serializes this CreatePollReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreatePollReqBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePollReqBody&&(identical(other.period, _this.period) || other.period == _this.period)&&const DeepCollectionEquality().equals(other.options, _this.options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreatePollReqBody;
  return Object.hash(runtimeType,_this.period,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as CreatePollReqBody;
  return 'CreatePollReqBody(period: ${_this.period}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $CreatePollReqBodyCopyWith<$Res>  {
  factory $CreatePollReqBodyCopyWith(CreatePollReqBody value, $Res Function(CreatePollReqBody) _then) = _$CreatePollReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "period") int? period,@JsonKey(name: "options") List<String> options
});




}
/// @nodoc
class _$CreatePollReqBodyCopyWithImpl<$Res>
    implements $CreatePollReqBodyCopyWith<$Res> {
  _$CreatePollReqBodyCopyWithImpl(this._self, this._then);

  final CreatePollReqBody _self;
  final $Res Function(CreatePollReqBody) _then;

/// Create a copy of CreatePollReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? options = null,}) {
  return _then(CreatePollReqBody(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as int?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePollReqBody].
extension CreatePollReqBodyPatterns on CreatePollReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePollReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePollReqBody() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePollReqBody value)  $default,){
final _that = this;
switch (_that) {
case _CreatePollReqBody():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePollReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePollReqBody() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "period")  int? period, @JsonKey(name: "options")  List<String> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePollReqBody() when $default != null:
return $default(_that.period,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "period")  int? period, @JsonKey(name: "options")  List<String> options)  $default,) {final _that = this;
switch (_that) {
case _CreatePollReqBody():
return $default(_that.period,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "period")  int? period, @JsonKey(name: "options")  List<String> options)?  $default,) {final _that = this;
switch (_that) {
case _CreatePollReqBody() when $default != null:
return $default(_that.period,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePollReqBody implements CreatePollReqBody {
  const _CreatePollReqBody({@JsonKey(name: "period") this.period, @JsonKey(name: "options")  List<String> options = const ["", ""]}): _options = options;
  factory _CreatePollReqBody.fromJson(Map<String, dynamic> json) => _$CreatePollReqBodyFromJson(json);

@override@JsonKey(name: "period") final  int? period;
 final  List<String> _options;
@override@JsonKey(name: "options") List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of CreatePollReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePollReqBodyCopyWith<_CreatePollReqBody> get copyWith => __$CreatePollReqBodyCopyWithImpl<_CreatePollReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePollReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePollReqBody&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_options));
}

@override
String toString() {
    return 'CreatePollReqBody(period: $period, options: $options)';
}


}

/// @nodoc
abstract mixin class _$CreatePollReqBodyCopyWith<$Res> implements $CreatePollReqBodyCopyWith<$Res> {
  factory _$CreatePollReqBodyCopyWith(_CreatePollReqBody value, $Res Function(_CreatePollReqBody) _then) = __$CreatePollReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "period") int? period,@JsonKey(name: "options") List<String> options
});




}
/// @nodoc
class __$CreatePollReqBodyCopyWithImpl<$Res>
    implements _$CreatePollReqBodyCopyWith<$Res> {
  __$CreatePollReqBodyCopyWithImpl(this._self, this._then);

  final _CreatePollReqBody _self;
  final $Res Function(_CreatePollReqBody) _then;

/// Create a copy of CreatePollReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? options = null,}) {
  return _then(_CreatePollReqBody(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as int?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
