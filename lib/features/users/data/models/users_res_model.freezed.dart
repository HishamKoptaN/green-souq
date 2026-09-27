// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersResModel {

@JsonKey(name: 'data') List<UserModel>? get users; MetaModel? get meta;
/// Create a copy of UsersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersResModelCopyWith<UsersResModel> get copyWith => _$UsersResModelCopyWithImpl<UsersResModel>(this as UsersResModel, _$identity);

  /// Serializes this UsersResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UsersResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersResModel&&const DeepCollectionEquality().equals(other.users, _this.users)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UsersResModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.users),_this.meta);
}

@override
String toString() {
  final _this = this as UsersResModel;
  return 'UsersResModel(users: ${_this.users}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $UsersResModelCopyWith<$Res>  {
  factory $UsersResModelCopyWith(UsersResModel value, $Res Function(UsersResModel) _then) = _$UsersResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<UserModel>? users, MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$UsersResModelCopyWithImpl<$Res>
    implements $UsersResModelCopyWith<$Res> {
  _$UsersResModelCopyWithImpl(this._self, this._then);

  final UsersResModel _self;
  final $Res Function(UsersResModel) _then;

/// Create a copy of UsersResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = freezed,Object? meta = freezed,}) {
  return _then(UsersResModel(
users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of UsersResModel
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


/// Adds pattern-matching-related methods to [UsersResModel].
extension UsersResModelPatterns on UsersResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsersResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsersResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsersResModel value)  $default,){
final _that = this;
switch (_that) {
case _UsersResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsersResModel value)?  $default,){
final _that = this;
switch (_that) {
case _UsersResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<UserModel>? users,  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsersResModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<UserModel>? users,  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _UsersResModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<UserModel>? users,  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _UsersResModel() when $default != null:
return $default(_that.users,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsersResModel implements UsersResModel {
  const _UsersResModel({@JsonKey(name: 'data')  List<UserModel>? users, this.meta}): _users = users;
  factory _UsersResModel.fromJson(Map<String, dynamic> json) => _$UsersResModelFromJson(json);

 final  List<UserModel>? _users;
@override@JsonKey(name: 'data') List<UserModel>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaModel? meta;

/// Create a copy of UsersResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersResModelCopyWith<_UsersResModel> get copyWith => __$UsersResModelCopyWithImpl<_UsersResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsersResModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersResModel&&const DeepCollectionEquality().equals(other.users, _users)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),meta);
}

@override
String toString() {
    return 'UsersResModel(users: $users, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$UsersResModelCopyWith<$Res> implements $UsersResModelCopyWith<$Res> {
  factory _$UsersResModelCopyWith(_UsersResModel value, $Res Function(_UsersResModel) _then) = __$UsersResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<UserModel>? users, MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$UsersResModelCopyWithImpl<$Res>
    implements _$UsersResModelCopyWith<$Res> {
  __$UsersResModelCopyWithImpl(this._self, this._then);

  final _UsersResModel _self;
  final $Res Function(_UsersResModel) _then;

/// Create a copy of UsersResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = freezed,Object? meta = freezed,}) {
  return _then(_UsersResModel(
users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of UsersResModel
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
