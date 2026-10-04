import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'create_post_entity.freezed.dart';

@freezed
abstract class CreatePostEntity with _$CreatePostEntity {
  const factory CreatePostEntity({String? content, List<XFile>? mediaFiles}) =
      _CreatePostEntity;
}
