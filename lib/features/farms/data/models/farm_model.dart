import '../../domain/entities/farm_entity.dart';

class FarmModel extends FarmEntity {
  const FarmModel({
    required super.id,
    required super.name,
    required super.location,
  });

  factory FarmModel.fromJson(Map<String, dynamic> json) {
    return FarmModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      location: json['location'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'location': location,
    };
  }
}
