import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/occasions_repo.dart';
import '../datasources/occasions_api.dart';

@Injectable(as: OcassionsRepo)
class OcassionsRepoImpl implements OcassionsRepo {
  final OcassionsApi ocassionsApi;
  OcassionsRepoImpl({required this.ocassionsApi});

  @override
  Future<ExecuteGuard<void>> toggleOcassionInterest({required int? id}) async {
    try {
      await ocassionsApi.toggleOccasionInterest(id: id);
      return const .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
