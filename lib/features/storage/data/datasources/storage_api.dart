import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'storage_api.g.dart';

@lazySingleton
@RestApi()
abstract class StorageApi {
  @factoryMethod
  factory StorageApi(Dio dio) = _StorageApi;
  @POST('/upload')
  @MultiPart()
  Future<void> upload({
    @Part(name: "file") required File file,
    @Part(name: "file_path") required String filePath,
  });
}
