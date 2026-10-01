// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_cmnt_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCmntEntity {

 GenericFormInput get comment; String? get image; String? get video; int? get commentableId; String? get commentableType;
/// Create a copy of CreateCmntEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCmntEntityCopyWith<CreateCmntEntity> get copyWith => _$CreateCmntEntityCopyWithImpl<CreateCmntEntity>(this as CreateCmntEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateCmntEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCmntEntity&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.video, _this.video) || other.video == _this.video)&&(identical(other.commentableId, _this.commentableId) || other.commentableId == _this.commentableId)&&(identical(other.commentableType, _this.commentableType) || other.commentableType == _this.commentableType));
}


@override
int get hashCode {
  final _this = this as CreateCmntEntity;
  return Object.hash(runtimeType,_this.comment,_this.image,_this.video,_this.commentableId,_this.commentableType);
}

@override
String toString() {
  final _this = this as CreateCmntEntity;
  return 'CreateCmntEntity(comment: ${_this.comment}, image: ${_this.image}, video: ${_this.video}, commentableId: ${_this.commentableId}, commentableType: ${_this.commentableType})';
}


}

/// @nodoc
abstract mixin class $CreateCmntEntityCopyWith<$Res>  {
  factory $CreateCmntEntityCopyWith(CreateCmntEntity value, $Res Function(CreateCmntEntity) _then) = _$CreateCmntEntityCopyWithImpl;
@useResult
$Res call({
 GenericFormInput comment, String? image, String? video, int? commentableId, String? commentableType
});




}
/// @nodoc
class _$CreateCmntEntityCopyWithImpl<$Res>
    implements $CreateCmntEntityCopyWith<$Res> {
  _$CreateCmntEntityCopyWithImpl(this._self, this._then);

  final CreateCmntEntity _self;
  final $Res Function(CreateCmntEntity) _then;

/// Create a copy of CreateCmntEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comment = null,Object? image = freezed,Object? video = freezed,Object? commentableId = freezed,Object? commentableType = freezed,}) {
  return _then(CreateCmntEntity(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as GenericFormInput,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,commentableId: freezed == commentableId ? _self.commentableId : commentableId // ignore: cast_nullable_to_non_nullable
as int?,commentableType: freezed == commentableType ? _self.commentableType : commentableType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCmntEntity].
extension CreateCmntEntityPatterns on CreateCmntEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCmntEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCmntEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCmntEntity value)  $default,){
final _that = this;
switch (_that) {
case _CreateCmntEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCmntEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCmntEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenericFormInput comment,  String? image,  String? video,  int? commentableId,  String? commentableType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCmntEntity() when $default != null:
return $default(_that.comment,_that.image,_that.video,_that.commentableId,_that.commentableType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenericFormInput comment,  String? image,  String? video,  int? commentableId,  String? commentableType)  $default,) {final _that = this;
switch (_that) {
case _CreateCmntEntity():
return $default(_that.comment,_that.image,_that.video,_that.commentableId,_that.commentableType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenericFormInput comment,  String? image,  String? video,  int? commentableId,  String? commentableType)?  $default,) {final _that = this;
switch (_that) {
case _CreateCmntEntity() when $default != null:
return $default(_that.comment,_that.image,_that.video,_that.commentableId,_that.commentableType);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCmntEntity implements CreateCmntEntity {
  const _CreateCmntEntity({this.comment = const GenericFormInput.pure(), this.image, this.video, this.commentableId, this.commentableType});
  

@override@JsonKey() final  GenericFormInput comment;
@override final  String? image;
@override final  String? video;
@override final  int? commentableId;
@override final  String? commentableType;

/// Create a copy of CreateCmntEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCmntEntityCopyWith<_CreateCmntEntity> get copyWith => __$CreateCmntEntityCopyWithImpl<_CreateCmntEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCmntEntity&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.image, image) || other.image == image)&&(identical(other.video, video) || other.video == video)&&(identical(other.commentableId, commentableId) || other.commentableId == commentableId)&&(identical(other.commentableType, commentableType) || other.commentableType == commentableType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,comment,image,video,commentableId,commentableType);
}

@override
String toString() {
    return 'CreateCmntEntity(comment: $comment, image: $image, video: $video, commentableId: $commentableId, commentableType: $commentableType)';
}


}

/// @nodoc
abstract mixin class _$CreateCmntEntityCopyWith<$Res> implements $CreateCmntEntityCopyWith<$Res> {
  factory _$CreateCmntEntityCopyWith(_CreateCmntEntity value, $Res Function(_CreateCmntEntity) _then) = __$CreateCmntEntityCopyWithImpl;
@override @useResult
$Res call({
 GenericFormInput comment, String? image, String? video, int? commentableId, String? commentableType
});




}
/// @nodoc
class __$CreateCmntEntityCopyWithImpl<$Res>
    implements _$CreateCmntEntityCopyWith<$Res> {
  __$CreateCmntEntityCopyWithImpl(this._self, this._then);

  final _CreateCmntEntity _self;
  final $Res Function(_CreateCmntEntity) _then;

/// Create a copy of CreateCmntEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? image = freezed,Object? video = freezed,Object? commentableId = freezed,Object? commentableType = freezed,}) {
  return _then(_CreateCmntEntity(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as GenericFormInput,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,commentableId: freezed == commentableId ? _self.commentableId : commentableId // ignore: cast_nullable_to_non_nullable
as int?,commentableType: freezed == commentableType ? _self.commentableType : commentableType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
