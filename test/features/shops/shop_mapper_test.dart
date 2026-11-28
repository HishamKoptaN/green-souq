import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/shops/data/mappers/shop_mapper.dart';
import 'package:green/features/shops/data/models/shop_model.dart';

void main() {
  test('maps shop model into entity', () {
    const model = ShopModel(
      id: 9,
      name: 'متجر الواحة',
      userType: 'shop',
      phone: '555',
      rating: 4,
      ratingAverage: 4.2,
      ratingsCount: 10,
    );

    final entity = model.toEntity();

    expect(entity.id, '9');
    expect(entity.name, 'متجر الواحة');
    expect(entity.ratingAverage, 4.2);
    expect(entity.ratingsCount, 10);
  });

  test('defaults missing shop fields', () {
    final entity = const ShopModel().toEntity();

    expect(entity.id, '');
    expect(entity.name, '');
    expect(entity.rating, 0);
    expect(entity.address, '');
  });
}
