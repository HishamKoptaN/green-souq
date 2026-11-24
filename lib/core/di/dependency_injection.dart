import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../features/onboarding/data/datasources/onboarding_local_data_source.dart';
import '../../features/onboarding/data/repo_impl/onboarding_repository_impl.dart';
import '../../features/onboarding/domain/repositories/onboarding_repository.dart';
import 'dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies({
  String environment = Environment.prod,
}) async {
  await $initGetIt(
    getIt,
    environment: environment,
  );

  if (!getIt.isRegistered<OnboardingRepository>()) {
    getIt.registerLazySingleton(
      () => OnboardingRepositoryImpl(OnboardingLocalDataSource()),
    );
  }
}
