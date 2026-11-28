import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/posts/reports/domain/entities/report_req.dart';
import 'package:green/features/posts/reports/domain/usecases/reports_usecases.dart';
import 'package:green/features/posts/reports/present/bloc/reports_bloc.dart';
import 'package:green/features/posts/reports/present/bloc/reports_event.dart';
import 'package:green/features/posts/reports/present/bloc/reports_state.dart';
import 'package:mocktail/mocktail.dart';

class MockReportUseCases extends Mock implements ReportUseCases {}

void main() {
  late MockReportUseCases useCases;
  const request = ReportReq(id: 1, type: 'post', reason: 'مخالف');

  setUp(() {
    registerFallbackValue(request);
    useCases = MockReportUseCases();
  });

  blocTest<ReportBloc, ReportState>(
    'delegates reporting a post to the use case',
    build: () {
      when(() => useCases.report(reportReq: any(named: 'reportReq')))
          .thenAnswer((_) async {});
      return ReportBloc(statusUseCases: useCases);
    },
    act: (bloc) {
      bloc.add(const ReportEvent.report(reportReq: request));
    },
    verify: (bloc) {
      verify(() => useCases.report(reportReq: request)).called(1);
    },
  );
}
