class FarmEntity {
  final String id;
  final String name;
  final String location;

  const FarmEntity({
    required this.id,
    required this.name,
    required this.location,
  });

  bool hasChanges(FarmEntity original) {
    {
      return name != original.name || location != original.location;
    }
  }
}
