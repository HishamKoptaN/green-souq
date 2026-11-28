import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';
import '../../features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../features/role_intro/domain/usecases/get_role_intro_usecase.dart';
import '../../features/role_intro/present/bloc/role_intro_cubit.dart';

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
  getIt.registerLazySingleton<GetRoleIntroUseCase>(
    () => const GetRoleIntroUseCase(),
  );
  getIt.registerFactoryParam<RoleIntroCubit, UserType, void>(
    (type, _) => RoleIntroCubit(getIt<GetRoleIntroUseCase>(), type),
  );
}
