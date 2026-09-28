// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followers_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowersResModel {

@JsonKey(name: "followers") List<FollowerModel>? get followers;@JsonKey(name: "meta") Meta? get meta;
/// Create a copy of FollowersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowersResModelCopyWith<FollowersResModel> get copyWith => _$FollowersResModelCopyWithImpl<FollowersResModel>(this as FollowersResModel, _$identity);

  /// Serializes this FollowersResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FollowersResModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowersResModel&&const DeepCollectionEquality().equals(other.followers, _this.followers)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FollowersResModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.followers),_this.meta);
}

@override
String toString() {
  final _this = this as FollowersResModel;
  return 'FollowersResModel(followers: ${_this.followers}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $FollowersResModelCopyWith<$Res>  {
  factory $FollowersResModelCopyWith(FollowersResModel value, $Res Function(FollowersResModel) _then) = _$FollowersResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "followers") List<FollowerModel>? followers,@JsonKey(name: "meta") Meta? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$FollowersResModelCopyWithImpl<$Res>
    implements $FollowersResModelCopyWith<$Res> {
  _$FollowersResModelCopyWithImpl(this._self, this._then);

  final FollowersResModel _self;
  final $Res Function(FollowersResModel) _then;

/// Create a copy of FollowersResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? followers = freezed,Object? meta = freezed,}) {
  return _then(FollowersResModel(
followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as List<FollowerModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of FollowersResModel
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


/// Adds pattern-matching-related methods to [FollowersResModel].
extension FollowersResModelPatterns on FollowersResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowersResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowersResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowersResModel value)  $default,){
final _that = this;
switch (_that) {
case _FollowersResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowersResModel value)?  $default,){
final _that = this;
switch (_that) {
case _FollowersResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "followers")  List<FollowerModel>? followers, @JsonKey(name: "meta")  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowersResModel() when $default != null:
return $default(_that.followers,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "followers")  List<FollowerModel>? followers, @JsonKey(name: "meta")  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _FollowersResModel():
return $default(_that.followers,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "followers")  List<FollowerModel>? followers, @JsonKey(name: "meta")  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _FollowersResModel() when $default != null:
return $default(_that.followers,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowersResModel implements FollowersResModel {
  const _FollowersResModel({@JsonKey(name: "followers")  List<FollowerModel>? followers, @JsonKey(name: "meta") this.meta}): _followers = followers;
  factory _FollowersResModel.fromJson(Map<String, dynamic> json) => _$FollowersResModelFromJson(json);

 final  List<FollowerModel>? _followers;
@override@JsonKey(name: "followers") List<FollowerModel>? get followers {
  final value = _followers;
  if (value == null) return null;
  if (_followers is EqualUnmodifiableListView) return _followers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "meta") final  Meta? meta;

/// Create a copy of FollowersResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowersResModelCopyWith<_FollowersResModel> get copyWith => __$FollowersResModelCopyWithImpl<_FollowersResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowersResModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowersResModel&&const DeepCollectionEquality().equals(other.followers, _followers)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_followers),meta);
}

@override
String toString() {
    return 'FollowersResModel(followers: $followers, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$FollowersResModelCopyWith<$Res> implements $FollowersResModelCopyWith<$Res> {
  factory _$FollowersResModelCopyWith(_FollowersResModel value, $Res Function(_FollowersResModel) _then) = __$FollowersResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "followers") List<FollowerModel>? followers,@JsonKey(name: "meta") Meta? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$FollowersResModelCopyWithImpl<$Res>
    implements _$FollowersResModelCopyWith<$Res> {
  __$FollowersResModelCopyWithImpl(this._self, this._then);

  final _FollowersResModel _self;
  final $Res Function(_FollowersResModel) _then;

/// Create a copy of FollowersResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? followers = freezed,Object? meta = freezed,}) {
  return _then(_FollowersResModel(
followers: freezed == followers ? _self._followers : followers // ignore: cast_nullable_to_non_nullable
as List<FollowerModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of FollowersResModel
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
