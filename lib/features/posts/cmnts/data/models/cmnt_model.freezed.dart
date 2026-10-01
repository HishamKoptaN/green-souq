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
mixin _$CmntModel {

 int get id; String? get comment; AuthorModel? get author;@JsonKey(name: "is_author") bool? get isAuthor;@JsonKey(name: "created_at") String? get createdAt;
/// Create a copy of CmntModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CmntModelCopyWith<CmntModel> get copyWith => _$CmntModelCopyWithImpl<CmntModel>(this as CmntModel, _$identity);

  /// Serializes this CmntModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CmntModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CmntModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.author, _this.author) || other.author == _this.author)&&(identical(other.isAuthor, _this.isAuthor) || other.isAuthor == _this.isAuthor)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CmntModel;
  return Object.hash(runtimeType,_this.id,_this.comment,_this.author,_this.isAuthor,_this.createdAt);
}

@override
String toString() {
  final _this = this as CmntModel;
  return 'CmntModel(id: ${_this.id}, comment: ${_this.comment}, author: ${_this.author}, isAuthor: ${_this.isAuthor}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $CmntModelCopyWith<$Res>  {
  factory $CmntModelCopyWith(CmntModel value, $Res Function(CmntModel) _then) = _$CmntModelCopyWithImpl;
@useResult
$Res call({
 int id, String? comment, AuthorModel? author,@JsonKey(name: "is_author") bool? isAuthor,@JsonKey(name: "created_at") String? createdAt
});


$AuthorModelCopyWith<$Res>? get author;

}
/// @nodoc
class _$CmntModelCopyWithImpl<$Res>
    implements $CmntModelCopyWith<$Res> {
  _$CmntModelCopyWithImpl(this._self, this._then);

  final CmntModel _self;
  final $Res Function(CmntModel) _then;

/// Create a copy of CmntModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? comment = freezed,Object? author = freezed,Object? isAuthor = freezed,Object? createdAt = freezed,}) {
  return _then(CmntModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorModel?,isAuthor: freezed == isAuthor ? _self.isAuthor : isAuthor // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CmntModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorModelCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorModelCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [CmntModel].
extension CmntModelPatterns on CmntModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CmntModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CmntModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CmntModel value)  $default,){
final _that = this;
switch (_that) {
case _CmntModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CmntModel value)?  $default,){
final _that = this;
switch (_that) {
case _CmntModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? comment,  AuthorModel? author, @JsonKey(name: "is_author")  bool? isAuthor, @JsonKey(name: "created_at")  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CmntModel() when $default != null:
return $default(_that.id,_that.comment,_that.author,_that.isAuthor,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? comment,  AuthorModel? author, @JsonKey(name: "is_author")  bool? isAuthor, @JsonKey(name: "created_at")  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CmntModel():
return $default(_that.id,_that.comment,_that.author,_that.isAuthor,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? comment,  AuthorModel? author, @JsonKey(name: "is_author")  bool? isAuthor, @JsonKey(name: "created_at")  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CmntModel() when $default != null:
return $default(_that.id,_that.comment,_that.author,_that.isAuthor,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CmntModel implements CmntModel {
  const _CmntModel({required this.id, this.comment, this.author, @JsonKey(name: "is_author") this.isAuthor, @JsonKey(name: "created_at") this.createdAt});
  factory _CmntModel.fromJson(Map<String, dynamic> json) => _$CmntModelFromJson(json);

@override final  int id;
@override final  String? comment;
@override final  AuthorModel? author;
@override@JsonKey(name: "is_author") final  bool? isAuthor;
@override@JsonKey(name: "created_at") final  String? createdAt;

/// Create a copy of CmntModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CmntModelCopyWith<_CmntModel> get copyWith => __$CmntModelCopyWithImpl<_CmntModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CmntModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CmntModel&&(identical(other.id, id) || other.id == id)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.author, author) || other.author == author)&&(identical(other.isAuthor, isAuthor) || other.isAuthor == isAuthor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,comment,author,isAuthor,createdAt);
}

@override
String toString() {
    return 'CmntModel(id: $id, comment: $comment, author: $author, isAuthor: $isAuthor, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CmntModelCopyWith<$Res> implements $CmntModelCopyWith<$Res> {
  factory _$CmntModelCopyWith(_CmntModel value, $Res Function(_CmntModel) _then) = __$CmntModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? comment, AuthorModel? author,@JsonKey(name: "is_author") bool? isAuthor,@JsonKey(name: "created_at") String? createdAt
});


@override $AuthorModelCopyWith<$Res>? get author;

}
/// @nodoc
class __$CmntModelCopyWithImpl<$Res>
    implements _$CmntModelCopyWith<$Res> {
  __$CmntModelCopyWithImpl(this._self, this._then);

  final _CmntModel _self;
  final $Res Function(_CmntModel) _then;

/// Create a copy of CmntModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? comment = freezed,Object? author = freezed,Object? isAuthor = freezed,Object? createdAt = freezed,}) {
  return _then(_CmntModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorModel?,isAuthor: freezed == isAuthor ? _self.isAuthor : isAuthor // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CmntModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorModelCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorModelCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}

// dart format on
