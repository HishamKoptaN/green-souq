// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_serv_req_req_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateServReqReqBody {

@JsonKey(name: "title") String? get title;@JsonKey(name: "details") String? get details;@JsonKey(name: "specialization_id") int? get specializationId;
/// Create a copy of CreateServReqReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateServReqReqBodyCopyWith<CreateServReqReqBody> get copyWith => _$CreateServReqReqBodyCopyWithImpl<CreateServReqReqBody>(this as CreateServReqReqBody, _$identity);

  /// Serializes this CreateServReqReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateServReqReqBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateServReqReqBody&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.details, _this.details) || other.details == _this.details)&&(identical(other.specializationId, _this.specializationId) || other.specializationId == _this.specializationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateServReqReqBody;
  return Object.hash(runtimeType,_this.title,_this.details,_this.specializationId);
}

@override
String toString() {
  final _this = this as CreateServReqReqBody;
  return 'CreateServReqReqBody(title: ${_this.title}, details: ${_this.details}, specializationId: ${_this.specializationId})';
}


}

/// @nodoc
abstract mixin class $CreateServReqReqBodyCopyWith<$Res>  {
  factory $CreateServReqReqBodyCopyWith(CreateServReqReqBody value, $Res Function(CreateServReqReqBody) _then) = _$CreateServReqReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "title") String? title,@JsonKey(name: "details") String? details,@JsonKey(name: "specialization_id") int? specializationId
});




}
/// @nodoc
class _$CreateServReqReqBodyCopyWithImpl<$Res>
    implements $CreateServReqReqBodyCopyWith<$Res> {
  _$CreateServReqReqBodyCopyWithImpl(this._self, this._then);

  final CreateServReqReqBody _self;
  final $Res Function(CreateServReqReqBody) _then;

/// Create a copy of CreateServReqReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? details = freezed,Object? specializationId = freezed,}) {
  return _then(CreateServReqReqBody(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,specializationId: freezed == specializationId ? _self.specializationId : specializationId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateServReqReqBody].
extension CreateServReqReqBodyPatterns on CreateServReqReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateServReqReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateServReqReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateServReqReqBody value)  $default,){
final _that = this;
switch (_that) {
case _CreateServReqReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateServReqReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreateServReqReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "title")  String? title, @JsonKey(name: "details")  String? details, @JsonKey(name: "specialization_id")  int? specializationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateServReqReqBody() when $default != null:
return $default(_that.title,_that.details,_that.specializationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "title")  String? title, @JsonKey(name: "details")  String? details, @JsonKey(name: "specialization_id")  int? specializationId)  $default,) {final _that = this;
switch (_that) {
case _CreateServReqReqBody():
return $default(_that.title,_that.details,_that.specializationId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "title")  String? title, @JsonKey(name: "details")  String? details, @JsonKey(name: "specialization_id")  int? specializationId)?  $default,) {final _that = this;
switch (_that) {
case _CreateServReqReqBody() when $default != null:
return $default(_that.title,_that.details,_that.specializationId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateServReqReqBody implements CreateServReqReqBody {
  const _CreateServReqReqBody({@JsonKey(name: "title") this.title, @JsonKey(name: "details") this.details, @JsonKey(name: "specialization_id") this.specializationId});
  factory _CreateServReqReqBody.fromJson(Map<String, dynamic> json) => _$CreateServReqReqBodyFromJson(json);

@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "details") final  String? details;
@override@JsonKey(name: "specialization_id") final  int? specializationId;

/// Create a copy of CreateServReqReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateServReqReqBodyCopyWith<_CreateServReqReqBody> get copyWith => __$CreateServReqReqBodyCopyWithImpl<_CreateServReqReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateServReqReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateServReqReqBody&&(identical(other.title, title) || other.title == title)&&(identical(other.details, details) || other.details == details)&&(identical(other.specializationId, specializationId) || other.specializationId == specializationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,title,details,specializationId);
}

@override
String toString() {
    return 'CreateServReqReqBody(title: $title, details: $details, specializationId: $specializationId)';
}


}

/// @nodoc
abstract mixin class _$CreateServReqReqBodyCopyWith<$Res> implements $CreateServReqReqBodyCopyWith<$Res> {
  factory _$CreateServReqReqBodyCopyWith(_CreateServReqReqBody value, $Res Function(_CreateServReqReqBody) _then) = __$CreateServReqReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "title") String? title,@JsonKey(name: "details") String? details,@JsonKey(name: "specialization_id") int? specializationId
});




}
/// @nodoc
class __$CreateServReqReqBodyCopyWithImpl<$Res>
    implements _$CreateServReqReqBodyCopyWith<$Res> {
  __$CreateServReqReqBodyCopyWithImpl(this._self, this._then);

  final _CreateServReqReqBody _self;
  final $Res Function(_CreateServReqReqBody) _then;

/// Create a copy of CreateServReqReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? details = freezed,Object? specializationId = freezed,}) {
  return _then(_CreateServReqReqBody(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,specializationId: freezed == specializationId ? _self.specializationId : specializationId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
