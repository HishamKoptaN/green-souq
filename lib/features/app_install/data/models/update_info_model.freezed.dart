// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateInfoModel {

@JsonKey(defaultValue: 0) int get latestVersionCode;@JsonKey(defaultValue: '1.0.0') String get latestVersionName;@JsonKey(defaultValue: '') String get apkUrl;@JsonKey(defaultValue: '') String get releaseNotes;
/// Create a copy of UpdateInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInfoModelCopyWith<UpdateInfoModel> get copyWith => _$UpdateInfoModelCopyWithImpl<UpdateInfoModel>(this as UpdateInfoModel, _$identity);

  /// Serializes this UpdateInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateInfoModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInfoModel&&(identical(other.latestVersionCode, _this.latestVersionCode) || other.latestVersionCode == _this.latestVersionCode)&&(identical(other.latestVersionName, _this.latestVersionName) || other.latestVersionName == _this.latestVersionName)&&(identical(other.apkUrl, _this.apkUrl) || other.apkUrl == _this.apkUrl)&&(identical(other.releaseNotes, _this.releaseNotes) || other.releaseNotes == _this.releaseNotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateInfoModel;
  return Object.hash(runtimeType,_this.latestVersionCode,_this.latestVersionName,_this.apkUrl,_this.releaseNotes);
}

@override
String toString() {
  final _this = this as UpdateInfoModel;
  return 'UpdateInfoModel(latestVersionCode: ${_this.latestVersionCode}, latestVersionName: ${_this.latestVersionName}, apkUrl: ${_this.apkUrl}, releaseNotes: ${_this.releaseNotes})';
}


}

/// @nodoc
abstract mixin class $UpdateInfoModelCopyWith<$Res>  {
  factory $UpdateInfoModelCopyWith(UpdateInfoModel value, $Res Function(UpdateInfoModel) _then) = _$UpdateInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(defaultValue: 0) int latestVersionCode,@JsonKey(defaultValue: '1.0.0') String latestVersionName,@JsonKey(defaultValue: '') String apkUrl,@JsonKey(defaultValue: '') String releaseNotes
});




}
/// @nodoc
class _$UpdateInfoModelCopyWithImpl<$Res>
    implements $UpdateInfoModelCopyWith<$Res> {
  _$UpdateInfoModelCopyWithImpl(this._self, this._then);

  final UpdateInfoModel _self;
  final $Res Function(UpdateInfoModel) _then;

/// Create a copy of UpdateInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latestVersionCode = null,Object? latestVersionName = null,Object? apkUrl = null,Object? releaseNotes = null,}) {
  return _then(UpdateInfoModel(
latestVersionCode: null == latestVersionCode ? _self.latestVersionCode : latestVersionCode // ignore: cast_nullable_to_non_nullable
as int,latestVersionName: null == latestVersionName ? _self.latestVersionName : latestVersionName // ignore: cast_nullable_to_non_nullable
as String,apkUrl: null == apkUrl ? _self.apkUrl : apkUrl // ignore: cast_nullable_to_non_nullable
as String,releaseNotes: null == releaseNotes ? _self.releaseNotes : releaseNotes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateInfoModel].
extension UpdateInfoModelPatterns on UpdateInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(defaultValue: 0)  int latestVersionCode, @JsonKey(defaultValue: '1.0.0')  String latestVersionName, @JsonKey(defaultValue: '')  String apkUrl, @JsonKey(defaultValue: '')  String releaseNotes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateInfoModel() when $default != null:
return $default(_that.latestVersionCode,_that.latestVersionName,_that.apkUrl,_that.releaseNotes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(defaultValue: 0)  int latestVersionCode, @JsonKey(defaultValue: '1.0.0')  String latestVersionName, @JsonKey(defaultValue: '')  String apkUrl, @JsonKey(defaultValue: '')  String releaseNotes)  $default,) {final _that = this;
switch (_that) {
case _UpdateInfoModel():
return $default(_that.latestVersionCode,_that.latestVersionName,_that.apkUrl,_that.releaseNotes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(defaultValue: 0)  int latestVersionCode, @JsonKey(defaultValue: '1.0.0')  String latestVersionName, @JsonKey(defaultValue: '')  String apkUrl, @JsonKey(defaultValue: '')  String releaseNotes)?  $default,) {final _that = this;
switch (_that) {
case _UpdateInfoModel() when $default != null:
return $default(_that.latestVersionCode,_that.latestVersionName,_that.apkUrl,_that.releaseNotes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateInfoModel implements UpdateInfoModel {
  const _UpdateInfoModel({@JsonKey(defaultValue: 0) required this.latestVersionCode, @JsonKey(defaultValue: '1.0.0') required this.latestVersionName, @JsonKey(defaultValue: '') required this.apkUrl, @JsonKey(defaultValue: '') required this.releaseNotes});
  factory _UpdateInfoModel.fromJson(Map<String, dynamic> json) => _$UpdateInfoModelFromJson(json);

@override@JsonKey(defaultValue: 0) final  int latestVersionCode;
@override@JsonKey(defaultValue: '1.0.0') final  String latestVersionName;
@override@JsonKey(defaultValue: '') final  String apkUrl;
@override@JsonKey(defaultValue: '') final  String releaseNotes;

/// Create a copy of UpdateInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInfoModelCopyWith<_UpdateInfoModel> get copyWith => __$UpdateInfoModelCopyWithImpl<_UpdateInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInfoModel&&(identical(other.latestVersionCode, latestVersionCode) || other.latestVersionCode == latestVersionCode)&&(identical(other.latestVersionName, latestVersionName) || other.latestVersionName == latestVersionName)&&(identical(other.apkUrl, apkUrl) || other.apkUrl == apkUrl)&&(identical(other.releaseNotes, releaseNotes) || other.releaseNotes == releaseNotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,latestVersionCode,latestVersionName,apkUrl,releaseNotes);
}

@override
String toString() {
    return 'UpdateInfoModel(latestVersionCode: $latestVersionCode, latestVersionName: $latestVersionName, apkUrl: $apkUrl, releaseNotes: $releaseNotes)';
}


}

/// @nodoc
abstract mixin class _$UpdateInfoModelCopyWith<$Res> implements $UpdateInfoModelCopyWith<$Res> {
  factory _$UpdateInfoModelCopyWith(_UpdateInfoModel value, $Res Function(_UpdateInfoModel) _then) = __$UpdateInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(defaultValue: 0) int latestVersionCode,@JsonKey(defaultValue: '1.0.0') String latestVersionName,@JsonKey(defaultValue: '') String apkUrl,@JsonKey(defaultValue: '') String releaseNotes
});




}
/// @nodoc
class __$UpdateInfoModelCopyWithImpl<$Res>
    implements _$UpdateInfoModelCopyWith<$Res> {
  __$UpdateInfoModelCopyWithImpl(this._self, this._then);

  final _UpdateInfoModel _self;
  final $Res Function(_UpdateInfoModel) _then;

/// Create a copy of UpdateInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latestVersionCode = null,Object? latestVersionName = null,Object? apkUrl = null,Object? releaseNotes = null,}) {
  return _then(_UpdateInfoModel(
latestVersionCode: null == latestVersionCode ? _self.latestVersionCode : latestVersionCode // ignore: cast_nullable_to_non_nullable
as int,latestVersionName: null == latestVersionName ? _self.latestVersionName : latestVersionName // ignore: cast_nullable_to_non_nullable
as String,apkUrl: null == apkUrl ? _self.apkUrl : apkUrl // ignore: cast_nullable_to_non_nullable
as String,releaseNotes: null == releaseNotes ? _self.releaseNotes : releaseNotes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
