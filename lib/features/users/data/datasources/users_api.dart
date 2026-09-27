import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart' show factoryMethod, singleton;
import 'package:retrofit/retrofit.dart';

import '../models/users_res_model.dart';
part 'users_api.g.dart';

@RestApi()
@singleton
abstract class UsersApi {
  @factoryMethod
  factory UsersApi(Dio dio) = _UsersApi;

  @GET('users')
  Future<UsersResModel> getUsers({
    @Query('page') int? page,
    @Query('query') String? query,
  });

  @POST('users/{id}/visit')
  Future<void> recordVisit(@Path('id') String id);
}
