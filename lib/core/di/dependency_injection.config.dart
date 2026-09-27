// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i163;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/auth/data/datasources/auth_api.dart' as _i976;
import '../../features/auth/auth/data/repo/auth_repo_impl.dart' as _i247;
import '../../features/auth/auth/domain/repo/auth_repo.dart' as _i610;
import '../../features/auth/auth/domain/usecases/auth_use_casees.dart' as _i151;
import '../../features/auth/auth/present/bloc/auth_bloc.dart' as _i99;
import '../../features/auth/change_pass/data/repo/change_pass_repo_impl.dart'
    as _i901;
import '../../features/auth/change_pass/domain/repo/change_pass_repo.dart'
    as _i532;
import '../../features/auth/change_pass/domain/usecases/change_pass_usecase.dart'
    as _i146;
import '../../features/auth/change_pass/present/bloc/change_pass_bloc.dart'
    as _i494;
import '../../features/auth/forgot_password/data/repo/forgot_password_repo_impl.dart'
    as _i877;
import '../../features/auth/forgot_password/domain/repo/forgot_pass_repo.dart'
    as _i614;
import '../../features/auth/forgot_password/domain/usecases/send_pass_reset_email_usecase.dart'
    as _i629;
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart'
    as _i154;
import '../../features/auth/sign_in/data/datasources/sign_in_api.dart' as _i804;
import '../../features/auth/sign_in/data/factories/auth_strategy_factory.dart'
    as _i257;
import '../../features/auth/sign_in/data/repo/anonymous_strategy.dart' as _i30;
import '../../features/auth/sign_in/data/repo/email_and_password.dart' as _i108;
import '../../features/auth/sign_in/data/repo/google_auth_strategy.dart'
    as _i225;
import '../../features/auth/sign_in/data/repo/phone_auth_strategy.dart'
    as _i876;
import '../../features/auth/sign_in/domain/repo/I_auth_strategy.dart' as _i671;
import '../../features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i941;
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart' as _i665;
import '../../features/auth/sign_up/data/data_sources/sign_up_api.dart'
    as _i552;
import '../../features/auth/sign_up/data/repo_impl/sign_up_repo.dart' as _i17;
import '../../features/auth/sign_up/domain/repo/sign_up_repo.dart' as _i871;
import '../../features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart'
    as _i251;
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart' as _i226;
import '../../features/instructions/present/bloc/instructions_bloc.dart'
    as _i197;
import '../../features/location/data/repo_impl/location_repo_impl.dart'
    as _i479;
import '../../features/location/domain/repo/location_repo.dart' as _i932;
import '../../features/location/domain/usecases/location_use_cases.dart'
    as _i265;
import '../../features/location/present/bloc/location_bloc.dart' as _i55;
import '../../features/notifications/data/datasources/notifications_api.dart'
    as _i352;
import '../../features/notifications/data/repo_impl/notifications_repo_impl.dart'
    as _i666;
import '../../features/notifications/domain/repo/notifications_repo.dart'
    as _i967;
import '../../features/notifications/domain/usecases/notifications_use_cases.dart'
    as _i139;
import '../../features/notifications/present/bloc/notifications_bloc.dart'
    as _i781;
import '../../features/profile/data/datasources/profile_api.dart' as _i191;
import '../../features/profile/data/repo/profile_repo_impl.dart' as _i256;
import '../../features/profile/domain/repo/profile_repo.dart' as _i364;
import '../../features/profile/domain/use_cases/profile_use_cases.dart'
    as _i995;
import '../../features/profile/present/bloc/profile_bloc.dart' as _i475;
import '../../features/ratings/data/datasources/ratings_api.dart' as _i398;
import '../../features/ratings/data/repo_impl/ratings_repo_impl.dart' as _i606;
import '../../features/ratings/domain/repo/ratings_repo.dart' as _i573;
import '../../features/ratings/domain/usecases/ratings_use_cases.dart' as _i210;
import '../../features/ratings/present/bloc/ratings_bloc.dart' as _i615;
import '../../features/s3/data/data_sources/s3_api.dart' as _i335;
import '../../features/s3/data/repo/s3_repo.dart' as _i1;
import '../../features/s3/domain/repo_impl/s3_repo_impl.dart' as _i758;
import '../../features/shops/data/datasources/shops_api.dart' as _i522;
import '../../features/shops/data/repo_impl/shops_repo_impl.dart' as _i480;
import '../../features/shops/domain/repo/shops_repo.dart' as _i638;
import '../../features/shops/domain/usecases/shops_use_cases.dart' as _i751;
import '../../features/shops/present/bloc/shops_bloc.dart' as _i882;
import '../../features/users/data/datasources/users_api.dart' as _i52;
import '../../features/users/data/repo_impl/users_repo_impl.dart' as _i53;
import '../../features/users/domain/repo/users_repo.dart' as _i841;
import '../../features/users/domain/usecases/users_use_cases.dart' as _i446;
import '../../features/users/present/bloc/users_bloc.dart' as _i727;
import '../blocs/theme_bloc.dart' as _i725;
import '../language/bloc/language_bloc.dart' as _i48;
import '../networking/network_info.dart' as _i303;
import '../utils/app_file_manager.dart' as _i246;
import '../utils/services/auth_storage_service.dart' as _i566;
import '../utils/services/firebase_messaging/firebase_messaging_service.dart'
    as _i608;
import '../utils/services/notification_manager.dart' as _i749;
import '../utils/services/token_service.dart' as _i1052;
import 'dio/dio_module.dart' as _i374;
import 'dio/Interceptor.dart' as _i510;
import 'injection_module.dart' as _i212;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  final dioModule = _$DioModule();
  await gh.factoryAsync<_i460.SharedPreferencesAsync>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i566.AuthStorageService>(() => _i566.AuthStorageService());
  gh.factory<_i257.AuthStrategyFactory>(() => _i257.AuthStrategyFactory());
  gh.factory<_i941.SignInUseCases>(() => _i941.SignInUseCases());
  gh.singleton<_i725.ThemeBloc>(() => _i725.ThemeBloc());
  gh.singleton<_i510.AuthInterceptor>(() => _i510.AuthInterceptor());
  gh.singleton<_i510.LoggingInterceptor>(() => _i510.LoggingInterceptor());
  gh.singleton<_i161.InternetConnection>(
    () => injectionModule.connectionChecker,
  );
  gh.singleton<_i163.FlutterLocalNotificationsPlugin>(
    () => injectionModule.notificationsPlugin,
  );
  gh.singleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
  gh.singleton<_i892.FirebaseMessaging>(
    () => injectionModule.firebaseMessaging,
  );
  gh.singleton<_i558.FlutterSecureStorage>(() => injectionModule.secureStorage);
  gh.singleton<Duration>(() => injectionModule.cacheDefaultTtl);
  gh.singleton<_i48.LanguageBloc>(() => _i48.LanguageBloc());
  gh.singleton<_i246.AppFileManager>(() => _i246.AppFileManager());
  gh.singleton<_i608.FirebaseMessagingService>(
    () => _i608.FirebaseMessagingService(),
  );
  gh.singleton<_i197.InstructionsBloc>(() => _i197.InstructionsBloc());
  gh.lazySingleton<_i116.GoogleSignIn>(() => injectionModule.googleSignIn);
  gh.singleton<_i361.Dio>(
    () => dioModule.authDio(
      gh<_i510.AuthInterceptor>(),
      gh<_i510.LoggingInterceptor>(),
    ),
    instanceName: 'authDio',
  );
  gh.singleton<_i361.Dio>(
    () => dioModule.dio(
      gh<_i510.AuthInterceptor>(),
      gh<_i510.LoggingInterceptor>(),
    ),
  );
  gh.singleton<_i361.Dio>(() => dioModule.s3Dio(), instanceName: 's3Dio');
  gh.lazySingleton<_i932.LocationRepo>(() => _i479.LocationRepoImpl());
  gh.lazySingleton<_i191.ProfileApi>(() => _i191.ProfileApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i335.S3Api>(() => _i335.S3Api(gh<_i361.Dio>()));
  gh.singleton<_i352.NotificationsApi>(
    () => _i352.NotificationsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i398.RatingsApi>(() => _i398.RatingsApi(gh<_i361.Dio>()));
  gh.singleton<_i522.ShopsApi>(() => _i522.ShopsApi(gh<_i361.Dio>()));
  gh.singleton<_i52.UsersApi>(() => _i52.UsersApi(gh<_i361.Dio>()));
  gh.factory<_i671.IAuthStrategy>(
    () => _i876.PhoneAuthStrategy(),
    instanceName: 'phone_auth',
  );
  gh.factory<_i671.IAuthStrategy>(
    () => _i30.AnonymousStrategy(),
    instanceName: 'anonymous_auth',
  );
  gh.lazySingleton<_i364.ProfileRepo>(
    () =>
        _i256.ProfileRepoImpl(gh<_i191.ProfileApi>(), gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i265.LocationUseCases>(
    () => _i265.LocationUseCases(gh<_i932.LocationRepo>()),
  );
  gh.factory<_i804.SignInApi>(
    () => _i804.SignInApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.factory<_i552.SignUpApi>(
    () => _i552.SignUpApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.singleton<_i976.AuthApi>(
    () => _i976.AuthApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.singleton<_i303.NetworkInfo>(
    () => _i303.NetworkInfoImpl(
      connectionChecker: gh<_i161.InternetConnection>(),
    ),
  );
  gh.factory<_i671.IAuthStrategy>(
    () => _i108.EmailAndPassword(gh<_i59.FirebaseAuth>()),
    instanceName: 'email_and_password_auth',
  );
  gh.lazySingleton<_i749.NotificationManager>(
    () =>
        _i749.NotificationManager(gh<_i163.FlutterLocalNotificationsPlugin>()),
  );
  gh.singleton<_i841.UsersRepo>(
    () => _i53.UsersRepoImpl(gh<_i52.UsersApi>(), gh<_i932.LocationRepo>()),
  );
  gh.singleton<_i446.UsersUseCases>(
    () => _i446.UsersUseCases(gh<_i841.UsersRepo>()),
  );
  gh.factory<_i671.IAuthStrategy>(
    () => _i225.GoogleAuthStrategy(
      gh<_i59.FirebaseAuth>(),
      gh<_i116.GoogleSignIn>(),
    ),
    instanceName: 'google_auth',
  );
  gh.lazySingleton<_i614.ForgotPassRepo>(
    () => _i877.ForgotPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.factory<_i871.SignUpRepo>(
    () => _i17.SignUpRepoImpl(gh<_i552.SignUpApi>()),
  );
  gh.singleton<_i573.RatingsRepo>(
    () => _i606.RatingsRepoImpl(gh<_i398.RatingsApi>()),
  );
  gh.lazySingleton<_i1.S3Repo>(
    () => _i758.S3RepoImpl(gh<_i361.Dio>(instanceName: 's3Dio')),
  );
  gh.lazySingleton<_i1052.TokenService>(
    () => _i1052.TokenService(gh<_i59.FirebaseAuth>()),
  );
  gh.singleton<_i210.RatingsUseCases>(
    () => _i210.RatingsUseCases(gh<_i573.RatingsRepo>()),
  );
  gh.lazySingleton<_i532.ChangePassRepo>(
    () => _i901.ChangePassRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i727.UsersBloc>(
    () => _i727.UsersBloc(gh<_i446.UsersUseCases>()),
  );
  gh.singleton<_i610.AuthRepo>(
    () => _i247.AuthRepoImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i976.AuthApi>(),
      gh<_i1052.TokenService>(),
      gh<_i566.AuthStorageService>(),
    ),
  );
  gh.singleton<_i967.NotificationsRepo>(
    () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()),
  );
  gh.singleton<_i638.ShopsRepo>(
    () => _i480.ShopsRepoImpl(gh<_i522.ShopsApi>(), gh<_i932.LocationRepo>()),
  );
  gh.lazySingleton<_i55.LocationBloc>(
    () => _i55.LocationBloc(locationUseCases: gh<_i265.LocationUseCases>()),
  );
  gh.singleton<_i751.ShopsUseCases>(
    () => _i751.ShopsUseCases(gh<_i638.ShopsRepo>()),
  );
  gh.singleton<_i995.ProfileUseCases>(
    () => _i995.ProfileUseCases(gh<_i364.ProfileRepo>(), gh<_i1.S3Repo>()),
  );
  gh.factory<_i251.SignUpUseCases>(
    () => _i251.SignUpUseCases(gh<_i871.SignUpRepo>()),
  );
  gh.lazySingleton<_i146.SendPassResetEmailUseCase>(
    () => _i146.SendPassResetEmailUseCase(gh<_i532.ChangePassRepo>()),
  );
  gh.lazySingleton<_i629.SendPassResetEmailUseCase>(
    () => _i629.SendPassResetEmailUseCase(gh<_i614.ForgotPassRepo>()),
  );
  gh.factory<_i226.SignUpBloc>(
    () => _i226.SignUpBloc(signUpUseCases: gh<_i251.SignUpUseCases>()),
  );
  gh.lazySingleton<_i494.ChangePassBloc>(
    () => _i494.ChangePassBloc(gh<_i146.SendPassResetEmailUseCase>()),
  );
  gh.singleton<_i139.NotificationsUseCases>(
    () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()),
  );
  gh.lazySingleton<_i615.RatingsBloc>(
    () => _i615.RatingsBloc(gh<_i210.RatingsUseCases>()),
  );
  gh.lazySingleton<_i154.ForgotPassBloc>(
    () => _i154.ForgotPassBloc(gh<_i629.SendPassResetEmailUseCase>()),
  );
  gh.singleton<_i781.NotificationsBloc>(
    () => _i781.NotificationsBloc(gh<_i139.NotificationsUseCases>()),
  );
  gh.lazySingleton<_i475.ProfileBloc>(
    () => _i475.ProfileBloc(gh<_i995.ProfileUseCases>()),
  );
  gh.lazySingleton<_i882.ShopsBloc>(
    () => _i882.ShopsBloc(gh<_i751.ShopsUseCases>()),
  );
  gh.singleton<_i151.AuthUseCases>(
    () => _i151.AuthUseCases(authRepo: gh<_i610.AuthRepo>()),
  );
  gh.singleton<_i99.AuthBloc>(
    () => _i99.AuthBloc(authUseCases: gh<_i151.AuthUseCases>()),
  );
  gh.factory<_i665.SignInBloc>(
    () => _i665.SignInBloc(
      signInUseCases: gh<_i941.SignInUseCases>(),
      authBloc: gh<_i99.AuthBloc>(),
      strategyFactory: gh<_i257.AuthStrategyFactory>(),
    ),
  );
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$DioModule extends _i374.DioModule {}
