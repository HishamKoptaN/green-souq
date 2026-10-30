// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobEntity {

 String get id; String get title; String get description; String get location; String get companyName;
/// Create a copy of JobEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobEntityCopyWith<JobEntity> get copyWith => _$JobEntityCopyWithImpl<JobEntity>(this as JobEntity, _$identity);

  /// Serializes this JobEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as JobEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.companyName, _this.companyName) || other.companyName == _this.companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as JobEntity;
  return Object.hash(runtimeType,_this.id,_this.title,_this.description,_this.location,_this.companyName);
}

@override
String toString() {
  final _this = this as JobEntity;
  return 'JobEntity(id: ${_this.id}, title: ${_this.title}, description: ${_this.description}, location: ${_this.location}, companyName: ${_this.companyName})';
}


}

/// @nodoc
abstract mixin class $JobEntityCopyWith<$Res>  {
  factory $JobEntityCopyWith(JobEntity value, $Res Function(JobEntity) _then) = _$JobEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String location, String companyName
});




}
/// @nodoc
class _$JobEntityCopyWithImpl<$Res>
    implements $JobEntityCopyWith<$Res> {
  _$JobEntityCopyWithImpl(this._self, this._then);

  final JobEntity _self;
  final $Res Function(JobEntity) _then;

/// Create a copy of JobEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? location = null,Object? companyName = null,}) {
  return _then(JobEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JobEntity].
extension JobEntityPatterns on JobEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobEntity value)  $default,){
final _that = this;
switch (_that) {
case _JobEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobEntity value)?  $default,){
final _that = this;
switch (_that) {
case _JobEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String location,  String companyName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.location,_that.companyName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String location,  String companyName)  $default,) {final _that = this;
switch (_that) {
case _JobEntity():
return $default(_that.id,_that.title,_that.description,_that.location,_that.companyName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String location,  String companyName)?  $default,) {final _that = this;
switch (_that) {
case _JobEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.location,_that.companyName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobEntity implements JobEntity {
  const _JobEntity({required this.id, required this.title, required this.description, required this.location, required this.companyName});
  factory _JobEntity.fromJson(Map<String, dynamic> json) => _$JobEntityFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String location;
@override final  String companyName;

/// Create a copy of JobEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobEntityCopyWith<_JobEntity> get copyWith => __$JobEntityCopyWithImpl<_JobEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobEntityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,description,location,companyName);
}

@override
String toString() {
    return 'JobEntity(id: $id, title: $title, description: $description, location: $location, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class _$JobEntityCopyWith<$Res> implements $JobEntityCopyWith<$Res> {
  factory _$JobEntityCopyWith(_JobEntity value, $Res Function(_JobEntity) _then) = __$JobEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String location, String companyName
});




}
/// @nodoc
class __$JobEntityCopyWithImpl<$Res>
    implements _$JobEntityCopyWith<$Res> {
  __$JobEntityCopyWithImpl(this._self, this._then);

  final _JobEntity _self;
  final $Res Function(_JobEntity) _then;

/// Create a copy of JobEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? location = null,Object? companyName = null,}) {
  return _then(_JobEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
