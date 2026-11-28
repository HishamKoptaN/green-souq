import 'package:error_handler/error_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/posts/posts/data/datasources/posts_api.dart';
import 'package:green/features/posts/posts/data/models/posts_res_model.dart';
import 'package:green/features/posts/posts/data/repo_impl/posts_repo_impl.dart';
import 'package:green/features/storage/data/repo/storage_repo.dart';
import 'package:mocktail/mocktail.dart';

class MockPostsApi extends Mock implements PostsApi {}

class MockStorageRepo extends Mock implements StorageRepo {}

void main() {
  late MockPostsApi api;
  late MockStorageRepo storage;

  setUp(() {
    api = MockPostsApi();
    storage = MockStorageRepo();
  });

  test('getPosts pushes mapped posts into the watch stream', () async {
    when(
      () => api.getPosts(
        page: any(named: 'page'),
        type: any(named: 'type'),
        userId: any(named: 'userId'),
      ),
    ).thenAnswer(
      (_) async => PostsResModel(
        posts: const [PostModel(id: 1, type: 'post')],
      ),
    );

    final repo = PostsRepoImpl(postsApi: api, storageRepo: storage);
    final emitted = repo.watch().firstWhere((value) => value.posts.isNotEmpty);

    final result = await repo.getPosts(page: 1);
    final value = await emitted;

    expect(value.posts, hasLength(1));
    expect(value.posts.first.id, 1);
    result.maybeWhen(
      success: (_) {},
      orElse: () {
        fail('expected success');
      },
    );
  });
}
