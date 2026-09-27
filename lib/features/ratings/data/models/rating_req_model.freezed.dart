// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RatingReqModel {

@JsonKey(name: 'rating') int get rating;
/// Create a copy of RatingReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingReqModelCopyWith<RatingReqModel> get copyWith => _$RatingReqModelCopyWithImpl<RatingReqModel>(this as RatingReqModel, _$identity);

  /// Serializes this RatingReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RatingReqModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingReqModel&&(identical(other.rating, _this.rating) || other.rating == _this.rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RatingReqModel;
  return Object.hash(runtimeType,_this.rating);
}

@override
String toString() {
  final _this = this as RatingReqModel;
  return 'RatingReqModel(rating: ${_this.rating})';
}


}

/// @nodoc
abstract mixin class $RatingReqModelCopyWith<$Res>  {
  factory $RatingReqModelCopyWith(RatingReqModel value, $Res Function(RatingReqModel) _then) = _$RatingReqModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rating') int rating
});




}
/// @nodoc
class _$RatingReqModelCopyWithImpl<$Res>
    implements $RatingReqModelCopyWith<$Res> {
  _$RatingReqModelCopyWithImpl(this._self, this._then);

  final RatingReqModel _self;
  final $Res Function(RatingReqModel) _then;

/// Create a copy of RatingReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,}) {
  return _then(RatingReqModel(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RatingReqModel].
extension RatingReqModelPatterns on RatingReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RatingReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatingReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RatingReqModel value)  $default,){
final _that = this;
switch (_that) {
case _RatingReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RatingReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _RatingReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rating')  int rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatingReqModel() when $default != null:
return $default(_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rating')  int rating)  $default,) {final _that = this;
switch (_that) {
case _RatingReqModel():
return $default(_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rating')  int rating)?  $default,) {final _that = this;
switch (_that) {
case _RatingReqModel() when $default != null:
return $default(_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RatingReqModel implements RatingReqModel {
  const _RatingReqModel({@JsonKey(name: 'rating') required this.rating});
  factory _RatingReqModel.fromJson(Map<String, dynamic> json) => _$RatingReqModelFromJson(json);

@override@JsonKey(name: 'rating') final  int rating;

/// Create a copy of RatingReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingReqModelCopyWith<_RatingReqModel> get copyWith => __$RatingReqModelCopyWithImpl<_RatingReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatingReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingReqModel&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,rating);
}

@override
String toString() {
    return 'RatingReqModel(rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$RatingReqModelCopyWith<$Res> implements $RatingReqModelCopyWith<$Res> {
  factory _$RatingReqModelCopyWith(_RatingReqModel value, $Res Function(_RatingReqModel) _then) = __$RatingReqModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rating') int rating
});




}
/// @nodoc
class __$RatingReqModelCopyWithImpl<$Res>
    implements _$RatingReqModelCopyWith<$Res> {
  __$RatingReqModelCopyWithImpl(this._self, this._then);

  final _RatingReqModel _self;
  final $Res Function(_RatingReqModel) _then;

/// Create a copy of RatingReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,}) {
  return _then(_RatingReqModel(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
