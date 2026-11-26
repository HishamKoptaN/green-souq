import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/onboarding/domain/entities/onboarding_slide_entity.dart';
import 'package:green/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:green/features/onboarding/present/bloc/onboarding_bloc.dart';

class FakeOnboardingRepository implements OnboardingRepository {
  bool completed = false;

  @override
  List<OnboardingSlideEntity> getSlides() {
    return const [
      OnboardingSlideEntity(imagePath: 'slide-1.jpg', title: 'أهلاً'),
      OnboardingSlideEntity(imagePath: 'slide-2.jpg', title: 'التالي'),
    ];
  }

  @override
  Future<bool> isCompleted() async {
    return completed;
  }

  @override
  Future<void> markCompleted() async {
    completed = true;
  }

  @override
  Future<void> resetCompleted() async {
    completed = false;
  }
}

Future<void> _expectReady(
  OnboardingBloc bloc, {
  required int pageIndex,
  required bool isCompleted,
}) async {
  final state = await bloc.stream.firstWhere((state) {
    return state.maybeWhen(
      ready: (_, _, _) {
        return true;
      },
      orElse: () {
        return false;
      },
    );
  });
  state.maybeWhen(
    ready: (slides, index, completed) {
      expect(slides.length, 2);
      expect(index, pageIndex);
      expect(completed, isCompleted);
    },
    orElse: () {
      fail('expected ready state');
    },
  );
}

void main() {
  late FakeOnboardingRepository repository;
  OnboardingBloc? bloc;

  setUp(() {
    repository = FakeOnboardingRepository();
  });

  tearDown(() {
    bloc?.close();
  });

  test('loads slides with the stored completion flag', () async {
    repository.completed = true;
    bloc = OnboardingBloc(repository);

    await _expectReady(bloc!, pageIndex: 0, isCompleted: true);
  });

  test('tracks page changes', () async {
    bloc = OnboardingBloc(repository);
    await _expectReady(bloc!, pageIndex: 0, isCompleted: false);

    bloc!.add(const OnboardingEvent.pageChanged(pageIndex: 1));

    await _expectReady(bloc!, pageIndex: 1, isCompleted: false);
  });

  test('completing persists the flag', () async {
    bloc = OnboardingBloc(repository);
    await _expectReady(bloc!, pageIndex: 0, isCompleted: false);

    bloc!.add(const OnboardingEvent.completed());

    await _expectReady(bloc!, pageIndex: 0, isCompleted: true);
    expect(repository.completed, isTrue);
  });

  test('replay clears the flag and returns to the first page', () async {
    repository.completed = true;
    bloc = OnboardingBloc(repository);
    await _expectReady(bloc!, pageIndex: 0, isCompleted: true);
    bloc!.add(const OnboardingEvent.pageChanged(pageIndex: 1));
    await _expectReady(bloc!, pageIndex: 1, isCompleted: true);

    bloc!.add(const OnboardingEvent.replay());

    await _expectReady(bloc!, pageIndex: 0, isCompleted: false);
    expect(repository.completed, isFalse);
  });
}
