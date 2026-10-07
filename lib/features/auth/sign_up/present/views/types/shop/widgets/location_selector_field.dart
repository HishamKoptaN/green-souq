import 'package:flutter/material.dart';
import 'package:green/core/utils/egypt_locations.dart';

class LocationSelectorField extends StatefulWidget {
  final ValueChanged<String?> onGovernorateChanged;
  final ValueChanged<String?> onDistrictChanged;

  const LocationSelectorField({
    super.key,
    required this.onGovernorateChanged,
    required this.onDistrictChanged,
  });

  @override
  State<LocationSelectorField> createState() => _LocationSelectorFieldState();
}

class _LocationSelectorFieldState extends State<LocationSelectorField> {
  String? _selectedGovernorate;
  String? _selectedDistrict;
  List<String> _governorates = [];
  List<String> _districts = [];
  bool _isLoadingGovernorates = true;
  bool _isLoadingDistricts = false;

  @override
  void initState() {
    super.initState();
    _loadGovernorates();
  }

  Future<void> _loadGovernorates() async {
    // try {
    //   final governorates = await EgyptLocations.getGovernorates();
    //   if (mounted) {
    //     setState(() {
    //       _governorates = governorates;
    //       _isLoadingGovernorates = false;
    //     });
    //   }
    // } catch (_) {
    //   if (mounted) {
    //     setState(() {
    //       _isLoadingGovernorates = false;
    //     });
    //   }
    // }
  }

  Future<void> _loadDistricts(String? governorate) async {
    // if (governorate == null) {
    //   setState(() {
    //     _districts = [];
    //     _selectedDistrict = null;
    //   });
    //   return;
    // }
    // setState(() {
    //   _isLoadingDistricts = true;
    // });
    // try {
    //   final districts = await EgyptLocations.getDistricts(governorate);
    //   if (mounted) {
    //     setState(() {
    //       _districts = districts;
    //       _isLoadingDistricts = false;
    //     });
    //   }
    // } catch (_) {
    //   if (mounted) {
    //     setState(() {
    //       _isLoadingDistricts = false;
    //     });
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _isLoadingGovernorates
              ? const Center(child: CircularProgressIndicator())
              : DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: 'المحافظة'),
                  value: _selectedGovernorate,
                  isExpanded: true,
                  items: _governorates
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedGovernorate = val;
                      _selectedDistrict = null;
                    });
                    widget.onGovernorateChanged(val);
                    widget.onDistrictChanged(null);
                    _loadDistricts(val);
                  },
                ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _isLoadingDistricts
              ? const Center(child: CircularProgressIndicator())
              : DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: 'المركز'),
                  value: _selectedDistrict,
                  isExpanded: true,
                  items: _districts
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      _selectedDistrict = val;
                    });
                    widget.onDistrictChanged(val);
                  },
                ),
        ),
      ],
    );
  }
}
