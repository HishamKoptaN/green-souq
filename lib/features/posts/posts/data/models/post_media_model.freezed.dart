// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostMediaModel {

@JsonKey(name: "file_path") String? get filePath;@JsonKey(name: "disk") String? get disk;
/// Create a copy of PostMediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostMediaModelCopyWith<PostMediaModel> get copyWith => _$PostMediaModelCopyWithImpl<PostMediaModel>(this as PostMediaModel, _$identity);

  /// Serializes this PostMediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PostMediaModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostMediaModel&&(identical(other.filePath, _this.filePath) || other.filePath == _this.filePath)&&(identical(other.disk, _this.disk) || other.disk == _this.disk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PostMediaModel;
  return Object.hash(runtimeType,_this.filePath,_this.disk);
}

@override
String toString() {
  final _this = this as PostMediaModel;
  return 'PostMediaModel(filePath: ${_this.filePath}, disk: ${_this.disk})';
}


}

/// @nodoc
abstract mixin class $PostMediaModelCopyWith<$Res>  {
  factory $PostMediaModelCopyWith(PostMediaModel value, $Res Function(PostMediaModel) _then) = _$PostMediaModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "file_path") String? filePath,@JsonKey(name: "disk") String? disk
});




}
/// @nodoc
class _$PostMediaModelCopyWithImpl<$Res>
    implements $PostMediaModelCopyWith<$Res> {
  _$PostMediaModelCopyWithImpl(this._self, this._then);

  final PostMediaModel _self;
  final $Res Function(PostMediaModel) _then;

/// Create a copy of PostMediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filePath = freezed,Object? disk = freezed,}) {
  return _then(PostMediaModel(
filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,disk: freezed == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostMediaModel].
extension PostMediaModelPatterns on PostMediaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostMediaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostMediaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostMediaModel value)  $default,){
final _that = this;
switch (_that) {
case _PostMediaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostMediaModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostMediaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "file_path")  String? filePath, @JsonKey(name: "disk")  String? disk)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostMediaModel() when $default != null:
return $default(_that.filePath,_that.disk);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "file_path")  String? filePath, @JsonKey(name: "disk")  String? disk)  $default,) {final _that = this;
switch (_that) {
case _PostMediaModel():
return $default(_that.filePath,_that.disk);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "file_path")  String? filePath, @JsonKey(name: "disk")  String? disk)?  $default,) {final _that = this;
switch (_that) {
case _PostMediaModel() when $default != null:
return $default(_that.filePath,_that.disk);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostMediaModel implements PostMediaModel {
  const _PostMediaModel({@JsonKey(name: "file_path") this.filePath, @JsonKey(name: "disk") this.disk});
  factory _PostMediaModel.fromJson(Map<String, dynamic> json) => _$PostMediaModelFromJson(json);

@override@JsonKey(name: "file_path") final  String? filePath;
@override@JsonKey(name: "disk") final  String? disk;

/// Create a copy of PostMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostMediaModelCopyWith<_PostMediaModel> get copyWith => __$PostMediaModelCopyWithImpl<_PostMediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostMediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostMediaModel&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.disk, disk) || other.disk == disk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,filePath,disk);
}

@override
String toString() {
    return 'PostMediaModel(filePath: $filePath, disk: $disk)';
}


}

/// @nodoc
abstract mixin class _$PostMediaModelCopyWith<$Res> implements $PostMediaModelCopyWith<$Res> {
  factory _$PostMediaModelCopyWith(_PostMediaModel value, $Res Function(_PostMediaModel) _then) = __$PostMediaModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "file_path") String? filePath,@JsonKey(name: "disk") String? disk
});




}
/// @nodoc
class __$PostMediaModelCopyWithImpl<$Res>
    implements _$PostMediaModelCopyWith<$Res> {
  __$PostMediaModelCopyWithImpl(this._self, this._then);

  final _PostMediaModel _self;
  final $Res Function(_PostMediaModel) _then;

/// Create a copy of PostMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filePath = freezed,Object? disk = freezed,}) {
  return _then(_PostMediaModel(
filePath: freezed == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String?,disk: freezed == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
