// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaModel {

 int? get id;@JsonKey(name: 'mediable_type') String? get mediableType;@JsonKey(name: 'mediable_id') int? get mediableId;@JsonKey(name: 'file_path') String? get filePath; String? get disk;@JsonKey(name: 'file_type') String? get fileType; Map<String, dynamic>? get metadata;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaModelCopyWith<MediaModel> get copyWith => _$MediaModelCopyWithImpl<MediaModel>(this as MediaModel, _$identity);

  /// Serializes this MediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MediaModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.mediableType, _this.mediableType) || other.mediableType == _this.mediableType)&&(identical(other.mediableId, _this.mediableId) || other.mediableId == _this.mediableId)&&(identical(other.filePath, _this.filePath) || other.filePath == _this.filePath)&&(identical(other.disk, _this.disk) || other.disk == _this.disk)&&(identical(other.fileType, _this.fileType) || other.fileType == _this.fileType)&&const DeepCollectionEquality().equals(other.metadata, _this.metadata)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MediaModel;
  return Object.hash(runtimeType,_this.id,_this.mediableType,_this.mediableId,_this.filePath,_this.disk,_this.fileType,const DeepCollectionEquality().hash(_this.metadata),_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as MediaModel;
  return 'MediaModel(id: ${_this.id}, mediableType: ${_this.mediableType}, mediableId: ${_this.mediableId}, filePath: ${_this.filePath}, disk: ${_this.disk}, fileType: ${_this.fileType}, metadata: ${_this.metadata}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $MediaModelCopyWith<$Res>  {
  factory $MediaModelCopyWith(MediaModel value, $Res Function(MediaModel) _then) = _$MediaModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'mediable_type') String? mediableType,@JsonKey(name: 'mediable_id') int? mediableId,@JsonKey(name: 'file_path') String? filePath, String? disk,@JsonKey(name: 'file_type') String? fileType, Map<String, dynamic>? metadata,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$MediaModelCopyWithImpl<$Res>
    implements $MediaModelCopyWith<$Res> {
  _$MediaModelCopyWithImpl(this._self, this._then);

  final MediaModel _self;
  final $Res Function(MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? mediableType = freezed,Object? mediableId = freezed,Object? filePath = freezed,Object? disk = freezed,Object? fileType = freezed,Object? metadata = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(MediaModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,mediableType: freezed == mediableType ? _self.mediableType : mediableType // ignore: cast_nullable_to_non_nullable
as String?,mediableId: freezed == mediableId ? _self.mediableId : mediableId // ignore: cast_nullable_to_non_nullable
as int?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,disk: freezed == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String?,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaModel].
extension MediaModelPatterns on MediaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaModel value)  $default,){
final _that = this;
switch (_that) {
case _MediaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaModel value)?  $default,){
final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'mediable_type')  String? mediableType, @JsonKey(name: 'mediable_id')  int? mediableId, @JsonKey(name: 'file_path')  String? filePath,  String? disk, @JsonKey(name: 'file_type')  String? fileType,  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
return $default(_that.id,_that.mediableType,_that.mediableId,_that.filePath,_that.disk,_that.fileType,_that.metadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'mediable_type')  String? mediableType, @JsonKey(name: 'mediable_id')  int? mediableId, @JsonKey(name: 'file_path')  String? filePath,  String? disk, @JsonKey(name: 'file_type')  String? fileType,  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MediaModel():
return $default(_that.id,_that.mediableType,_that.mediableId,_that.filePath,_that.disk,_that.fileType,_that.metadata,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'mediable_type')  String? mediableType, @JsonKey(name: 'mediable_id')  int? mediableId, @JsonKey(name: 'file_path')  String? filePath,  String? disk, @JsonKey(name: 'file_type')  String? fileType,  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MediaModel() when $default != null:
return $default(_that.id,_that.mediableType,_that.mediableId,_that.filePath,_that.disk,_that.fileType,_that.metadata,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaModel implements MediaModel {
  const _MediaModel({this.id, @JsonKey(name: 'mediable_type') this.mediableType, @JsonKey(name: 'mediable_id') this.mediableId, @JsonKey(name: 'file_path') this.filePath, this.disk, @JsonKey(name: 'file_type') this.fileType,  Map<String, dynamic>? metadata, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _metadata = metadata;
  factory _MediaModel.fromJson(Map<String, dynamic> json) => _$MediaModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'mediable_type') final  String? mediableType;
@override@JsonKey(name: 'mediable_id') final  int? mediableId;
@override@JsonKey(name: 'file_path') final  String? filePath;
@override final  String? disk;
@override@JsonKey(name: 'file_type') final  String? fileType;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaModelCopyWith<_MediaModel> get copyWith => __$MediaModelCopyWithImpl<_MediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.mediableType, mediableType) || other.mediableType == mediableType)&&(identical(other.mediableId, mediableId) || other.mediableId == mediableId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.disk, disk) || other.disk == disk)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&const DeepCollectionEquality().equals(other.metadata, _metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,mediableType,mediableId,filePath,disk,fileType,const DeepCollectionEquality().hash(_metadata),createdAt,updatedAt);
}

@override
String toString() {
    return 'MediaModel(id: $id, mediableType: $mediableType, mediableId: $mediableId, filePath: $filePath, disk: $disk, fileType: $fileType, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MediaModelCopyWith<$Res> implements $MediaModelCopyWith<$Res> {
  factory _$MediaModelCopyWith(_MediaModel value, $Res Function(_MediaModel) _then) = __$MediaModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'mediable_type') String? mediableType,@JsonKey(name: 'mediable_id') int? mediableId,@JsonKey(name: 'file_path') String? filePath, String? disk,@JsonKey(name: 'file_type') String? fileType, Map<String, dynamic>? metadata,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$MediaModelCopyWithImpl<$Res>
    implements _$MediaModelCopyWith<$Res> {
  __$MediaModelCopyWithImpl(this._self, this._then);

  final _MediaModel _self;
  final $Res Function(_MediaModel) _then;

/// Create a copy of MediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? mediableType = freezed,Object? mediableId = freezed,Object? filePath = freezed,Object? disk = freezed,Object? fileType = freezed,Object? metadata = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MediaModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,mediableType: freezed == mediableType ? _self.mediableType : mediableType // ignore: cast_nullable_to_non_nullable
as String?,mediableId: freezed == mediableId ? _self.mediableId : mediableId // ignore: cast_nullable_to_non_nullable
as int?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,disk: freezed == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String?,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
