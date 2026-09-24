// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationResEntity {

 MetaEntity get meta; List<NotificationEntity> get data;
/// Create a copy of NotificationResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationResEntityCopyWith<NotificationResEntity> get copyWith => _$NotificationResEntityCopyWithImpl<NotificationResEntity>(this as NotificationResEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationResEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationResEntity&&(identical(other.meta, _this.meta) || other.meta == _this.meta)&&const DeepCollectionEquality().equals(other.data, _this.data));
}


@override
int get hashCode {
  final _this = this as NotificationResEntity;
  return Object.hash(runtimeType,_this.meta,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as NotificationResEntity;
  return 'NotificationResEntity(meta: ${_this.meta}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $NotificationResEntityCopyWith<$Res>  {
  factory $NotificationResEntityCopyWith(NotificationResEntity value, $Res Function(NotificationResEntity) _then) = _$NotificationResEntityCopyWithImpl;
@useResult
$Res call({
 MetaEntity meta, List<NotificationEntity> data
});


$MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class _$NotificationResEntityCopyWithImpl<$Res>
    implements $NotificationResEntityCopyWith<$Res> {
  _$NotificationResEntityCopyWithImpl(this._self, this._then);

  final NotificationResEntity _self;
  final $Res Function(NotificationResEntity) _then;

/// Create a copy of NotificationResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? data = null,}) {
  return _then(NotificationResEntity(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,
  ));
}
/// Create a copy of NotificationResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationResEntity].
extension NotificationResEntityPatterns on NotificationResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationResEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MetaEntity meta,  List<NotificationEntity> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationResEntity() when $default != null:
return $default(_that.meta,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MetaEntity meta,  List<NotificationEntity> data)  $default,) {final _that = this;
switch (_that) {
case _NotificationResEntity():
return $default(_that.meta,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MetaEntity meta,  List<NotificationEntity> data)?  $default,) {final _that = this;
switch (_that) {
case _NotificationResEntity() when $default != null:
return $default(_that.meta,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationResEntity implements NotificationResEntity {
  const _NotificationResEntity({required this.meta, required  List<NotificationEntity> data}): _data = data;
  

@override final  MetaEntity meta;
 final  List<NotificationEntity> _data;
@override List<NotificationEntity> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of NotificationResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationResEntityCopyWith<_NotificationResEntity> get copyWith => __$NotificationResEntityCopyWithImpl<_NotificationResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationResEntity&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.data, _data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,meta,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'NotificationResEntity(meta: $meta, data: $data)';
}


}

/// @nodoc
abstract mixin class _$NotificationResEntityCopyWith<$Res> implements $NotificationResEntityCopyWith<$Res> {
  factory _$NotificationResEntityCopyWith(_NotificationResEntity value, $Res Function(_NotificationResEntity) _then) = __$NotificationResEntityCopyWithImpl;
@override @useResult
$Res call({
 MetaEntity meta, List<NotificationEntity> data
});


@override $MetaEntityCopyWith<$Res> get meta;

}
/// @nodoc
class __$NotificationResEntityCopyWithImpl<$Res>
    implements _$NotificationResEntityCopyWith<$Res> {
  __$NotificationResEntityCopyWithImpl(this._self, this._then);

  final _NotificationResEntity _self;
  final $Res Function(_NotificationResEntity) _then;

/// Create a copy of NotificationResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? data = null,}) {
  return _then(_NotificationResEntity(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,
  ));
}

/// Create a copy of NotificationResEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaEntityCopyWith<$Res> get meta {
  
  return $MetaEntityCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

/// @nodoc
mixin _$NotificationEntity {

 String get id; String get title; String get body; String get createdAt; String? get imageUrl; bool get read;
/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEntityCopyWith<NotificationEntity> get copyWith => _$NotificationEntityCopyWithImpl<NotificationEntity>(this as NotificationEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.read, _this.read) || other.read == _this.read));
}


@override
int get hashCode {
  final _this = this as NotificationEntity;
  return Object.hash(runtimeType,_this.id,_this.title,_this.body,_this.createdAt,_this.imageUrl,_this.read);
}

@override
String toString() {
  final _this = this as NotificationEntity;
  return 'NotificationEntity(id: ${_this.id}, title: ${_this.title}, body: ${_this.body}, createdAt: ${_this.createdAt}, imageUrl: ${_this.imageUrl}, read: ${_this.read})';
}


}

/// @nodoc
abstract mixin class $NotificationEntityCopyWith<$Res>  {
  factory $NotificationEntityCopyWith(NotificationEntity value, $Res Function(NotificationEntity) _then) = _$NotificationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String body, String createdAt, String? imageUrl, bool read
});




}
/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._self, this._then);

  final NotificationEntity _self;
  final $Res Function(NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? createdAt = null,Object? imageUrl = freezed,Object? read = null,}) {
  return _then(NotificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEntity].
extension NotificationEntityPatterns on NotificationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String body,  String createdAt,  String? imageUrl,  bool read)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.createdAt,_that.imageUrl,_that.read);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String body,  String createdAt,  String? imageUrl,  bool read)  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity():
return $default(_that.id,_that.title,_that.body,_that.createdAt,_that.imageUrl,_that.read);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String body,  String createdAt,  String? imageUrl,  bool read)?  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.createdAt,_that.imageUrl,_that.read);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationEntity implements NotificationEntity {
  const _NotificationEntity({required this.id, required this.title, required this.body, required this.createdAt, this.imageUrl, this.read = false});
  

@override final  String id;
@override final  String title;
@override final  String body;
@override final  String createdAt;
@override final  String? imageUrl;
@override@JsonKey() final  bool read;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationEntityCopyWith<_NotificationEntity> get copyWith => __$NotificationEntityCopyWithImpl<_NotificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.read, read) || other.read == read));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title,body,createdAt,imageUrl,read);
}

@override
String toString() {
    return 'NotificationEntity(id: $id, title: $title, body: $body, createdAt: $createdAt, imageUrl: $imageUrl, read: $read)';
}


}

/// @nodoc
abstract mixin class _$NotificationEntityCopyWith<$Res> implements $NotificationEntityCopyWith<$Res> {
  factory _$NotificationEntityCopyWith(_NotificationEntity value, $Res Function(_NotificationEntity) _then) = __$NotificationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String body, String createdAt, String? imageUrl, bool read
});




}
/// @nodoc
class __$NotificationEntityCopyWithImpl<$Res>
    implements _$NotificationEntityCopyWith<$Res> {
  __$NotificationEntityCopyWithImpl(this._self, this._then);

  final _NotificationEntity _self;
  final $Res Function(_NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? createdAt = null,Object? imageUrl = freezed,Object? read = null,}) {
  return _then(_NotificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,read: null == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
