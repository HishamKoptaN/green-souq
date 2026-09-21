import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

/// A form field that lets the user pick a map coordinate by tapping
/// a button that opens a full-screen map. A draggable pin marks the
/// selected position. Tapping "تأكيد" returns the chosen [LatLng] via
/// [onLocationPicked].
class MapLocationPickerField extends StatelessWidget {
  final LatLng? selectedLocation;
  final ValueChanged<LatLng> onLocationPicked;

  const MapLocationPickerField({
    super.key,
    this.selectedLocation,
    required this.onLocationPicked,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final bool hasLocation =
        selectedLocation != null &&
        (selectedLocation!.latitude != 0.0 ||
            selectedLocation!.longitude != 0.0);

    return GestureDetector(
      onTap: () => _openMapPicker(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: theme.inputDecorationTheme.fillColor ??
              colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: hasLocation
                ? colorScheme.primary
                : colorScheme.outlineVariant,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: hasLocation ? colorScheme.primary : colorScheme.outline,
              size: 22.sp,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: hasLocation
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'موقع المحل',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          '${selectedLocation!.latitude.toStringAsFixed(6)}, '
                          '${selectedLocation!.longitude.toStringAsFixed(6)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      'اختر موقع المحل على الخريطة',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.outline,
                      ),
                    ),
            ),
            Icon(
              Icons.chevron_right,
              color: colorScheme.outline,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openMapPicker(BuildContext context) async {
    final result = await Navigator.of(context).push<LatLng>(
      MaterialPageRoute(
        builder: (_) => _MapPickerScreen(initialLocation: selectedLocation),
        fullscreenDialog: true,
      ),
    );
    if (result != null) {
      onLocationPicked(result);
    }
  }
}

// ---------------------------------------------------------------------------
// Full-screen map picker screen
// ---------------------------------------------------------------------------

class _MapPickerScreen extends StatefulWidget {
  final LatLng? initialLocation;

  const _MapPickerScreen({this.initialLocation});

  @override
  State<_MapPickerScreen> createState() => _MapPickerScreenState();
}

class _MapPickerScreenState extends State<_MapPickerScreen> {
  static const LatLng _defaultCenter = LatLng(30.0444, 31.2357); // Cairo

  late LatLng _pickedLocation;
  final MapController _mapController = MapController();

  @override
  void initState() {
    super.initState();
    _pickedLocation =
        (widget.initialLocation != null &&
                (widget.initialLocation!.latitude != 0.0 ||
                    widget.initialLocation!.longitude != 0.0))
            ? widget.initialLocation!
            : _defaultCenter;
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('اختر موقع المحل', style: theme.textTheme.titleLarge),
        centerTitle: true,
        backgroundColor:
            theme.appBarTheme.backgroundColor ?? colorScheme.surface,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: Stack(
        children: [
          // ── Map ──────────────────────────────────────────────────────────
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _pickedLocation,
              initialZoom: 14,
              onTap: (tapPosition, point) {
                setState(() => _pickedLocation = point);
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.green.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: _pickedLocation,
                    width: 48,
                    height: 48,
                    child: Icon(
                      Icons.location_pin,
                      color: colorScheme.primary,
                      size: 48,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // ── Instruction banner ────────────────────────────────────────────
          Positioned(
            top: 12,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: colorScheme.surface.withValues(alpha: 0.92),
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                'اضغط على الخريطة لتحديد موقع المحل',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurface,
                ),
              ),
            ),
          ),

          // ── Confirm button ────────────────────────────────────────────────
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: FilledButton.icon(
              key: const Key('confirm_location_button'),
              onPressed: () => Navigator.of(context).pop(_pickedLocation),
              icon: const Icon(Icons.check),
              label: Text(
                'تأكيد الموقع',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onPrimary,
                ),
              ),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
