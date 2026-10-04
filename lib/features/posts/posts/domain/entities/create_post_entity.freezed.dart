// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreatePostEntity {

 String? get content; List<XFile>? get mediaFiles;
/// Create a copy of CreatePostEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostEntityCopyWith<CreatePostEntity> get copyWith => _$CreatePostEntityCopyWithImpl<CreatePostEntity>(this as CreatePostEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreatePostEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostEntity&&(identical(other.content, _this.content) || other.content == _this.content)&&const DeepCollectionEquality().equals(other.mediaFiles, _this.mediaFiles));
}


@override
int get hashCode {
  final _this = this as CreatePostEntity;
  return Object.hash(runtimeType,_this.content,const DeepCollectionEquality().hash(_this.mediaFiles));
}

@override
String toString() {
  final _this = this as CreatePostEntity;
  return 'CreatePostEntity(content: ${_this.content}, mediaFiles: ${_this.mediaFiles})';
}


}

/// @nodoc
abstract mixin class $CreatePostEntityCopyWith<$Res>  {
  factory $CreatePostEntityCopyWith(CreatePostEntity value, $Res Function(CreatePostEntity) _then) = _$CreatePostEntityCopyWithImpl;
@useResult
$Res call({
 String? content, List<XFile>? mediaFiles
});




}
/// @nodoc
class _$CreatePostEntityCopyWithImpl<$Res>
    implements $CreatePostEntityCopyWith<$Res> {
  _$CreatePostEntityCopyWithImpl(this._self, this._then);

  final CreatePostEntity _self;
  final $Res Function(CreatePostEntity) _then;

/// Create a copy of CreatePostEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = freezed,Object? mediaFiles = freezed,}) {
  return _then(CreatePostEntity(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaFiles: freezed == mediaFiles ? _self.mediaFiles : mediaFiles // ignore: cast_nullable_to_non_nullable
as List<XFile>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostEntity].
extension CreatePostEntityPatterns on CreatePostEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostEntity value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? content,  List<XFile>? mediaFiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostEntity() when $default != null:
return $default(_that.content,_that.mediaFiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? content,  List<XFile>? mediaFiles)  $default,) {final _that = this;
switch (_that) {
case _CreatePostEntity():
return $default(_that.content,_that.mediaFiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? content,  List<XFile>? mediaFiles)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostEntity() when $default != null:
return $default(_that.content,_that.mediaFiles);case _:
  return null;

}
}

}

/// @nodoc


class _CreatePostEntity implements CreatePostEntity {
  const _CreatePostEntity({this.content,  List<XFile>? mediaFiles}): _mediaFiles = mediaFiles;
  

@override final  String? content;
 final  List<XFile>? _mediaFiles;
@override List<XFile>? get mediaFiles {
  final value = _mediaFiles;
  if (value == null) return null;
  if (_mediaFiles is EqualUnmodifiableListView) return _mediaFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreatePostEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostEntityCopyWith<_CreatePostEntity> get copyWith => __$CreatePostEntityCopyWithImpl<_CreatePostEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostEntity&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.mediaFiles, _mediaFiles));
}


@override
int get hashCode {
    return Object.hash(runtimeType,content,const DeepCollectionEquality().hash(_mediaFiles));
}

@override
String toString() {
    return 'CreatePostEntity(content: $content, mediaFiles: $mediaFiles)';
}


}

/// @nodoc
abstract mixin class _$CreatePostEntityCopyWith<$Res> implements $CreatePostEntityCopyWith<$Res> {
  factory _$CreatePostEntityCopyWith(_CreatePostEntity value, $Res Function(_CreatePostEntity) _then) = __$CreatePostEntityCopyWithImpl;
@override @useResult
$Res call({
 String? content, List<XFile>? mediaFiles
});




}
/// @nodoc
class __$CreatePostEntityCopyWithImpl<$Res>
    implements _$CreatePostEntityCopyWith<$Res> {
  __$CreatePostEntityCopyWithImpl(this._self, this._then);

  final _CreatePostEntity _self;
  final $Res Function(_CreatePostEntity) _then;

/// Create a copy of CreatePostEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? mediaFiles = freezed,}) {
  return _then(_CreatePostEntity(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaFiles: freezed == mediaFiles ? _self._mediaFiles : mediaFiles // ignore: cast_nullable_to_non_nullable
as List<XFile>?,
  ));
}


}

// dart format on
