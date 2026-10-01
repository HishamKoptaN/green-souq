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
import '../../features/auth/sign_in/data/strategies/anonymous_strategy.dart'
    as _i165;
import '../../features/auth/sign_in/data/strategies/auth_strategy.dart'
    as _i432;
import '../../features/auth/sign_in/data/strategies/email_and_password.dart'
    as _i1026;
import '../../features/auth/sign_in/data/strategies/google_auth_strategy.dart'
    as _i282;
import '../../features/auth/sign_in/data/strategies/phone_auth_strategy.dart'
    as _i251;
import '../../features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i941;
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart' as _i665;
import '../../features/auth/sign_up/data/data_sources/sign_up_api.dart'
    as _i552;
import '../../features/auth/sign_up/data/repo_impl/sign_up_repo.dart' as _i17;
import '../../features/auth/sign_up/domain/repo/sign_up_repo.dart' as _i871;
import '../../features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart'
    as _i252;
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
import '../../features/posts/cmnts/data/datasources/cmnts_api.dart' as _i6;
import '../../features/posts/cmnts/data/repo_impl/cmnts_repo_impl.dart'
    as _i329;
import '../../features/posts/cmnts/domain/repo/cmnts_repo.dart' as _i12;
import '../../features/posts/cmnts/domain/usecases/cmnts_use_cases.dart'
    as _i906;
import '../../features/posts/cmnts/present/bloc/cmnts_bloc.dart' as _i635;
import '../../features/posts/folowers/data/datasources/followers_api.dart'
    as _i956;
import '../../features/posts/folowers/data/repo_impl/followers_repo_impl.dart'
    as _i98;
import '../../features/posts/folowers/domain/repo/followers_repo.dart' as _i465;
import '../../features/posts/folowers/domain/usecases/followers_use_cases.dart'
    as _i86;
import '../../features/posts/folowers/present/bloc/followers_bloc.dart'
    as _i563;
import '../../features/posts/hide/data/datasources/hide_api.dart' as _i883;
import '../../features/posts/hide/data/repositories/hide_repo_impl.dart'
    as _i36;
import '../../features/posts/hide/domain/repositories/hide_repo.dart' as _i204;
import '../../features/posts/hide/domain/usecases/hide_usecases.dart' as _i1034;
import '../../features/posts/hide/present/bloc/hide_bloc.dart' as _i232;
import '../../features/posts/occasion/data/datasources/occasions_api.dart'
    as _i1056;
import '../../features/posts/occasion/data/repo_impl/occasions_repo_impl.dart'
    as _i572;
import '../../features/posts/occasion/domain/repo/occasions_repo.dart' as _i64;
import '../../features/posts/occasion/domain/usecases/occasions_use_cases.dart'
    as _i28;
import '../../features/posts/occasion/present/bloc/occasions_bloc.dart'
    as _i650;
import '../../features/posts/posts/data/datasources/posts_api.dart' as _i822;
import '../../features/posts/posts/data/repo_impl/posts_repo_impl.dart'
    as _i814;
import '../../features/posts/posts/domain/repo/posts_repo.dart' as _i974;
import '../../features/posts/posts/domain/usecases/posts_use_cases.dart'
    as _i991;
import '../../features/posts/posts/present/bloc/posts_bloc.dart' as _i559;
import '../../features/posts/reports/data/datasources/reports_api.dart'
    as _i1036;
import '../../features/posts/reports/data/repositories/reports_repo_impl.dart'
    as _i963;
import '../../features/posts/reports/domain/repositories/reports_repo.dart'
    as _i547;
import '../../features/posts/reports/domain/usecases/reports_usecases.dart'
    as _i820;
import '../../features/posts/reports/present/bloc/reports_bloc.dart' as _i202;
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
import '../../features/sales_engineers/data/datasources/sales_engineers_api.dart'
    as _i923;
import '../../features/sales_engineers/data/repo_impl/sales_engineers_repo_impl.dart'
    as _i1030;
import '../../features/sales_engineers/domain/repo/sales_engineers_repo.dart'
    as _i50;
import '../../features/sales_engineers/domain/usecases/sales_engineers_use_cases.dart'
    as _i507;
import '../../features/sales_engineers/present/bloc/sales_engineers_bloc.dart'
    as _i708;
import '../../features/shops/data/datasources/shops_api.dart' as _i522;
import '../../features/shops/data/repo_impl/shops_repo_impl.dart' as _i480;
import '../../features/shops/domain/repo/shops_repo.dart' as _i638;
import '../../features/shops/domain/usecases/shops_use_cases.dart' as _i751;
import '../../features/shops/present/bloc/shops_bloc.dart' as _i882;
import '../../features/storage/data/datasources/storage_api.dart' as _i439;
import '../../features/storage/data/factories/storage_strategy_factory.dart'
    as _i809;
import '../../features/storage/data/repo/storage_repo.dart' as _i223;
import '../../features/storage/data/strategies/cloudinary_uploader.dart'
    as _i636;
import '../../features/storage/data/strategies/local_uploader.dart' as _i760;
import '../../features/storage/data/strategies/s3_uploader.dart' as _i577;
import '../../features/storage/data/strategies/upload_strategy.dart' as _i730;
import '../../features/storage/domain/repo_impl/storage_repo_impl.dart'
    as _i869;
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
  gh.factory<_i809.StorageStrategyFactory>(
    () => _i809.StorageStrategyFactory(),
  );
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
  gh.factory<_i432.AuthStrategy>(
    () => _i165.AnonymousStrategy(),
    instanceName: 'anonymous_auth',
  );
  gh.singleton<_i361.Dio>(() => dioModule.s3Dio(), instanceName: 's3Dio');
  gh.lazySingleton<_i1056.OcassionsApi>(
    () => _i1056.OcassionsApi(gh<_i361.Dio>(), baseUrl: gh<String>()),
  );
  gh.lazySingleton<_i932.LocationRepo>(() => _i479.LocationRepoImpl());
  gh.lazySingleton<_i6.CmntsApi>(() => _i6.CmntsApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i956.FollowersApi>(
    () => _i956.FollowersApi(gh<_i361.Dio>()),
  );
  gh.lazySingleton<_i883.HideApi>(() => _i883.HideApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i822.PostsApi>(() => _i822.PostsApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i1036.ReportApi>(() => _i1036.ReportApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i191.ProfileApi>(() => _i191.ProfileApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i923.SalesEngineersApi>(
    () => _i923.SalesEngineersApi(gh<_i361.Dio>()),
  );
  gh.lazySingleton<_i439.StorageApi>(() => _i439.StorageApi(gh<_i361.Dio>()));
  gh.singleton<_i352.NotificationsApi>(
    () => _i352.NotificationsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i398.RatingsApi>(() => _i398.RatingsApi(gh<_i361.Dio>()));
  gh.singleton<_i522.ShopsApi>(() => _i522.ShopsApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i465.FollowersRepo>(
    () => _i98.FollowersRepoImpl(gh<_i956.FollowersApi>()),
  );
  gh.lazySingleton<_i364.ProfileRepo>(
    () =>
        _i256.ProfileRepoImpl(gh<_i191.ProfileApi>(), gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i86.FollowersUseCases>(
    () => _i86.FollowersUseCases(followersRepo: gh<_i465.FollowersRepo>()),
  );
  gh.factory<_i432.AuthStrategy>(
    () => _i251.PhoneAuthStrategy(),
    instanceName: 'phone_auth',
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
  gh.lazySingleton<_i223.StorageRepo>(
    () => _i869.StorageRepoImpl(gh<_i809.StorageStrategyFactory>()),
  );
  gh.lazySingleton<_i749.NotificationManager>(
    () =>
        _i749.NotificationManager(gh<_i163.FlutterLocalNotificationsPlugin>()),
  );
  gh.lazySingleton<_i204.HideRepo>(
    () => _i36.HideRepoImpl(hideApi: gh<_i883.HideApi>()),
  );
  gh.factory<_i432.AuthStrategy>(
    () => _i282.GoogleAuthStrategy(
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
  gh.lazySingleton<_i974.PostsRepo>(
    () => _i814.PostsRepoImpl(postsApi: gh<_i822.PostsApi>()),
  );
  gh.lazySingleton<_i1052.TokenService>(
    () => _i1052.TokenService(gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i547.ReportRepo>(
    () => _i963.ReportRepoImpl(reportApi: gh<_i1036.ReportApi>()),
  );
  gh.factory<_i432.AuthStrategy>(
    () => _i1026.EmailAndPassword(gh<_i59.FirebaseAuth>()),
    instanceName: 'email_and_password_auth',
  );
  gh.singleton<_i210.RatingsUseCases>(
    () => _i210.RatingsUseCases(gh<_i573.RatingsRepo>()),
  );
  gh.lazySingleton<_i532.ChangePassRepo>(
    () => _i901.ChangePassRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.factory<_i730.UploadStrategy>(
    () => _i577.S3Uploader(gh<_i361.Dio>(instanceName: 's3Dio')),
    instanceName: 's3',
  );
  gh.singleton<_i50.SalesEngineersRepo>(
    () => _i1030.SalesEngineersRepoImpl(
      gh<_i923.SalesEngineersApi>(),
      gh<_i932.LocationRepo>(),
    ),
  );
  gh.factory<_i64.OcassionsRepo>(
    () => _i572.OcassionsRepoImpl(ocassionsApi: gh<_i1056.OcassionsApi>()),
  );
  gh.factory<_i730.UploadStrategy>(
    () => _i760.LocalUploader(gh<_i439.StorageApi>()),
    instanceName: 'local',
  );
  gh.lazySingleton<_i563.FollowersBloc>(
    () => _i563.FollowersBloc(followersUseCases: gh<_i86.FollowersUseCases>()),
  );
  gh.factory<_i730.UploadStrategy>(
    () => _i636.CloudinaryUploader(gh<_i361.Dio>()),
    instanceName: 'cloudinary',
  );
  gh.singleton<_i610.AuthRepo>(
    () => _i247.AuthRepoImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i976.AuthApi>(),
      gh<_i1052.TokenService>(),
      gh<_i566.AuthStorageService>(),
    ),
  );
  gh.lazySingleton<_i967.NotificationsRepo>(
    () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()),
  );
  gh.singleton<_i638.ShopsRepo>(
    () => _i480.ShopsRepoImpl(gh<_i522.ShopsApi>(), gh<_i932.LocationRepo>()),
  );
  gh.lazySingleton<_i12.CmntsRepo>(
    () => _i329.CmntsRepoImpl(cmntsApi: gh<_i6.CmntsApi>()),
  );
  gh.lazySingleton<_i906.CmntsUseCases>(
    () => _i906.CmntsUseCases(cmntsRepo: gh<_i12.CmntsRepo>()),
  );
  gh.lazySingleton<_i55.LocationBloc>(
    () => _i55.LocationBloc(locationUseCases: gh<_i265.LocationUseCases>()),
  );
  gh.lazySingleton<_i995.ProfileUseCases>(
    () =>
        _i995.ProfileUseCases(gh<_i364.ProfileRepo>(), gh<_i223.StorageRepo>()),
  );
  gh.lazySingleton<_i991.PostsUseCases>(
    () => _i991.PostsUseCases(postsRepo: gh<_i974.PostsRepo>()),
  );
  gh.singleton<_i751.ShopsUseCases>(
    () => _i751.ShopsUseCases(gh<_i638.ShopsRepo>()),
  );
  gh.factory<_i252.SignUpUseCases>(
    () => _i252.SignUpUseCases(gh<_i871.SignUpRepo>()),
  );
  gh.lazySingleton<_i146.SendPassResetEmailUseCase>(
    () => _i146.SendPassResetEmailUseCase(gh<_i532.ChangePassRepo>()),
  );
  gh.factory<_i1034.HideUseCases>(
    () => _i1034.HideUseCases(hideRepo: gh<_i204.HideRepo>()),
  );
  gh.lazySingleton<_i629.SendPassResetEmailUseCase>(
    () => _i629.SendPassResetEmailUseCase(gh<_i614.ForgotPassRepo>()),
  );
  gh.factory<_i820.ReportUseCases>(
    () => _i820.ReportUseCases(reportRepo: gh<_i547.ReportRepo>()),
  );
  gh.lazySingleton<_i202.ReportBloc>(
    () => _i202.ReportBloc(statusUseCases: gh<_i820.ReportUseCases>()),
  );
  gh.singleton<_i507.SalesEngineersUseCases>(
    () => _i507.SalesEngineersUseCases(gh<_i50.SalesEngineersRepo>()),
  );
  gh.factory<_i226.SignUpBloc>(
    () => _i226.SignUpBloc(signUpUseCases: gh<_i252.SignUpUseCases>()),
  );
  gh.lazySingleton<_i494.ChangePassBloc>(
    () => _i494.ChangePassBloc(gh<_i146.SendPassResetEmailUseCase>()),
  );
  gh.lazySingleton<_i139.NotificationsUseCases>(
    () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()),
  );
  gh.lazySingleton<_i615.RatingsBloc>(
    () => _i615.RatingsBloc(gh<_i210.RatingsUseCases>()),
  );
  gh.lazySingleton<_i154.ForgotPassBloc>(
    () => _i154.ForgotPassBloc(gh<_i629.SendPassResetEmailUseCase>()),
  );
  gh.lazySingleton<_i28.OcassionsUseCases>(
    () => _i28.OcassionsUseCases(ocassionsRepo: gh<_i64.OcassionsRepo>()),
  );
  gh.lazySingleton<_i781.NotificationsBloc>(
    () => _i781.NotificationsBloc(gh<_i139.NotificationsUseCases>()),
  );
  gh.lazySingleton<_i475.ProfileBloc>(
    () => _i475.ProfileBloc(gh<_i995.ProfileUseCases>()),
  );
  gh.lazySingleton<_i635.CmntsBloc>(
    () => _i635.CmntsBloc(cmntsUseCases: gh<_i906.CmntsUseCases>()),
  );
  gh.lazySingleton<_i882.ShopsBloc>(
    () => _i882.ShopsBloc(gh<_i751.ShopsUseCases>()),
  );
  gh.singleton<_i151.AuthUseCases>(
    () => _i151.AuthUseCases(authRepo: gh<_i610.AuthRepo>()),
  );
  gh.lazySingleton<_i708.SalesEngineersBloc>(
    () => _i708.SalesEngineersBloc(gh<_i507.SalesEngineersUseCases>()),
  );
  gh.singleton<_i99.AuthBloc>(
    () => _i99.AuthBloc(authUseCases: gh<_i151.AuthUseCases>()),
  );
  gh.factory<_i650.OccasionsBloc>(
    () => _i650.OccasionsBloc(ocassionsUseCases: gh<_i28.OcassionsUseCases>()),
  );
  gh.factory<_i665.SignInBloc>(
    () => _i665.SignInBloc(
      signInUseCases: gh<_i941.SignInUseCases>(),
      authBloc: gh<_i99.AuthBloc>(),
      strategyFactory: gh<_i257.AuthStrategyFactory>(),
    ),
  );
  gh.lazySingleton<_i232.HideBloc>(
    () => _i232.HideBloc(statusUseCases: gh<_i1034.HideUseCases>()),
  );
  gh.lazySingleton<_i559.PostsBloc>(
    () => _i559.PostsBloc(
      useCases: gh<_i991.PostsUseCases>(),
      reportBloc: gh<_i202.ReportBloc>(),
      hideBloc: gh<_i232.HideBloc>(),
    ),
  );
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$DioModule extends _i374.DioModule {}
