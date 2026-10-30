import 'package:flutter/foundation.dart';
import '../../domain/entities/post_entity.dart';

@immutable
abstract class PostsState {
  const PostsState();
}

class PostsInitial extends PostsState {
  const PostsInitial();
}

class PostsLoading extends PostsState {
  const PostsLoading();
}

class PostsLoaded extends PostsState {
  final List<PostEntity> posts;

  const PostsLoaded({required this.posts});
}

class PostsError extends PostsState {
  final String message;

  const PostsError({required this.message});
}
