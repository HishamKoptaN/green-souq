// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JobsResEntity {

 List<JobEntity> get jobs; bool get hasNextPage; int get total;
/// Create a copy of JobsResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobsResEntityCopyWith<JobsResEntity> get copyWith => _$JobsResEntityCopyWithImpl<JobsResEntity>(this as JobsResEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as JobsResEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobsResEntity&&const DeepCollectionEquality().equals(other.jobs, _this.jobs)&&(identical(other.hasNextPage, _this.hasNextPage) || other.hasNextPage == _this.hasNextPage)&&(identical(other.total, _this.total) || other.total == _this.total));
}


@override
int get hashCode {
  final _this = this as JobsResEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.jobs),_this.hasNextPage,_this.total);
}

@override
String toString() {
  final _this = this as JobsResEntity;
  return 'JobsResEntity(jobs: ${_this.jobs}, hasNextPage: ${_this.hasNextPage}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $JobsResEntityCopyWith<$Res>  {
  factory $JobsResEntityCopyWith(JobsResEntity value, $Res Function(JobsResEntity) _then) = _$JobsResEntityCopyWithImpl;
@useResult
$Res call({
 List<JobEntity> jobs, bool hasNextPage, int total
});




}
/// @nodoc
class _$JobsResEntityCopyWithImpl<$Res>
    implements $JobsResEntityCopyWith<$Res> {
  _$JobsResEntityCopyWithImpl(this._self, this._then);

  final JobsResEntity _self;
  final $Res Function(JobsResEntity) _then;

/// Create a copy of JobsResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobs = null,Object? hasNextPage = null,Object? total = null,}) {
  return _then(JobsResEntity(
jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<JobEntity>,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [JobsResEntity].
extension JobsResEntityPatterns on JobsResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobsResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobsResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobsResEntity value)  $default,){
final _that = this;
switch (_that) {
case _JobsResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobsResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _JobsResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<JobEntity> jobs,  bool hasNextPage,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobsResEntity() when $default != null:
return $default(_that.jobs,_that.hasNextPage,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<JobEntity> jobs,  bool hasNextPage,  int total)  $default,) {final _that = this;
switch (_that) {
case _JobsResEntity():
return $default(_that.jobs,_that.hasNextPage,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<JobEntity> jobs,  bool hasNextPage,  int total)?  $default,) {final _that = this;
switch (_that) {
case _JobsResEntity() when $default != null:
return $default(_that.jobs,_that.hasNextPage,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _JobsResEntity implements JobsResEntity {
  const _JobsResEntity({ List<JobEntity> jobs = const <JobEntity>[], this.hasNextPage = false, this.total = 0}): _jobs = jobs;
  

 final  List<JobEntity> _jobs;
@override@JsonKey() List<JobEntity> get jobs {
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobs);
}

@override@JsonKey() final  bool hasNextPage;
@override@JsonKey() final  int total;

/// Create a copy of JobsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobsResEntityCopyWith<_JobsResEntity> get copyWith => __$JobsResEntityCopyWithImpl<_JobsResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobsResEntity&&const DeepCollectionEquality().equals(other.jobs, _jobs)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_jobs),hasNextPage,total);
}

@override
String toString() {
    return 'JobsResEntity(jobs: $jobs, hasNextPage: $hasNextPage, total: $total)';
}


}

/// @nodoc
abstract mixin class _$JobsResEntityCopyWith<$Res> implements $JobsResEntityCopyWith<$Res> {
  factory _$JobsResEntityCopyWith(_JobsResEntity value, $Res Function(_JobsResEntity) _then) = __$JobsResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<JobEntity> jobs, bool hasNextPage, int total
});




}
/// @nodoc
class __$JobsResEntityCopyWithImpl<$Res>
    implements _$JobsResEntityCopyWith<$Res> {
  __$JobsResEntityCopyWithImpl(this._self, this._then);

  final _JobsResEntity _self;
  final $Res Function(_JobsResEntity) _then;

/// Create a copy of JobsResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobs = null,Object? hasNextPage = null,Object? total = null,}) {
  return _then(_JobsResEntity(
jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<JobEntity>,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
