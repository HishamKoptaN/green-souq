import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/complaints/domain/entities/complaint_entity.dart';
import 'package:green/features/complaints/domain/repo/complaints_repo.dart';
import 'package:green/features/complaints/domain/usecases/create_complaint_usecase.dart';
import 'package:green/features/complaints/domain/usecases/get_complaints_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockComplaintsRepo extends Mock implements ComplaintsRepo {}

void main() {
  late MockComplaintsRepo repo;
  final complaint = ComplaintEntity(
    id: '1',
    title: 'شكوى',
    description: 'وصف',
    createdAt: DateTime(2026),
  );

  setUp(() {
    registerFallbackValue(complaint);
    repo = MockComplaintsRepo();
  });

  test('get complaints delegates to the repository', () async {
    when(() => repo.getComplaints()).thenAnswer((_) async => [complaint]);

    final result = await GetComplaintsUseCase(repo)();

    expect(result, [complaint]);
  });

  test('create complaint delegates to the repository', () async {
    when(() => repo.createComplaint(any())).thenAnswer((_) async {});

    await CreateComplaintUseCase(repo)(complaint);

    verify(() => repo.createComplaint(complaint)).called(1);
  });
}
