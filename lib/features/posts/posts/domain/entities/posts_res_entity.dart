import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/entities/meta_entity.dart';

import '../../data/models/posts_res_model.dart';
part 'posts_res_entity.freezed.dart';

@freezed
abstract class PostsResEntity with _$PostsResEntity {
  const factory PostsResEntity({
    @Default([]) List<Postable> posts,
    @Default(MetaEntity()) MetaEntity meta,
  }) = _PostsResEntity;
}
