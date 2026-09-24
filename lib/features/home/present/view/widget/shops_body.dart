import 'package:flutter/material.dart';

class ShopsBody extends StatefulWidget {
  const ShopsBody({super.key});

  @override
  State<ShopsBody> createState() => _ShopsBodyState();
}

class _ShopsBodyState extends State<ShopsBody> {
  bool _isMapVisible = true;
  String _selectedFilter = 'الكل (14)';
  String? _toastMessage;

  final List<Map<String, dynamic>> _stores = [
    {
      'name': 'مركز الخير للمستلزمات',
      'category': 'أسمدة وبذور زراعية',
      'rating': 4.8,
      'distance': '450 م',
      'location': 'الخرج شارع المشاتل',
      'phone': '0500000000',
      'visited': true,
    },
    {
      'name': 'مؤسسة الغيث للمبيدات',
      'category': 'مبيدات حشرية ووقاية',
      'rating': 4.6,
      'distance': '1.2 كم',
      'location': 'طريق الحائر الزراعي',
      'phone': '0511111111',
      'visited': true,
    },
    {
      'name': 'معرض الوفاق للبيوت المحمية',
      'category': 'بيوت محمية وأنابيب ري',
      'rating': 4.9,
      'distance': '2.8 كم',
      'location': 'مفرق حرض العام',
      'phone': '0522222222',
      'visited': false,
    },
  ];

  void _showToast(String message) {
    setState(() {
      _toastMessage = message;
    });
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          if (_toastMessage == message) {
            _toastMessage = null;
          }
        });
      }
    });
  }

  void _openReviewModal(String storeName) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ReviewModal(
        storeName: storeName,
        onSubmitted: () {
          _showToast('تم حفظ واعتماد تقييمك الميداني للمحل بنجاح (+50 نقطة)');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: const .fromLTRB(16, 16, 16, 12),
              color: const Color(0xFFEAF7ED),
              child: SafeArea(
                bottom: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color(0xFF006838)
                                .withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.pin_drop,
                            color: Color(0xFF006838),
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'نطاق المندوب الحالي',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF3F4940),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'الخرج - المخطط الزراعي',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF131E18),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9E6DC),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() => _isMapVisible = true),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: _isMapVisible
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: _isMapVisible
                                    ? [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.05,
                                          ),
                                          blurRadius: 4,
                                        ),
                                      ]
                                    : [],
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.map,
                                    size: 16,
                                    color: _isMapVisible
                                        ? const Color(0xFF006838)
                                        : const Color(0xFF3F4940),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'الخريطة',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: _isMapVisible
                                          ? const Color(0xFF006838)
                                          : const Color(0xFF3F4940),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => setState(() => _isMapVisible = false),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: !_isMapVisible
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: !_isMapVisible
                                    ? [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.05,
                                          ),
                                          blurRadius: 4,
                                        ),
                                      ]
                                    : [],
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.format_list_bulleted,
                                    size: 16,
                                    color: !_isMapVisible
                                        ? const Color(0xFF006838)
                                        : const Color(0xFF3F4940),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'القائمة',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: !_isMapVisible
                                          ? const Color(0xFF006838)
                                          : const Color(0xFF3F4940),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Scrollable Content
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 100),
                children: [
                  // Interactive Map Section
                  if (_isMapVisible)
                    Container(
                      height: 280,
                      width: double.infinity,
                      color: const Color(0xFFE4F1E7),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFD0DDD4),
                                    Color(0xFFE4F1E7),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.map_outlined,
                                  size: 80,
                                  color: Color(0xFF6E7A6F),
                                ),
                              ),
                            ),
                          ),
                          // Radar Pulse Center
                          Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF006838)
                                        .withValues(alpha: 0.2),
                                  ),
                                ),
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF006838)
                                        .withValues(alpha: 0.4),
                                  ),
                                ),
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF006838),
                                  ),
                                  child: const Icon(
                                    Icons.directions_car,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Map Pin 1: Center Al-Khair
                          Positioned(
                            top: 30,
                            right: 40,
                            child: GestureDetector(
                              onTap: () =>
                                  _showToast('تم تحديد: مركز الخير للمستلزمات'),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.1,
                                          ),
                                          blurRadius: 4,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: const [
                                        Text(
                                          'مركز الخير',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF006838),
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Color(0xFFE8B84A),
                                        ),
                                        Text(
                                          '4.8',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Color(0xFF006838),
                                    child: Icon(
                                      Icons.store,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Map Pin 2: Al-Ghaith
                          Positioned(
                            bottom: 30,
                            right: 60,
                            child: GestureDetector(
                              onTap: () => _showToast('تم تحديد: مؤسسة الغيث'),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.1,
                                          ),
                                          blurRadius: 4,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: const [
                                        Text(
                                          'مؤسسة الغيث',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF006D3C),
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '1.2 كم',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF3F4940),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Color(0xFF006D3C),
                                    child: Icon(
                                      Icons.compost,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Map Pin 3: Al-Wifaq (New)
                          Positioned(
                            top: 40,
                            left: 40,
                            child: GestureDetector(
                              onTap: () =>
                                  _showToast('تم تحديد: معرض الوفاق (جديد)'),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFDF9F),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.1,
                                          ),
                                          blurRadius: 4,
                                        ),
                                      ],
                                    ),
                                    child: const Text(
                                      'جديد لم يُزر',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF261A00),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const CircleAvatar(
                                    radius: 14,
                                    backgroundColor: Color(0xFF735500),
                                    child: Icon(
                                      Icons.fiber_new,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Floating controls on map
                          Positioned(
                            left: 12,
                            top: 12,
                            child: Column(
                              children: [
                                FloatingActionButton.small(
                                  heroTag: 'layers',
                                  backgroundColor: Colors.white,
                                  onPressed: () => _showToast('طبقات الخريطة'),
                                  child: const Icon(
                                    Icons.layers,
                                    color: Color(0xFF131E18),
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                FloatingActionButton.small(
                                  heroTag: 'my_location',
                                  backgroundColor: Colors.white,
                                  onPressed: () =>
                                      _showToast('إعادة تركيز الموقع'),
                                  child: const Icon(
                                    Icons.my_location,
                                    color: Color(0xFF006838),
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  // Search and Dynamic Filter Chips
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'ابحث عن محل زراعي أو تاجر...',
                            hintStyle: const TextStyle(
                              color: Color(0xFF3F4940),
                              fontSize: 14,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color(0xFF3F4940),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color(0xFFD9E6DC),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color(0xFFD9E6DC),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color(0xFF006838),
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:
                                [
                                  'الكل (14)',
                                  'بذور ومبيدات',
                                  'أسمدة وري',
                                  'لم يُزر بعد',
                                ].map((filter) {
                                  final isSelected = _selectedFilter == filter;
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: ChoiceChip(
                                      label: Text(filter),
                                      selected: isSelected,
                                      selectedColor: const Color(0xFF006838),
                                      backgroundColor: const Color(0xFFEAF7ED),
                                      labelStyle: TextStyle(
                                        color: isSelected
                                            ? Colors.white
                                            : const Color(0xFF3F4940),
                                        fontWeight: isSelected
                                            ? FontWeight.bold
                                            : FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                      onSelected: (selected) {
                                        setState(() {
                                          _selectedFilter = filter;
                                        });
                                      },
                                    ),
                                  );
                                }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Store Count & Proximity Status Badge
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF006838),
                            ),
                            SizedBox(width: 6),
                            Text(
                              '14 محل زراعي نشط ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Color(0xFF131E18),
                              ),
                            ),
                            Text(
                              'في نطاق الخرج الحالي',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF3F4940),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'مرتب حسب الأقرب',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF006838),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Nearby Stores Cards List
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: _stores.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final store = _stores[index];
                      return Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFD9E6DC)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.02),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEAF7ED),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                    Icons.storefront,
                                    color: Color(0xFF006838),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        store['name'],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF131E18),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 14,
                                            color: Color(0xFFE8B84A),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${store['rating']}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Color(0xFF735500),
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          const Text(
                                            '•',
                                            style: TextStyle(
                                              color: Color(0xFF3F4940),
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          Text(
                                            store['category'],
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF3F4940),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF7FF7AA)
                                        .withValues(alpha: 0.3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    store['distance'],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF00723F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton.icon(
                                    onPressed: () => _showToast(
                                      'جاري الاتصال بـ ${store['name']} (${store['phone']})...',
                                    ),
                                    icon: const Icon(
                                      Icons.call,
                                      size: 16,
                                      color: Color(0xFF006838),
                                    ),
                                    label: const Text(
                                      'اتصال',
                                      style: TextStyle(
                                        color: Color(0xFF131E18),
                                        fontSize: 13,
                                      ),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color(0xFFEAF7ED),
                                      side: BorderSide.none,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: ElevatedButton.icon(
                                    onPressed: () =>
                                        _openReviewModal(store['name']),
                                    icon: const Icon(
                                      Icons.rate_review,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      'تسجيل زيارة وتقييم',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF006838),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),

        // Toast Message Banner
        if (_toastMessage != null)
          Positioned(
            top: 80,
            left: 24,
            right: 24,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF28332C),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Color(0xFF78DA99),
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        _toastMessage!,
                        style: const TextStyle(
                          color: Color(0xFFE7F4EA),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class ReviewModal extends StatefulWidget {
  final String storeName;
  final VoidCallback onSubmitted;

  const ReviewModal({
    super.key,
    required this.storeName,
    required this.onSubmitted,
  });

  @override
  State<ReviewModal> createState() => _ReviewModalState();
}

class _ReviewModalState extends State<ReviewModal> {
  int _rating = 5;
  final Map<String, bool> _checks = {
    'سداد مالي منضبط 💳': true,
    'مستودع تخزين مطابق 🌾': true,
    'إقبال مزارعين قوي 👨‍🌾': false,
    'طلب كميات إضافية 📈': false,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        16,
        16,
        16,
        MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFF006838).withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.verified,
                        color: Color(0xFF006838),
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'تقييم المندوب الميداني المعتمد',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF3F4940),
                          ),
                        ),
                        Text(
                          widget.storeName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF131E18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, color: Color(0xFF3F4940)),
                ),
              ],
            ),
            const Divider(height: 24),
            const Center(
              child: Text(
                'تقييمك الإجمالي للتعامل التجاري',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF131E18),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () => setState(() => _rating = index + 1),
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: const Color(0xFF735500),
                    size: 32,
                  ),
                );
              }),
            ),
            const SizedBox(height: 12),
            const Text(
              'مؤشرات الجودة والالتزام الميداني:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Color(0xFF131E18),
              ),
            ),
            const SizedBox(height: 8),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 3.2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: _checks.keys.map((key) {
                return InkWell(
                  onTap: () => setState(() => _checks[key] = !_checks[key]!),
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAF7ED),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: _checks[key],
                          activeColor: const Color(0xFF006838),
                          onChanged: (val) =>
                              setState(() => _checks[key] = val!),
                        ),
                        Expanded(
                          child: Text(
                            key,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF131E18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 12),
            const Text(
              'ملاحظات سرية لمناديب الشركة:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Color(0xFF131E18),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'اكتب ملاحظاتك حول التاجر، شروط الدفع، أو الأصناف الأكثر طلباً...',
                hintStyle: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF3F4940),
                ),
                filled: true,
                fillColor: const Color(0xFFEAF7ED),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                  widget.onSubmitted();
                },
                icon: const Icon(Icons.check_circle, color: Colors.white),
                label: const Text(
                  'اعتماد التقييم الميداني وإرساله',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF006838),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
