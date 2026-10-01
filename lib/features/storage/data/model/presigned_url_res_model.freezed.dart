// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presigned_url_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PresignedUrlResModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'provider') String get provider;@JsonKey(name: 'upload_url') String? get uploadUrl;@JsonKey(name: 'file_path') String? get filePath;@JsonKey(name: 'content_type') String? get contentType;@JsonKey(name: 'overwrite') dynamic get overwrite;@JsonKey(name: 'public_id') dynamic get publicId;@JsonKey(name: 'timestamp') dynamic get timestamp;@JsonKey(name: 'api_key') String? get apiKey;@JsonKey(name: 'signature') String? get signature;
/// Create a copy of PresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresignedUrlResModelCopyWith<PresignedUrlResModel> get copyWith => _$PresignedUrlResModelCopyWithImpl<PresignedUrlResModel>(this as PresignedUrlResModel, _$identity);

  /// Serializes this PresignedUrlResModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  final _this = this as PresignedUrlResModel;
  properties
    ..add(DiagnosticsProperty('type', 'PresignedUrlResModel'))
    ..add(DiagnosticsProperty('provider', _this.provider))..add(DiagnosticsProperty('uploadUrl', _this.uploadUrl))..add(DiagnosticsProperty('filePath', _this.filePath))..add(DiagnosticsProperty('contentType', _this.contentType))..add(DiagnosticsProperty('overwrite', _this.overwrite))..add(DiagnosticsProperty('publicId', _this.publicId))..add(DiagnosticsProperty('timestamp', _this.timestamp))..add(DiagnosticsProperty('apiKey', _this.apiKey))..add(DiagnosticsProperty('signature', _this.signature));
}

@override
bool operator ==(Object other) {
  final _this = this as PresignedUrlResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresignedUrlResModel&&(identical(other.provider, _this.provider) || other.provider == _this.provider)&&(identical(other.uploadUrl, _this.uploadUrl) || other.uploadUrl == _this.uploadUrl)&&(identical(other.filePath, _this.filePath) || other.filePath == _this.filePath)&&(identical(other.contentType, _this.contentType) || other.contentType == _this.contentType)&&const DeepCollectionEquality().equals(other.overwrite, _this.overwrite)&&const DeepCollectionEquality().equals(other.publicId, _this.publicId)&&const DeepCollectionEquality().equals(other.timestamp, _this.timestamp)&&(identical(other.apiKey, _this.apiKey) || other.apiKey == _this.apiKey)&&(identical(other.signature, _this.signature) || other.signature == _this.signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PresignedUrlResModel;
  return Object.hash(runtimeType,_this.provider,_this.uploadUrl,_this.filePath,_this.contentType,const DeepCollectionEquality().hash(_this.overwrite),const DeepCollectionEquality().hash(_this.publicId),const DeepCollectionEquality().hash(_this.timestamp),_this.apiKey,_this.signature);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  final _this = this as PresignedUrlResModel;
  return 'PresignedUrlResModel(provider: ${_this.provider}, uploadUrl: ${_this.uploadUrl}, filePath: ${_this.filePath}, contentType: ${_this.contentType}, overwrite: ${_this.overwrite}, publicId: ${_this.publicId}, timestamp: ${_this.timestamp}, apiKey: ${_this.apiKey}, signature: ${_this.signature})';
}


}

/// @nodoc
abstract mixin class $PresignedUrlResModelCopyWith<$Res>  {
  factory $PresignedUrlResModelCopyWith(PresignedUrlResModel value, $Res Function(PresignedUrlResModel) _then) = _$PresignedUrlResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'provider') String provider,@JsonKey(name: 'upload_url') String? uploadUrl,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'content_type') String? contentType,@JsonKey(name: 'overwrite') dynamic overwrite,@JsonKey(name: 'public_id') dynamic publicId,@JsonKey(name: 'timestamp') dynamic timestamp,@JsonKey(name: 'api_key') String? apiKey,@JsonKey(name: 'signature') String? signature
});




}
/// @nodoc
class _$PresignedUrlResModelCopyWithImpl<$Res>
    implements $PresignedUrlResModelCopyWith<$Res> {
  _$PresignedUrlResModelCopyWithImpl(this._self, this._then);

  final PresignedUrlResModel _self;
  final $Res Function(PresignedUrlResModel) _then;

/// Create a copy of PresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? uploadUrl = freezed,Object? filePath = freezed,Object? contentType = freezed,Object? overwrite = freezed,Object? publicId = freezed,Object? timestamp = freezed,Object? apiKey = freezed,Object? signature = freezed,}) {
  return _then(PresignedUrlResModel(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: freezed == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [PresignedUrlResModel].
extension PresignedUrlResModelPatterns on PresignedUrlResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresignedUrlResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresignedUrlResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresignedUrlResModel value)  $default,){
final _that = this;
switch (_that) {
case _PresignedUrlResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresignedUrlResModel value)?  $default,){
final _that = this;
switch (_that) {
case _PresignedUrlResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'provider')  String provider, @JsonKey(name: 'upload_url')  String? uploadUrl, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'content_type')  String? contentType, @JsonKey(name: 'overwrite')  dynamic overwrite, @JsonKey(name: 'public_id')  dynamic publicId, @JsonKey(name: 'timestamp')  dynamic timestamp, @JsonKey(name: 'api_key')  String? apiKey, @JsonKey(name: 'signature')  String? signature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresignedUrlResModel() when $default != null:
return $default(_that.provider,_that.uploadUrl,_that.filePath,_that.contentType,_that.overwrite,_that.publicId,_that.timestamp,_that.apiKey,_that.signature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'provider')  String provider, @JsonKey(name: 'upload_url')  String? uploadUrl, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'content_type')  String? contentType, @JsonKey(name: 'overwrite')  dynamic overwrite, @JsonKey(name: 'public_id')  dynamic publicId, @JsonKey(name: 'timestamp')  dynamic timestamp, @JsonKey(name: 'api_key')  String? apiKey, @JsonKey(name: 'signature')  String? signature)  $default,) {final _that = this;
switch (_that) {
case _PresignedUrlResModel():
return $default(_that.provider,_that.uploadUrl,_that.filePath,_that.contentType,_that.overwrite,_that.publicId,_that.timestamp,_that.apiKey,_that.signature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'provider')  String provider, @JsonKey(name: 'upload_url')  String? uploadUrl, @JsonKey(name: 'file_path')  String? filePath, @JsonKey(name: 'content_type')  String? contentType, @JsonKey(name: 'overwrite')  dynamic overwrite, @JsonKey(name: 'public_id')  dynamic publicId, @JsonKey(name: 'timestamp')  dynamic timestamp, @JsonKey(name: 'api_key')  String? apiKey, @JsonKey(name: 'signature')  String? signature)?  $default,) {final _that = this;
switch (_that) {
case _PresignedUrlResModel() when $default != null:
return $default(_that.provider,_that.uploadUrl,_that.filePath,_that.contentType,_that.overwrite,_that.publicId,_that.timestamp,_that.apiKey,_that.signature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresignedUrlResModel with DiagnosticableTreeMixin implements PresignedUrlResModel {
  const _PresignedUrlResModel({@JsonKey(name: 'provider') required this.provider, @JsonKey(name: 'upload_url') this.uploadUrl, @JsonKey(name: 'file_path') this.filePath, @JsonKey(name: 'content_type') this.contentType, @JsonKey(name: 'overwrite') this.overwrite, @JsonKey(name: 'public_id') this.publicId, @JsonKey(name: 'timestamp') this.timestamp, @JsonKey(name: 'api_key') this.apiKey, @JsonKey(name: 'signature') this.signature});
  factory _PresignedUrlResModel.fromJson(Map<String, dynamic> json) => _$PresignedUrlResModelFromJson(json);

@override@JsonKey(name: 'provider') final  String provider;
@override@JsonKey(name: 'upload_url') final  String? uploadUrl;
@override@JsonKey(name: 'file_path') final  String? filePath;
@override@JsonKey(name: 'content_type') final  String? contentType;
@override@JsonKey(name: 'overwrite') final  dynamic overwrite;
@override@JsonKey(name: 'public_id') final  dynamic publicId;
@override@JsonKey(name: 'timestamp') final  dynamic timestamp;
@override@JsonKey(name: 'api_key') final  String? apiKey;
@override@JsonKey(name: 'signature') final  String? signature;

/// Create a copy of PresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresignedUrlResModelCopyWith<_PresignedUrlResModel> get copyWith => __$PresignedUrlResModelCopyWithImpl<_PresignedUrlResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresignedUrlResModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
    ..add(DiagnosticsProperty('type', 'PresignedUrlResModel'))
    ..add(DiagnosticsProperty('provider', provider))..add(DiagnosticsProperty('uploadUrl', uploadUrl))..add(DiagnosticsProperty('filePath', filePath))..add(DiagnosticsProperty('contentType', contentType))..add(DiagnosticsProperty('overwrite', overwrite))..add(DiagnosticsProperty('publicId', publicId))..add(DiagnosticsProperty('timestamp', timestamp))..add(DiagnosticsProperty('apiKey', apiKey))..add(DiagnosticsProperty('signature', signature));
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresignedUrlResModel&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.uploadUrl, uploadUrl) || other.uploadUrl == uploadUrl)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.overwrite, overwrite)&&const DeepCollectionEquality().equals(other.publicId, publicId)&&const DeepCollectionEquality().equals(other.timestamp, timestamp)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.signature, signature) || other.signature == signature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,provider,uploadUrl,filePath,contentType,const DeepCollectionEquality().hash(overwrite),const DeepCollectionEquality().hash(publicId),const DeepCollectionEquality().hash(timestamp),apiKey,signature);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'PresignedUrlResModel(provider: $provider, uploadUrl: $uploadUrl, filePath: $filePath, contentType: $contentType, overwrite: $overwrite, publicId: $publicId, timestamp: $timestamp, apiKey: $apiKey, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$PresignedUrlResModelCopyWith<$Res> implements $PresignedUrlResModelCopyWith<$Res> {
  factory _$PresignedUrlResModelCopyWith(_PresignedUrlResModel value, $Res Function(_PresignedUrlResModel) _then) = __$PresignedUrlResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'provider') String provider,@JsonKey(name: 'upload_url') String? uploadUrl,@JsonKey(name: 'file_path') String? filePath,@JsonKey(name: 'content_type') String? contentType,@JsonKey(name: 'overwrite') dynamic overwrite,@JsonKey(name: 'public_id') dynamic publicId,@JsonKey(name: 'timestamp') dynamic timestamp,@JsonKey(name: 'api_key') String? apiKey,@JsonKey(name: 'signature') String? signature
});




}
/// @nodoc
class __$PresignedUrlResModelCopyWithImpl<$Res>
    implements _$PresignedUrlResModelCopyWith<$Res> {
  __$PresignedUrlResModelCopyWithImpl(this._self, this._then);

  final _PresignedUrlResModel _self;
  final $Res Function(_PresignedUrlResModel) _then;

/// Create a copy of PresignedUrlResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? uploadUrl = freezed,Object? filePath = freezed,Object? contentType = freezed,Object? overwrite = freezed,Object? publicId = freezed,Object? timestamp = freezed,Object? apiKey = freezed,Object? signature = freezed,}) {
  return _then(_PresignedUrlResModel(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,uploadUrl: freezed == uploadUrl ? _self.uploadUrl : uploadUrl // ignore: cast_nullable_to_non_nullable
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
