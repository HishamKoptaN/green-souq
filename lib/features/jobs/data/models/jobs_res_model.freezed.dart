// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobsResModel {

 List<JobModel> get data; MetaModel? get meta;
/// Create a copy of JobsResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobsResModelCopyWith<JobsResModel> get copyWith => _$JobsResModelCopyWithImpl<JobsResModel>(this as JobsResModel, _$identity);

  /// Serializes this JobsResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as JobsResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobsResModel&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as JobsResModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.meta);
}

@override
String toString() {
  final _this = this as JobsResModel;
  return 'JobsResModel(data: ${_this.data}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $JobsResModelCopyWith<$Res>  {
  factory $JobsResModelCopyWith(JobsResModel value, $Res Function(JobsResModel) _then) = _$JobsResModelCopyWithImpl;
@useResult
$Res call({
 List<JobModel> data, MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$JobsResModelCopyWithImpl<$Res>
    implements $JobsResModelCopyWith<$Res> {
  _$JobsResModelCopyWithImpl(this._self, this._then);

  final JobsResModel _self;
  final $Res Function(JobsResModel) _then;

/// Create a copy of JobsResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = freezed,}) {
  return _then(JobsResModel(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<JobModel>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of JobsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [JobsResModel].
extension JobsResModelPatterns on JobsResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobsResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobsResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobsResModel value)  $default,){
final _that = this;
switch (_that) {
case _JobsResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobsResModel value)?  $default,){
final _that = this;
switch (_that) {
case _JobsResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<JobModel> data,  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobsResModel() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<JobModel> data,  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _JobsResModel():
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<JobModel> data,  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _JobsResModel() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobsResModel implements JobsResModel {
  const _JobsResModel({ List<JobModel> data = const <JobModel>[], this.meta}): _data = data;
  factory _JobsResModel.fromJson(Map<String, dynamic> json) => _$JobsResModelFromJson(json);

 final  List<JobModel> _data;
@override@JsonKey() List<JobModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  MetaModel? meta;

/// Create a copy of JobsResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobsResModelCopyWith<_JobsResModel> get copyWith => __$JobsResModelCopyWithImpl<_JobsResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobsResModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobsResModel&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);
}

@override
String toString() {
    return 'JobsResModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$JobsResModelCopyWith<$Res> implements $JobsResModelCopyWith<$Res> {
  factory _$JobsResModelCopyWith(_JobsResModel value, $Res Function(_JobsResModel) _then) = __$JobsResModelCopyWithImpl;
@override @useResult
$Res call({
 List<JobModel> data, MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$JobsResModelCopyWithImpl<$Res>
    implements _$JobsResModelCopyWith<$Res> {
  __$JobsResModelCopyWithImpl(this._self, this._then);

  final _JobsResModel _self;
  final $Res Function(_JobsResModel) _then;

/// Create a copy of JobsResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = freezed,}) {
  return _then(_JobsResModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<JobModel>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of JobsResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
