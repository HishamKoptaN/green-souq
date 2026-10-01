import 'dart:async';

import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/entities/create_cmnt_entity.dart';
import '../../domain/repo/cmnts_repo.dart';
import '../datasources/cmnts_api.dart';
import '../models/cmnts_res_model.dart';
import '../models/create_cmnt_req_body.dart';

@LazySingleton(as: CmntsRepo)
class CmntsRepoImpl implements CmntsRepo {
  final CmntsApi cmntsApi;

  CmntsRepoImpl({required this.cmntsApi});
  final _cmnts$ = BehaviorSubject<CmntsResModel>();

  @override
  Stream<CmntsResModel> watch() {
    return _cmnts$.stream;
  }

  @override
  Future<ExecuteGuard<void>> getCmnts({
    required int page,
    required int commentableId,
    required String commentableType,
  }) async {
    try {
      final res = await cmntsApi.getCmnts(
        page: page,
        commentableId: commentableId,
        commentableType: commentableType,
      );
      _cmnts$.add(
        res.copyWith(
          cmnts: page == 1 ? res.cmnts : [..._cmnts$.value.cmnts, ...res.cmnts],
        ),
      );
      return .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<void>> cmnt({
    required CreateCmntEntity createCmnt,
  }) async {
    try {
      final res = await cmntsApi.cmnt(
        createCmntReqBody: CreateCmntReqBody(
          comment: createCmnt.comment.value,
          commentableId: createCmnt.commentableId,
          commentableType: createCmnt.commentableType,
        ),
      );
      _cmnts$.add(_cmnts$.value.copyWith(cmnts: [..._cmnts$.value.cmnts, res]));
      return .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
