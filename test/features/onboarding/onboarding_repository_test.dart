import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:green/features/onboarding/data/repo_impl/onboarding_repository_impl.dart';
import 'package:green/features/onboarding/domain/entities/onboarding_slide_entity.dart';

class FakeLocalDataSource extends OnboardingLocalDataSource {
  bool _completed = false;
  int resetCalls = 0;

  @override
  List<OnboardingSlideEntity> getSlides() {
    return const [
      OnboardingSlideEntity(imagePath: 'slide-1.jpg', title: 'أهلاً'),
    ];
  }

  @override
  Future<bool> isCompleted() async {
    return _completed;
  }

  @override
  Future<void> markCompleted() async {
    _completed = true;
  }

  @override
  Future<void> resetCompleted() async {
    _completed = false;
    resetCalls++;
  }
}

void main() {
  late FakeLocalDataSource dataSource;
  late OnboardingRepositoryImpl repository;

  setUp(() {
    dataSource = FakeLocalDataSource();
    repository = OnboardingRepositoryImpl(dataSource);
  });

  test('exposes the guide slides', () {
    expect(repository.getSlides().single.title, 'أهلاً');
  });

  test('marks completion and reads it back', () async {
    await repository.markCompleted();

    expect(await repository.isCompleted(), isTrue);
  });

  test('resets completion and delegates to the local source', () async {
    await repository.markCompleted();
    await repository.resetCompleted();

    expect(await repository.isCompleted(), isFalse);
    expect(dataSource.resetCalls, 1);
  });
}
