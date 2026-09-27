// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersResEntity {

 List<UserEntity> get users; MetaEntity get meta;
/// Create a copy of UsersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersResEntityCopyWith<UsersResEntity> get copyWith => _$UsersResEntityCopyWithImpl<UsersResEntity>(this as UsersResEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UsersResEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersResEntity&&const DeepCollectionEquality().equals(other.users, _this.users)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}


@override
int get hashCode {
  final _this = this as UsersResEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.users),_this.meta);
}

@override
String toString() {
  final _this = this as UsersResEntity;
  return 'UsersResEntity(users: ${_this.users}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $UsersResEntityCopyWith<$Res>  {
  factory $UsersResEntityCopyWith(UsersResEntity value, $Res Function(UsersResEntity) _then) = _$UsersResEntityCopyWithImpl;
@useResult
$Res call({
 List<UserEntity> users, MetaEntity meta
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$UsersResEntityCopyWithImpl<$Res>
    implements $UsersResEntityCopyWith<$Res> {
  _$UsersResEntityCopyWithImpl(this._self, this._then);

  final UsersResEntity _self;
  final $Res Function(UsersResEntity) _then;

/// Create a copy of UsersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? meta = null,}) {
  return _then(UsersResEntity(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}
/// Create a copy of UsersResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [UsersResEntity].
extension UsersResEntityPatterns on UsersResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsersResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsersResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsersResEntity value)  $default,){
final _that = this;
switch (_that) {
case _UsersResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsersResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UsersResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserEntity> users,  MetaEntity meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsersResEntity() when $default != null:
return $default(_that.users,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserEntity> users,  MetaEntity meta)  $default,) {final _that = this;
switch (_that) {
case _UsersResEntity():
return $default(_that.users,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserEntity> users,  MetaEntity meta)?  $default,) {final _that = this;
switch (_that) {
case _UsersResEntity() when $default != null:
return $default(_that.users,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _UsersResEntity implements UsersResEntity {
  const _UsersResEntity({ List<UserEntity> users = const [], this.meta = const MetaEntity()}): _users = users;
  

 final  List<UserEntity> _users;
@override@JsonKey() List<UserEntity> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override@JsonKey() final  MetaEntity meta;

/// Create a copy of UsersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersResEntityCopyWith<_UsersResEntity> get copyWith => __$UsersResEntityCopyWithImpl<_UsersResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersResEntity&&const DeepCollectionEquality().equals(other.users, _users)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),meta);
}

@override
String toString() {
    return 'UsersResEntity(users: $users, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$UsersResEntityCopyWith<$Res> implements $UsersResEntityCopyWith<$Res> {
  factory _$UsersResEntityCopyWith(_UsersResEntity value, $Res Function(_UsersResEntity) _then) = __$UsersResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<UserEntity> users, MetaEntity meta
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$UsersResEntityCopyWithImpl<$Res>
    implements _$UsersResEntityCopyWith<$Res> {
  __$UsersResEntityCopyWithImpl(this._self, this._then);

  final _UsersResEntity _self;
  final $Res Function(_UsersResEntity) _then;

/// Create a copy of UsersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? meta = null,}) {
  return _then(_UsersResEntity(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,
  ));
}

/// Create a copy of UsersResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
