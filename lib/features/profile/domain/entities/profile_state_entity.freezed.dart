// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileStateEntity {

 ProfileEntity get profile; EditedProfileEntity? get editedProfile;
/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateEntityCopyWith<ProfileStateEntity> get copyWith => _$ProfileStateEntityCopyWithImpl<ProfileStateEntity>(this as ProfileStateEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProfileStateEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStateEntity&&(identical(other.profile, _this.profile) || other.profile == _this.profile)&&(identical(other.editedProfile, _this.editedProfile) || other.editedProfile == _this.editedProfile));
}


@override
int get hashCode {
  final _this = this as ProfileStateEntity;
  return Object.hash(runtimeType,_this.profile,_this.editedProfile);
}

@override
String toString() {
  final _this = this as ProfileStateEntity;
  return 'ProfileStateEntity(profile: ${_this.profile}, editedProfile: ${_this.editedProfile})';
}


}

/// @nodoc
abstract mixin class $ProfileStateEntityCopyWith<$Res>  {
  factory $ProfileStateEntityCopyWith(ProfileStateEntity value, $Res Function(ProfileStateEntity) _then) = _$ProfileStateEntityCopyWithImpl;
@useResult
$Res call({
 ProfileEntity profile, EditedProfileEntity? editedProfile
});


$ProfileEntityCopyWith<$Res> get profile;$EditedProfileEntityCopyWith<$Res>? get editedProfile;

}
/// @nodoc
class _$ProfileStateEntityCopyWithImpl<$Res>
    implements $ProfileStateEntityCopyWith<$Res> {
  _$ProfileStateEntityCopyWithImpl(this._self, this._then);

  final ProfileStateEntity _self;
  final $Res Function(ProfileStateEntity) _then;

/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? editedProfile = freezed,}) {
  return _then(ProfileStateEntity(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileEntity,editedProfile: freezed == editedProfile ? _self.editedProfile : editedProfile // ignore: cast_nullable_to_non_nullable
as EditedProfileEntity?,
  ));
}
/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<$Res> get profile {
  
  return $ProfileEntityCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditedProfileEntityCopyWith<$Res>? get editedProfile {
    if (_self.editedProfile == null) {
    return null;
  }

  return $EditedProfileEntityCopyWith<$Res>(_self.editedProfile!, (value) {
    return _then(_self.copyWith(editedProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileStateEntity].
extension ProfileStateEntityPatterns on ProfileStateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileStateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileStateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileStateEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProfileStateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileStateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileStateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileEntity profile,  EditedProfileEntity? editedProfile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileStateEntity() when $default != null:
return $default(_that.profile,_that.editedProfile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileEntity profile,  EditedProfileEntity? editedProfile)  $default,) {final _that = this;
switch (_that) {
case _ProfileStateEntity():
return $default(_that.profile,_that.editedProfile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileEntity profile,  EditedProfileEntity? editedProfile)?  $default,) {final _that = this;
switch (_that) {
case _ProfileStateEntity() when $default != null:
return $default(_that.profile,_that.editedProfile);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileStateEntity extends ProfileStateEntity {
  const _ProfileStateEntity({required this.profile, this.editedProfile}): super._();
  

@override final  ProfileEntity profile;
@override final  EditedProfileEntity? editedProfile;

/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateEntityCopyWith<_ProfileStateEntity> get copyWith => __$ProfileStateEntityCopyWithImpl<_ProfileStateEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileStateEntity&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.editedProfile, editedProfile) || other.editedProfile == editedProfile));
}


@override
int get hashCode {
    return Object.hash(runtimeType,profile,editedProfile);
}

@override
String toString() {
    return 'ProfileStateEntity(profile: $profile, editedProfile: $editedProfile)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateEntityCopyWith<$Res> implements $ProfileStateEntityCopyWith<$Res> {
  factory _$ProfileStateEntityCopyWith(_ProfileStateEntity value, $Res Function(_ProfileStateEntity) _then) = __$ProfileStateEntityCopyWithImpl;
@override @useResult
$Res call({
 ProfileEntity profile, EditedProfileEntity? editedProfile
});


@override $ProfileEntityCopyWith<$Res> get profile;@override $EditedProfileEntityCopyWith<$Res>? get editedProfile;

}
/// @nodoc
class __$ProfileStateEntityCopyWithImpl<$Res>
    implements _$ProfileStateEntityCopyWith<$Res> {
  __$ProfileStateEntityCopyWithImpl(this._self, this._then);

  final _ProfileStateEntity _self;
  final $Res Function(_ProfileStateEntity) _then;

/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? editedProfile = freezed,}) {
  return _then(_ProfileStateEntity(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileEntity,editedProfile: freezed == editedProfile ? _self.editedProfile : editedProfile // ignore: cast_nullable_to_non_nullable
as EditedProfileEntity?,
  ));
}

/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<$Res> get profile {
  
  return $ProfileEntityCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileStateEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditedProfileEntityCopyWith<$Res>? get editedProfile {
    if (_self.editedProfile == null) {
    return null;
  }

  return $EditedProfileEntityCopyWith<$Res>(_self.editedProfile!, (value) {
    return _then(_self.copyWith(editedProfile: value));
  });
}
}

// dart format on
