import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/complaints/domain/entities/complaint_entity.dart';
import 'package:green/features/complaints/domain/usecases/create_complaint_usecase.dart';
import 'package:green/features/complaints/domain/usecases/get_complaints_usecase.dart';
import 'package:green/features/complaints/present/bloc/complaints_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetComplaints extends Mock implements GetComplaintsUseCase {}

class MockCreateComplaint extends Mock implements CreateComplaintUseCase {}

void main() {
  late MockGetComplaints getComplaints;
  late MockCreateComplaint createComplaint;
  final complaint = ComplaintEntity(
    id: '1',
    title: 'شكوى',
    description: 'وصف',
    createdAt: DateTime(2026),
  );

  setUp(() {
    registerFallbackValue(complaint);
    getComplaints = MockGetComplaints();
    createComplaint = MockCreateComplaint();
  });

  blocTest<ComplaintsBloc, ComplaintsState>(
    'emits loaded with complaints',
    build: () {
      when(() => getComplaints()).thenAnswer((_) async => [complaint]);
      return ComplaintsBloc(getComplaints, createComplaint);
    },
    act: (bloc) {
      bloc.add(const ComplaintsEvent.started());
    },
    expect: () => [isA<ComplaintsState>(), isA<ComplaintsState>()],
    verify: (bloc) {
      bloc.state.maybeWhen(
        loaded: (complaints) {
          expect(complaints, [complaint]);
        },
        orElse: () {
          fail('expected loaded state');
        },
      );
    },
  );

  blocTest<ComplaintsBloc, ComplaintsState>(
    'creates a complaint then reloads the list',
    build: () {
      when(() => createComplaint(any())).thenAnswer((_) async {});
      when(() => getComplaints()).thenAnswer((_) async => [complaint]);
      return ComplaintsBloc(getComplaints, createComplaint);
    },
    act: (bloc) {
      bloc.add(
        const ComplaintsEvent.create(title: 'شكوى', description: 'وصف'),
      );
    },
    verify: (bloc) {
      verify(() => createComplaint(any())).called(1);
    },
  );

  blocTest<ComplaintsBloc, ComplaintsState>(
    'emits failure when loading throws',
    build: () {
      when(() => getComplaints()).thenThrow(Exception('boom'));
      return ComplaintsBloc(getComplaints, createComplaint);
    },
    act: (bloc) {
      bloc.add(const ComplaintsEvent.started());
    },
    expect: () => [isA<ComplaintsState>(), isA<ComplaintsState>()],
  );
}
