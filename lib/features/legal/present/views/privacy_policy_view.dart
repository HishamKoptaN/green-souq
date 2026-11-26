import 'package:flutter/material.dart';

import 'widgets/legal_text.dart';

class PrivacyPolicyView extends StatelessWidget {
  static const String routeName = 'privacy';

  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('سياسة الخصوصية'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          LegalHeader('سياسة الخصوصية'),
          SizedBox(height: 12),
          LegalLead(
            'مرحباً بكم في سياسة الخصوصية الخاصة بمنصة السوق الأخضر (Green Souq). نحن نعتبر خصوصية زوارنا ومستخدمينا أمراً في غاية الأهمية ونلتزم بحمايتها بكل الطرق المتاحة.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('1. جمع المعلومات واستخدامها'),
          SizedBox(height: 8),
          LegalParagraph(
            'عند استخدامك لتطبيق السوق الأخضر، قد نقوم بجمع بعض المعلومات التقنية الأساسية مثل عنوان بروتوكول الإنترنت (IP)، نوع المتصفح، نظام التشغيل، ووقت الزيارة لتحسين تجربة المستخدم وتحليل أداء المنصة.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('2. ملفات تعريف الارتباط وإعلانات Google'),
          SizedBox(height: 8),
          LegalParagraph(
            'نحن نستعين بشركات إعلانات طرف ثالث (مثل Google) لعرض الإعلانات. قد تستخدم هذه الشركات معلومات حول زياراتك لتوفير إعلانات مخصصة حول السلع والخدمات التي تهمك عبر ملفات تعريف الارتباط (Cookies).',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('3. حماية بيانات المستخدمين'),
          SizedBox(height: 8),
          LegalParagraph(
            'نتخذ تدابير أمنية تقنية وتنظيمية مناسبة لحماية المعلومات ضد الوصول غير المصرح به أو التغيير أو الإفصاح.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('4. التعديلات على سياسة الخصوصية'),
          SizedBox(height: 8),
          LegalParagraph(
            'نحتفظ بالحق في تحديث أو تعديل سياسة الخصوصية في أي وقت، وسيتم نشر أي تعديلات على هذه الصفحة.',
          ),
        ],
      ),
    );
  }
}
