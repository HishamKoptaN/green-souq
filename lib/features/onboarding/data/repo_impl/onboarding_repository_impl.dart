import 'package:injectable/injectable.dart';

import '../../domain/entities/onboarding_slide_entity.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../datasources/onboarding_local_data_source.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  const OnboardingRepositoryImpl(this._dataSource);

  final OnboardingLocalDataSourceContract _dataSource;

  @override
  List<OnboardingSlideEntity> getSlides() => _dataSource.getSlides();

  @override
  Future<bool> isCompleted() => _dataSource.isCompleted();

  @override
  Future<void> markCompleted() => _dataSource.markCompleted();

  @override
  Future<void> resetCompleted() => _dataSource.resetCompleted();
}
