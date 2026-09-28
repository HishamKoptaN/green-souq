extension DistanceFormatter on String? {
  String toFormattedDistance() {
    if (this == null || this!.isEmpty) return '';
    final distanceInKm = double.tryParse(this!) ?? 0;
    if (distanceInKm == 0) return '';
    if (distanceInKm < 1) {
      final meters = (distanceInKm * 1000).round();
      return '$meters متر';
    } else {
      return '${distanceInKm.toStringAsFixed(1)} كم';
    }
  }
}
