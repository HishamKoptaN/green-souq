import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_req_model.freezed.dart';
part 'rating_req_model.g.dart';

@freezed
abstract class RatingReqModel with _$RatingReqModel {
  const factory RatingReqModel({@JsonKey(name: 'rating') required int rating}) =
      _RatingReqModel;

  factory RatingReqModel.fromJson(Map<String, dynamic> json) =>
      _$RatingReqModelFromJson(json);
}
