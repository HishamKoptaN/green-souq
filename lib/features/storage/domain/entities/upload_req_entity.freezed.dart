// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadReqEntity {

 String get disk; File get file; String? get uploadUrl; String? get filePath; String? get contentType; dynamic get overwrite; dynamic get publicId; dynamic get timestamp; String? get apiKey; String? get signature;
/// Create a copy of UploadReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadReqEntityCopyWith<UploadReqEntity> get copyWith => _$UploadReqEntityCopyWithImpl<UploadReqEntity>(this as UploadReqEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UploadReqEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadReqEntity&&(identical(other.disk, _this.disk) || other.disk == _this.disk)&&(identical(other.file, _this.file) || other.file == _this.file)&&(identical(other.uploadUrl, _this.uploadUrl) || other.uploadUrl == _this.uploadUrl)&&(identical(other.filePath, _this.filePath) || other.filePath == _this.filePath)&&(identical(other.contentType, _this.contentType) || other.contentType == _this.contentType)&&const DeepCollectionEquality().equals(other.overwrite, _this.overwrite)&&const DeepCollectionEquality().equals(other.publicId, _this.publicId)&&const DeepCollectionEquality().equals(other.timestamp, _this.timestamp)&&(identical(other.apiKey, _this.apiKey) || other.apiKey == _this.apiKey)&&(identical(other.signature, _this.signature) || other.signature == _this.signature));
}


@override
int get hashCode {
  final _this = this as UploadReqEntity;
  return Object.hash(runtimeType,_this.disk,_this.file,_this.uploadUrl,_this.filePath,_this.contentType,const DeepCollectionEquality().hash(_this.overwrite),const DeepCollectionEquality().hash(_this.publicId),const DeepCollectionEquality().hash(_this.timestamp),_this.apiKey,_this.signature);
}

@override
String toString() {
  final _this = this as UploadReqEntity;
  return 'UploadReqEntity(disk: ${_this.disk}, file: ${_this.file}, uploadUrl: ${_this.uploadUrl}, filePath: ${_this.filePath}, contentType: ${_this.contentType}, overwrite: ${_this.overwrite}, publicId: ${_this.publicId}, timestamp: ${_this.timestamp}, apiKey: ${_this.apiKey}, signature: ${_this.signature})';
}


}

/// @nodoc
abstract mixin class $UploadReqEntityCopyWith<$Res>  {
  factory $UploadReqEntityCopyWith(UploadReqEntity value, $Res Function(UploadReqEntity) _then) = _$UploadReqEntityCopyWithImpl;
@useResult
$Res call({
 String disk, File file, String? uploadUrl, String? filePath, String? contentType, dynamic overwrite, dynamic publicId, dynamic timestamp, String? apiKey, String? signature
});




}
/// @nodoc
class _$UploadReqEntityCopyWithImpl<$Res>
    implements $UploadReqEntityCopyWith<$Res> {
  _$UploadReqEntityCopyWithImpl(this._self, this._then);

  final UploadReqEntity _self;
  final $Res Function(UploadReqEntity) _then;

/// Create a copy of UploadReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? disk = null,Object? file = null,Object? uploadUrl = freezed,Object? filePath = freezed,Object? contentType = freezed,Object? overwrite = freezed,Object? publicId = freezed,Object? timestamp = freezed,Object? apiKey = freezed,Object? signature = freezed,}) {
  return _then(UploadReqEntity(
disk: null == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,uploadUrl: freezed == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,overwrite: freezed == overwrite ? _self.overwrite : overwrite // ignore: cast_nullable_to_non_nullable
as dynamic,publicId: freezed == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as dynamic,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as dynamic,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadReqEntity].
extension UploadReqEntityPatterns on UploadReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _UploadReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UploadReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String disk,  File file,  String? uploadUrl,  String? filePath,  String? contentType,  dynamic overwrite,  dynamic publicId,  dynamic timestamp,  String? apiKey,  String? signature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadReqEntity() when $default != null:
return $default(_that.disk,_that.file,_that.uploadUrl,_that.filePath,_that.contentType,_that.overwrite,_that.publicId,_that.timestamp,_that.apiKey,_that.signature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String disk,  File file,  String? uploadUrl,  String? filePath,  String? contentType,  dynamic overwrite,  dynamic publicId,  dynamic timestamp,  String? apiKey,  String? signature)  $default,) {final _that = this;
switch (_that) {
case _UploadReqEntity():
return $default(_that.disk,_that.file,_that.uploadUrl,_that.filePath,_that.contentType,_that.overwrite,_that.publicId,_that.timestamp,_that.apiKey,_that.signature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String disk,  File file,  String? uploadUrl,  String? filePath,  String? contentType,  dynamic overwrite,  dynamic publicId,  dynamic timestamp,  String? apiKey,  String? signature)?  $default,) {final _that = this;
switch (_that) {
case _UploadReqEntity() when $default != null:
return $default(_that.disk,_that.file,_that.uploadUrl,_that.filePath,_that.contentType,_that.overwrite,_that.publicId,_that.timestamp,_that.apiKey,_that.signature);case _:
  return null;

}
}

}

/// @nodoc


class _UploadReqEntity implements UploadReqEntity {
  const _UploadReqEntity({required this.disk, required this.file, this.uploadUrl, this.filePath, this.contentType, this.overwrite, this.publicId, this.timestamp, this.apiKey, this.signature});
  

@override final  String disk;
@override final  File file;
@override final  String? uploadUrl;
@override final  String? filePath;
@override final  String? contentType;
@override final  dynamic overwrite;
@override final  dynamic publicId;
@override final  dynamic timestamp;
@override final  String? apiKey;
@override final  String? signature;

/// Create a copy of UploadReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadReqEntityCopyWith<_UploadReqEntity> get copyWith => __$UploadReqEntityCopyWithImpl<_UploadReqEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadReqEntity&&(identical(other.disk, disk) || other.disk == disk)&&(identical(other.file, file) || other.file == file)&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.overwrite, overwrite)&&const DeepCollectionEquality().equals(other.publicId, publicId)&&const DeepCollectionEquality().equals(other.timestamp, timestamp)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.signature, signature) || other.signature == signature));
}


@override
int get hashCode {
    return Object.hash(runtimeType,disk,file,uploadUrl,filePath,contentType,const DeepCollectionEquality().hash(overwrite),const DeepCollectionEquality().hash(publicId),const DeepCollectionEquality().hash(timestamp),apiKey,signature);
}

@override
String toString() {
    return 'UploadReqEntity(disk: $disk, file: $file, uploadUrl: $uploadUrl, filePath: $filePath, contentType: $contentType, overwrite: $overwrite, publicId: $publicId, timestamp: $timestamp, apiKey: $apiKey, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$UploadReqEntityCopyWith<$Res> implements $UploadReqEntityCopyWith<$Res> {
  factory _$UploadReqEntityCopyWith(_UploadReqEntity value, $Res Function(_UploadReqEntity) _then) = __$UploadReqEntityCopyWithImpl;
@override @useResult
$Res call({
 String disk, File file, String? uploadUrl, String? filePath, String? contentType, dynamic overwrite, dynamic publicId, dynamic timestamp, String? apiKey, String? signature
});




}
/// @nodoc
class __$UploadReqEntityCopyWithImpl<$Res>
    implements _$UploadReqEntityCopyWith<$Res> {
  __$UploadReqEntityCopyWithImpl(this._self, this._then);

  final _UploadReqEntity _self;
  final $Res Function(_UploadReqEntity) _then;

/// Create a copy of UploadReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? disk = null,Object? file = null,Object? uploadUrl = freezed,Object? filePath = freezed,Object? contentType = freezed,Object? overwrite = freezed,Object? publicId = freezed,Object? timestamp = freezed,Object? apiKey = freezed,Object? signature = freezed,}) {
  return _then(_UploadReqEntity(
disk: null == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,uploadUrl: freezed == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
as String?,filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,overwrite: freezed == overwrite ? _self.overwrite : overwrite // ignore: cast_nullable_to_non_nullable
as dynamic,publicId: freezed == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as dynamic,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as dynamic,apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,signature: freezed == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
