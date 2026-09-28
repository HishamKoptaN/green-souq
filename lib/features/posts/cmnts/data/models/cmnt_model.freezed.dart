// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cmnt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cmnt {

@JsonKey(name: "id") int? get id;@JsonKey(name: "comment") String? get comment;@JsonKey(name: "image_url") dynamic get imageUrl;@JsonKey(name: "video_url") dynamic get videoUrl;@JsonKey(name: "comment_owner") PostOwner? get commentOwner;@JsonKey(name: "isOwner") bool? get isOwner;@JsonKey(name: "created_at") String? get createdAt;
/// Create a copy of Cmnt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CmntCopyWith<Cmnt> get copyWith => _$CmntCopyWithImpl<Cmnt>(this as Cmnt, _$identity);

  /// Serializes this Cmnt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Cmnt;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cmnt&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&const DeepCollectionEquality().equals(other.imageUrl, _this.imageUrl)&&const DeepCollectionEquality().equals(other.videoUrl, _this.videoUrl)&&(identical(other.commentOwner, _this.commentOwner) || other.commentOwner == _this.commentOwner)&&(identical(other.isOwner, _this.isOwner) || other.isOwner == _this.isOwner)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Cmnt;
  return Object.hash(runtimeType,_this.id,_this.comment,const DeepCollectionEquality().hash(_this.imageUrl),const DeepCollectionEquality().hash(_this.videoUrl),_this.commentOwner,_this.isOwner,_this.createdAt);
}

@override
String toString() {
  final _this = this as Cmnt;
  return 'Cmnt(id: ${_this.id}, comment: ${_this.comment}, imageUrl: ${_this.imageUrl}, videoUrl: ${_this.videoUrl}, commentOwner: ${_this.commentOwner}, isOwner: ${_this.isOwner}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $CmntCopyWith<$Res>  {
  factory $CmntCopyWith(Cmnt value, $Res Function(Cmnt) _then) = _$CmntCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "comment") String? comment,@JsonKey(name: "image_url") dynamic imageUrl,@JsonKey(name: "video_url") dynamic videoUrl,@JsonKey(name: "comment_owner") PostOwner? commentOwner,@JsonKey(name: "isOwner") bool? isOwner,@JsonKey(name: "created_at") String? createdAt
});


$PostOwnerCopyWith<$Res>? get commentOwner;

}
/// @nodoc
class _$CmntCopyWithImpl<$Res>
    implements $CmntCopyWith<$Res> {
  _$CmntCopyWithImpl(this._self, this._then);

  final Cmnt _self;
  final $Res Function(Cmnt) _then;

/// Create a copy of Cmnt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? comment = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? commentOwner = freezed,Object? isOwner = freezed,Object? createdAt = freezed,}) {
  return _then(Cmnt(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as dynamic,commentOwner: freezed == commentOwner ? _self.commentOwner : commentOwner // ignore: cast_nullable_to_non_nullable
as PostOwner?,isOwner: freezed == isOwner ? _self.isOwner : isOwner // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Cmnt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostOwnerCopyWith<$Res>? get commentOwner {
    if (_self.commentOwner == null) {
    return null;
  }

  return $PostOwnerCopyWith<$Res>(_self.commentOwner!, (value) {
    return _then(_self.copyWith(commentOwner: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cmnt].
extension CmntPatterns on Cmnt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cmnt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cmnt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cmnt value)  $default,){
final _that = this;
switch (_that) {
case _Cmnt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cmnt value)?  $default,){
final _that = this;
switch (_that) {
case _Cmnt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "comment")  String? comment, @JsonKey(name: "image_url")  dynamic imageUrl, @JsonKey(name: "video_url")  dynamic videoUrl, @JsonKey(name: "comment_owner")  PostOwner? commentOwner, @JsonKey(name: "isOwner")  bool? isOwner, @JsonKey(name: "created_at")  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cmnt() when $default != null:
return $default(_that.id,_that.comment,_that.imageUrl,_that.videoUrl,_that.commentOwner,_that.isOwner,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "comment")  String? comment, @JsonKey(name: "image_url")  dynamic imageUrl, @JsonKey(name: "video_url")  dynamic videoUrl, @JsonKey(name: "comment_owner")  PostOwner? commentOwner, @JsonKey(name: "isOwner")  bool? isOwner, @JsonKey(name: "created_at")  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Cmnt():
return $default(_that.id,_that.comment,_that.imageUrl,_that.videoUrl,_that.commentOwner,_that.isOwner,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "comment")  String? comment, @JsonKey(name: "image_url")  dynamic imageUrl, @JsonKey(name: "video_url")  dynamic videoUrl, @JsonKey(name: "comment_owner")  PostOwner? commentOwner, @JsonKey(name: "isOwner")  bool? isOwner, @JsonKey(name: "created_at")  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Cmnt() when $default != null:
return $default(_that.id,_that.comment,_that.imageUrl,_that.videoUrl,_that.commentOwner,_that.isOwner,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cmnt implements Cmnt {
  const _Cmnt({@JsonKey(name: "id") this.id, @JsonKey(name: "comment") this.comment, @JsonKey(name: "image_url") this.imageUrl, @JsonKey(name: "video_url") this.videoUrl, @JsonKey(name: "comment_owner") this.commentOwner, @JsonKey(name: "isOwner") this.isOwner, @JsonKey(name: "created_at") this.createdAt});
  factory _Cmnt.fromJson(Map<String, dynamic> json) => _$CmntFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "comment") final  String? comment;
@override@JsonKey(name: "image_url") final  dynamic imageUrl;
@override@JsonKey(name: "video_url") final  dynamic videoUrl;
@override@JsonKey(name: "comment_owner") final  PostOwner? commentOwner;
@override@JsonKey(name: "isOwner") final  bool? isOwner;
@override@JsonKey(name: "created_at") final  String? createdAt;

/// Create a copy of Cmnt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CmntCopyWith<_Cmnt> get copyWith => __$CmntCopyWithImpl<_Cmnt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CmntToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cmnt&&(identical(other.id, id) || other.id == id)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.imageUrl, imageUrl)&&const DeepCollectionEquality().equals(other.videoUrl, videoUrl)&&(identical(other.commentOwner, commentOwner) || other.commentOwner == commentOwner)&&(identical(other.isOwner, isOwner) || other.isOwner == isOwner)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,comment,const DeepCollectionEquality().hash(imageUrl),const DeepCollectionEquality().hash(videoUrl),commentOwner,isOwner,createdAt);
}

@override
String toString() {
    return 'Cmnt(id: $id, comment: $comment, imageUrl: $imageUrl, videoUrl: $videoUrl, commentOwner: $commentOwner, isOwner: $isOwner, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CmntCopyWith<$Res> implements $CmntCopyWith<$Res> {
  factory _$CmntCopyWith(_Cmnt value, $Res Function(_Cmnt) _then) = __$CmntCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "comment") String? comment,@JsonKey(name: "image_url") dynamic imageUrl,@JsonKey(name: "video_url") dynamic videoUrl,@JsonKey(name: "comment_owner") PostOwner? commentOwner,@JsonKey(name: "isOwner") bool? isOwner,@JsonKey(name: "created_at") String? createdAt
});


@override $PostOwnerCopyWith<$Res>? get commentOwner;

}
/// @nodoc
class __$CmntCopyWithImpl<$Res>
    implements _$CmntCopyWith<$Res> {
  __$CmntCopyWithImpl(this._self, this._then);

  final _Cmnt _self;
  final $Res Function(_Cmnt) _then;

/// Create a copy of Cmnt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? comment = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? commentOwner = freezed,Object? isOwner = freezed,Object? createdAt = freezed,}) {
  return _then(_Cmnt(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as dynamic,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as dynamic,commentOwner: freezed == commentOwner ? _self.commentOwner : commentOwner // ignore: cast_nullable_to_non_nullable
as PostOwner?,isOwner: freezed == isOwner ? _self.isOwner : isOwner // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Cmnt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostOwnerCopyWith<$Res>? get commentOwner {
    if (_self.commentOwner == null) {
    return null;
  }

  return $PostOwnerCopyWith<$Res>(_self.commentOwner!, (value) {
    return _then(_self.copyWith(commentOwner: value));
  });
}
}

// dart format on
