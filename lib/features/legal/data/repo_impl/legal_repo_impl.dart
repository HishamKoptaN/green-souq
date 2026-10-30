import 'package:injectable/injectable.dart';
import 'package:core/utils/guard/execute_guard.dart';
import '../../domain/entities/legal_content_entity.dart';
import '../../domain/repo/legal_repo.dart';
import '../datasources/legal_remote_data_source.dart';
import '../models/legal_content_model.dart';

@LazySingleton(as: LegalRepo)
class LegalRepoImpl implements LegalRepo {
  const LegalRepoImpl(this._remoteDataSource);

  final LegalRemoteDataSource _remoteDataSource;

  @override
  Future<ExecuteGuard<LegalContentEntity>> getLegalContent(String type) async {
    {
      return ExecuteGuard.run(() async {
        {
          final model = await _remoteDataSource.getLegalContent(type);
          return model.toEntity();
        }
      });
    }
  }
}
