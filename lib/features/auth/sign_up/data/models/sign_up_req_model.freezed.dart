// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpReqModel {

 String get name; String get phone;@JsonKey(name: 'id_token') String get idToken;@JsonKey(name: 'user_type') String get userType; String? get address; double? get latitude; double? get longitude;@JsonKey(name: 'shop_name') String? get shopName;@JsonKey(name: 'commercial_registration') String? get commercialRegistration;@JsonKey(name: 'specialization') String? get specialization;@JsonKey(name: 'shop_activities') List<String>? get shopActivities;
/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpReqModelCopyWith<SignUpReqModel> get copyWith => _$SignUpReqModelCopyWithImpl<SignUpReqModel>(this as SignUpReqModel, _$identity);

  /// Serializes this SignUpReqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SignUpReqModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpReqModel&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.idToken, _this.idToken) || other.idToken == _this.idToken)&&(identical(other.userType, _this.userType) || other.userType == _this.userType)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.latitude, _this.latitude) || other.latitude == _this.latitude)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.shopName, _this.shopName) || other.shopName == _this.shopName)&&(identical(other.commercialRegistration, _this.commercialRegistration) || other.commercialRegistration == _this.commercialRegistration)&&(identical(other.specialization, _this.specialization) || other.specialization == _this.specialization)&&const DeepCollectionEquality().equals(other.shopActivities, _this.shopActivities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SignUpReqModel;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.idToken,_this.userType,_this.address,_this.latitude,_this.longitude,_this.shopName,_this.commercialRegistration,_this.specialization,const DeepCollectionEquality().hash(_this.shopActivities));
}

@override
String toString() {
  final _this = this as SignUpReqModel;
  return 'SignUpReqModel(name: ${_this.name}, phone: ${_this.phone}, idToken: ${_this.idToken}, userType: ${_this.userType}, address: ${_this.address}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, shopName: ${_this.shopName}, commercialRegistration: ${_this.commercialRegistration}, specialization: ${_this.specialization}, shopActivities: ${_this.shopActivities})';
}


}

/// @nodoc
abstract mixin class $SignUpReqModelCopyWith<$Res>  {
  factory $SignUpReqModelCopyWith(SignUpReqModel value, $Res Function(SignUpReqModel) _then) = _$SignUpReqModelCopyWithImpl;
@useResult
$Res call({
 String name, String phone,@JsonKey(name: 'id_token') String idToken,@JsonKey(name: 'user_type') String userType, String? address, double? latitude, double? longitude,@JsonKey(name: 'shop_name') String? shopName,@JsonKey(name: 'commercial_registration') String? commercialRegistration,@JsonKey(name: 'specialization') String? specialization,@JsonKey(name: 'shop_activities') List<String>? shopActivities
});




}
/// @nodoc
class _$SignUpReqModelCopyWithImpl<$Res>
    implements $SignUpReqModelCopyWith<$Res> {
  _$SignUpReqModelCopyWithImpl(this._self, this._then);

  final SignUpReqModel _self;
  final $Res Function(SignUpReqModel) _then;

/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = null,Object? idToken = null,Object? userType = null,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? shopName = freezed,Object? commercialRegistration = freezed,Object? specialization = freezed,Object? shopActivities = freezed,}) {
  return _then(SignUpReqModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,shopName: freezed == shopName ? _self.shopName : shopName // ignore: cast_nullable_to_non_nullable
as String?,commercialRegistration: freezed == commercialRegistration ? _self.commercialRegistration : commercialRegistration // ignore: cast_nullable_to_non_nullable
as String?,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,shopActivities: freezed == shopActivities ? _self.shopActivities : shopActivities // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpReqModel].
extension SignUpReqModelPatterns on SignUpReqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpReqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpReqModel value)  $default,){
final _that = this;
switch (_that) {
case _SignUpReqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpReqModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phone, @JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'user_type')  String userType,  String? address,  double? latitude,  double? longitude, @JsonKey(name: 'shop_name')  String? shopName, @JsonKey(name: 'commercial_registration')  String? commercialRegistration, @JsonKey(name: 'specialization')  String? specialization, @JsonKey(name: 'shop_activities')  List<String>? shopActivities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
return $default(_that.name,_that.phone,_that.idToken,_that.userType,_that.address,_that.latitude,_that.longitude,_that.shopName,_that.commercialRegistration,_that.specialization,_that.shopActivities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phone, @JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'user_type')  String userType,  String? address,  double? latitude,  double? longitude, @JsonKey(name: 'shop_name')  String? shopName, @JsonKey(name: 'commercial_registration')  String? commercialRegistration, @JsonKey(name: 'specialization')  String? specialization, @JsonKey(name: 'shop_activities')  List<String>? shopActivities)  $default,) {final _that = this;
switch (_that) {
case _SignUpReqModel():
return $default(_that.name,_that.phone,_that.idToken,_that.userType,_that.address,_that.latitude,_that.longitude,_that.shopName,_that.commercialRegistration,_that.specialization,_that.shopActivities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phone, @JsonKey(name: 'id_token')  String idToken, @JsonKey(name: 'user_type')  String userType,  String? address,  double? latitude,  double? longitude, @JsonKey(name: 'shop_name')  String? shopName, @JsonKey(name: 'commercial_registration')  String? commercialRegistration, @JsonKey(name: 'specialization')  String? specialization, @JsonKey(name: 'shop_activities')  List<String>? shopActivities)?  $default,) {final _that = this;
switch (_that) {
case _SignUpReqModel() when $default != null:
return $default(_that.name,_that.phone,_that.idToken,_that.userType,_that.address,_that.latitude,_that.longitude,_that.shopName,_that.commercialRegistration,_that.specialization,_that.shopActivities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpReqModel implements SignUpReqModel {
  const _SignUpReqModel({required this.name, required this.phone, @JsonKey(name: 'id_token') required this.idToken, @JsonKey(name: 'user_type') required this.userType, this.address, this.latitude, this.longitude, @JsonKey(name: 'shop_name') this.shopName, @JsonKey(name: 'commercial_registration') this.commercialRegistration, @JsonKey(name: 'specialization') this.specialization, @JsonKey(name: 'shop_activities')  List<String>? shopActivities}): _shopActivities = shopActivities;
  factory _SignUpReqModel.fromJson(Map<String, dynamic> json) => _$SignUpReqModelFromJson(json);

@override final  String name;
@override final  String phone;
@override@JsonKey(name: 'id_token') final  String idToken;
@override@JsonKey(name: 'user_type') final  String userType;
@override final  String? address;
@override final  double? latitude;
@override final  double? longitude;
@override@JsonKey(name: 'shop_name') final  String? shopName;
@override@JsonKey(name: 'commercial_registration') final  String? commercialRegistration;
@override@JsonKey(name: 'specialization') final  String? specialization;
 final  List<String>? _shopActivities;
@override@JsonKey(name: 'shop_activities') List<String>? get shopActivities {
  final value = _shopActivities;
  if (value == null) return null;
  if (_shopActivities is EqualUnmodifiableListView) return _shopActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpReqModelCopyWith<_SignUpReqModel> get copyWith => __$SignUpReqModelCopyWithImpl<_SignUpReqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpReqModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpReqModel&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.shopName, shopName) || other.shopName == shopName)&&(identical(other.commercialRegistration, commercialRegistration) || other.commercialRegistration == commercialRegistration)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&const DeepCollectionEquality().equals(other.shopActivities, _shopActivities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,idToken,userType,address,latitude,longitude,shopName,commercialRegistration,specialization,const DeepCollectionEquality().hash(_shopActivities));
}

@override
String toString() {
    return 'SignUpReqModel(name: $name, phone: $phone, idToken: $idToken, userType: $userType, address: $address, latitude: $latitude, longitude: $longitude, shopName: $shopName, commercialRegistration: $commercialRegistration, specialization: $specialization, shopActivities: $shopActivities)';
}


}

/// @nodoc
abstract mixin class _$SignUpReqModelCopyWith<$Res> implements $SignUpReqModelCopyWith<$Res> {
  factory _$SignUpReqModelCopyWith(_SignUpReqModel value, $Res Function(_SignUpReqModel) _then) = __$SignUpReqModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String phone,@JsonKey(name: 'id_token') String idToken,@JsonKey(name: 'user_type') String userType, String? address, double? latitude, double? longitude,@JsonKey(name: 'shop_name') String? shopName,@JsonKey(name: 'commercial_registration') String? commercialRegistration,@JsonKey(name: 'specialization') String? specialization,@JsonKey(name: 'shop_activities') List<String>? shopActivities
});




}
/// @nodoc
class __$SignUpReqModelCopyWithImpl<$Res>
    implements _$SignUpReqModelCopyWith<$Res> {
  __$SignUpReqModelCopyWithImpl(this._self, this._then);

  final _SignUpReqModel _self;
  final $Res Function(_SignUpReqModel) _then;

/// Create a copy of SignUpReqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? idToken = null,Object? userType = null,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? shopName = freezed,Object? commercialRegistration = freezed,Object? specialization = freezed,Object? shopActivities = freezed,}) {
  return _then(_SignUpReqModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,shopName: freezed == shopName ? _self.shopName : shopName // ignore: cast_nullable_to_non_nullable
as String?,commercialRegistration: freezed == commercialRegistration ? _self.commercialRegistration : commercialRegistration // ignore: cast_nullable_to_non_nullable
as String?,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,shopActivities: freezed == shopActivities ? _self._shopActivities : shopActivities // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
