import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/sales_engineers/data/mappers/sales_engineer_mapper.dart';
import 'package:green/features/sales_engineers/data/models/sales_engineer_model.dart';

void main() {
  test('maps all sales engineer fields', () {
    const model = SalesEngineerModel(
      id: 4,
      name: 'مهندس',
      userType: 'sales_engineer',
      phone: '123',
      email: 'eng@example.com',
      rating: 5,
      ratingAverage: 4.5,
      ratingsCount: 3,
    );

    final entity = model.toEntity();

    expect(entity.id, '4');
    expect(entity.name, 'مهندس');
    expect(entity.ratingAverage, 4.5);
    expect(entity.ratingsCount, 3);
  });

  test('defaults missing sales engineer fields', () {
    final entity = const SalesEngineerModel().toEntity();

    expect(entity.id, '');
    expect(entity.name, '');
    expect(entity.rating, 0.0);
    expect(entity.ratingAverage, 0.0);
  });
}
