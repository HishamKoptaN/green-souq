import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/core/utils/make_phone_call.dart';
import 'package:green/features/sales_engineers/domain/entities/sales_engineer_entity.dart';

class EngineerActions extends StatelessWidget {
  const EngineerActions({super.key, required this.salesEngineer});

  final SalesEngineerEntity salesEngineer;

  @override
  Widget build(BuildContext context) {
    {
      return Row(
        spacing: 8.w,
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: salesEngineer.phone.isNotEmpty
                  ? () async {
                      try {
                        await makePhoneCall(salesEngineer.phone);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('جاري الاتصال...')),
                          );
                        }
                      } catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('تعذر إجراء المكالمة')),
                          );
                        }
                      }
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                foregroundColor: context.colorScheme.onPrimary,
                padding: .symmetric(vertical: 10.h, horizontal: 12.w),
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(12.r),
                ),
                elevation: 0,
              ),
              icon: Icon(Icons.phone, size: 16.r),
              label: Text(
                'اتصال فوري',
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colorScheme.onPrimary,
                  fontWeight: .bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton.icon(
              onPressed: salesEngineer.phone.isNotEmpty
                  ? () async {
                      try {
                        await openWhatsApp(salesEngineer.phone);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('فتح واتساب...')),
                          );
                        }
                      } catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('تعذر فتح واتساب')),
                          );
                        }
                      }
                    }
                  : null,
              style: OutlinedButton.styleFrom(
                backgroundColor: context.colorScheme.primaryContainer.withValues(
                  alpha: 0.1,
                ),
                foregroundColor: context.colorScheme.primary,
                side: BorderSide(
                  color: context.colorScheme.primary.withValues(alpha: 0.3),
                ),
                padding: .symmetric(vertical: 10.h, horizontal: 12.w),
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(12.r),
                ),
              ),
              icon: FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 16.r,
                color: context.colorScheme.primary,
              ),
              label: Text(
                'محادثة واتساب',
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colorScheme.primary,
                  fontWeight: .bold,
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
