// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SuggestionModel {

 String get id; String get title; String get description; DateTime get createdAt; String get userId;
/// Create a copy of SuggestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestionModelCopyWith<SuggestionModel> get copyWith => _$SuggestionModelCopyWithImpl<SuggestionModel>(this as SuggestionModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SuggestionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.userId, _this.userId) || other.userId == _this.userId));
}


@override
int get hashCode {
  final _this = this as SuggestionModel;
  return Object.hash(runtimeType,_this.id,_this.title,_this.description,_this.createdAt,_this.userId);
}

@override
String toString() {
  final _this = this as SuggestionModel;
  return 'SuggestionModel(id: ${_this.id}, title: ${_this.title}, description: ${_this.description}, createdAt: ${_this.createdAt}, userId: ${_this.userId})';
}


}

/// @nodoc
abstract mixin class $SuggestionModelCopyWith<$Res>  {
  factory $SuggestionModelCopyWith(SuggestionModel value, $Res Function(SuggestionModel) _then) = _$SuggestionModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, DateTime createdAt, String userId
});




}
/// @nodoc
class _$SuggestionModelCopyWithImpl<$Res>
    implements $SuggestionModelCopyWith<$Res> {
  _$SuggestionModelCopyWithImpl(this._self, this._then);

  final SuggestionModel _self;
  final $Res Function(SuggestionModel) _then;

/// Create a copy of SuggestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? createdAt = null,Object? userId = null,}) {
  return _then(SuggestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestionModel].
extension SuggestionModelPatterns on SuggestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestionModel value)  $default,){
final _that = this;
switch (_that) {
case _SuggestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime createdAt,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestionModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.createdAt,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime createdAt,  String userId)  $default,) {final _that = this;
switch (_that) {
case _SuggestionModel():
return $default(_that.id,_that.title,_that.description,_that.createdAt,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  DateTime createdAt,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _SuggestionModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.createdAt,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _SuggestionModel extends SuggestionModel {
  const _SuggestionModel({required this.id, required this.title, required this.description, required this.createdAt, required this.userId}): super._();
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  DateTime createdAt;
@override final  String userId;

/// Create a copy of SuggestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestionModelCopyWith<_SuggestionModel> get copyWith => __$SuggestionModelCopyWithImpl<_SuggestionModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title,description,createdAt,userId);
}

@override
String toString() {
    return 'SuggestionModel(id: $id, title: $title, description: $description, createdAt: $createdAt, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SuggestionModelCopyWith<$Res> implements $SuggestionModelCopyWith<$Res> {
  factory _$SuggestionModelCopyWith(_SuggestionModel value, $Res Function(_SuggestionModel) _then) = __$SuggestionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, DateTime createdAt, String userId
});




}
/// @nodoc
class __$SuggestionModelCopyWithImpl<$Res>
    implements _$SuggestionModelCopyWith<$Res> {
  __$SuggestionModelCopyWithImpl(this._self, this._then);

  final _SuggestionModel _self;
  final $Res Function(_SuggestionModel) _then;

/// Create a copy of SuggestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? createdAt = null,Object? userId = null,}) {
  return _then(_SuggestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
