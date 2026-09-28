// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_occasion_req_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOccasionReqBody {

@JsonKey(ignore: true) Uint8List? get image;@JsonKey(name: "title") String? get title;@JsonKey(name: "description") String? get description;@JsonKey(name: "link") String? get link;@JsonKey(name: "start_at") DateTime? get startAt;@JsonKey(name: "end_at") DateTime? get endAt;@JsonKey(name: "acceptTermsAndConditions") bool? get acceptTermsAndConditions;
/// Create a copy of CreateOccasionReqBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOccasionReqBodyCopyWith<CreateOccasionReqBody> get copyWith => _$CreateOccasionReqBodyCopyWithImpl<CreateOccasionReqBody>(this as CreateOccasionReqBody, _$identity);

  /// Serializes this CreateOccasionReqBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CreateOccasionReqBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOccasionReqBody&&const DeepCollectionEquality().equals(other.image, _this.image)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.link, _this.link) || other.link == _this.link)&&(identical(other.startAt, _this.startAt) || other.startAt == _this.startAt)&&(identical(other.endAt, _this.endAt) || other.endAt == _this.endAt)&&(identical(other.acceptTermsAndConditions, _this.acceptTermsAndConditions) || other.acceptTermsAndConditions == _this.acceptTermsAndConditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CreateOccasionReqBody;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.image),_this.title,_this.description,_this.link,_this.startAt,_this.endAt,_this.acceptTermsAndConditions);
}

@override
String toString() {
  final _this = this as CreateOccasionReqBody;
  return 'CreateOccasionReqBody(image: ${_this.image}, title: ${_this.title}, description: ${_this.description}, link: ${_this.link}, startAt: ${_this.startAt}, endAt: ${_this.endAt}, acceptTermsAndConditions: ${_this.acceptTermsAndConditions})';
}


}

/// @nodoc
abstract mixin class $CreateOccasionReqBodyCopyWith<$Res>  {
  factory $CreateOccasionReqBodyCopyWith(CreateOccasionReqBody value, $Res Function(CreateOccasionReqBody) _then) = _$CreateOccasionReqBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(ignore: true) Uint8List? image,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "link") String? link,@JsonKey(name: "start_at") DateTime? startAt,@JsonKey(name: "end_at") DateTime? endAt,@JsonKey(name: "acceptTermsAndConditions") bool? acceptTermsAndConditions
});




}
/// @nodoc
class _$CreateOccasionReqBodyCopyWithImpl<$Res>
    implements $CreateOccasionReqBodyCopyWith<$Res> {
  _$CreateOccasionReqBodyCopyWithImpl(this._self, this._then);

  final CreateOccasionReqBody _self;
  final $Res Function(CreateOccasionReqBody) _then;

/// Create a copy of CreateOccasionReqBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,Object? title = freezed,Object? description = freezed,Object? link = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? acceptTermsAndConditions = freezed,}) {
  return _then(CreateOccasionReqBody(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptTermsAndConditions: freezed == acceptTermsAndConditions ? _self.acceptTermsAndConditions : acceptTermsAndConditions // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOccasionReqBody].
extension CreateOccasionReqBodyPatterns on CreateOccasionReqBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOccasionReqBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOccasionReqBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOccasionReqBody value)  $default,){
final _that = this;
switch (_that) {
case _CreateOccasionReqBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOccasionReqBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOccasionReqBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(ignore: true)  Uint8List? image, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "link")  String? link, @JsonKey(name: "start_at")  DateTime? startAt, @JsonKey(name: "end_at")  DateTime? endAt, @JsonKey(name: "acceptTermsAndConditions")  bool? acceptTermsAndConditions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOccasionReqBody() when $default != null:
return $default(_that.image,_that.title,_that.description,_that.link,_that.startAt,_that.endAt,_that.acceptTermsAndConditions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(ignore: true)  Uint8List? image, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "link")  String? link, @JsonKey(name: "start_at")  DateTime? startAt, @JsonKey(name: "end_at")  DateTime? endAt, @JsonKey(name: "acceptTermsAndConditions")  bool? acceptTermsAndConditions)  $default,) {final _that = this;
switch (_that) {
case _CreateOccasionReqBody():
return $default(_that.image,_that.title,_that.description,_that.link,_that.startAt,_that.endAt,_that.acceptTermsAndConditions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(ignore: true)  Uint8List? image, @JsonKey(name: "title")  String? title, @JsonKey(name: "description")  String? description, @JsonKey(name: "link")  String? link, @JsonKey(name: "start_at")  DateTime? startAt, @JsonKey(name: "end_at")  DateTime? endAt, @JsonKey(name: "acceptTermsAndConditions")  bool? acceptTermsAndConditions)?  $default,) {final _that = this;
switch (_that) {
case _CreateOccasionReqBody() when $default != null:
return $default(_that.image,_that.title,_that.description,_that.link,_that.startAt,_that.endAt,_that.acceptTermsAndConditions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOccasionReqBody implements CreateOccasionReqBody {
  const _CreateOccasionReqBody({@JsonKey(ignore: true) this.image, @JsonKey(name: "title") this.title, @JsonKey(name: "description") this.description, @JsonKey(name: "link") this.link, @JsonKey(name: "start_at") this.startAt, @JsonKey(name: "end_at") this.endAt, @JsonKey(name: "acceptTermsAndConditions") this.acceptTermsAndConditions});
  factory _CreateOccasionReqBody.fromJson(Map<String, dynamic> json) => _$CreateOccasionReqBodyFromJson(json);

@override@JsonKey(ignore: true) final  Uint8List? image;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "link") final  String? link;
@override@JsonKey(name: "start_at") final  DateTime? startAt;
@override@JsonKey(name: "end_at") final  DateTime? endAt;
@override@JsonKey(name: "acceptTermsAndConditions") final  bool? acceptTermsAndConditions;

/// Create a copy of CreateOccasionReqBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOccasionReqBodyCopyWith<_CreateOccasionReqBody> get copyWith => __$CreateOccasionReqBodyCopyWithImpl<_CreateOccasionReqBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOccasionReqBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOccasionReqBody&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.link, link) || other.link == link)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.acceptTermsAndConditions, acceptTermsAndConditions) || other.acceptTermsAndConditions == acceptTermsAndConditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(image),title,description,link,startAt,endAt,acceptTermsAndConditions);
}

@override
String toString() {
    return 'CreateOccasionReqBody(image: $image, title: $title, description: $description, link: $link, startAt: $startAt, endAt: $endAt, acceptTermsAndConditions: $acceptTermsAndConditions)';
}


}

/// @nodoc
abstract mixin class _$CreateOccasionReqBodyCopyWith<$Res> implements $CreateOccasionReqBodyCopyWith<$Res> {
  factory _$CreateOccasionReqBodyCopyWith(_CreateOccasionReqBody value, $Res Function(_CreateOccasionReqBody) _then) = __$CreateOccasionReqBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(ignore: true) Uint8List? image,@JsonKey(name: "title") String? title,@JsonKey(name: "description") String? description,@JsonKey(name: "link") String? link,@JsonKey(name: "start_at") DateTime? startAt,@JsonKey(name: "end_at") DateTime? endAt,@JsonKey(name: "acceptTermsAndConditions") bool? acceptTermsAndConditions
});




}
/// @nodoc
class __$CreateOccasionReqBodyCopyWithImpl<$Res>
    implements _$CreateOccasionReqBodyCopyWith<$Res> {
  __$CreateOccasionReqBodyCopyWithImpl(this._self, this._then);

  final _CreateOccasionReqBody _self;
  final $Res Function(_CreateOccasionReqBody) _then;

/// Create a copy of CreateOccasionReqBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,Object? title = freezed,Object? description = freezed,Object? link = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? acceptTermsAndConditions = freezed,}) {
  return _then(_CreateOccasionReqBody(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptTermsAndConditions: freezed == acceptTermsAndConditions ? _self.acceptTermsAndConditions : acceptTermsAndConditions // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
