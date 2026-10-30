import 'package:injectable/injectable.dart';
import '../models/legal_content_model.dart';

abstract class LegalRemoteDataSource {
  Future<LegalContentModel> getLegalContent(String type);
}

@LazySingleton(as: LegalRemoteDataSource)
class LegalRemoteDataSourceImpl implements LegalRemoteDataSource {
  const LegalRemoteDataSourceImpl();

  @override
  Future<LegalContentModel> getLegalContent(String type) async {
    {
      return const LegalContentModel(title: 'Terms', content: 'Content...');
    }
  }
}
