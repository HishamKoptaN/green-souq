import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_res_entity.freezed.dart';

@freezed
abstract class SignUpResEntity with _$SignUpResEntity {
  const factory SignUpResEntity({required String token}) = _SignUpResEntity;
}
