import 'package:flutter/material.dart';

class PrivacyPolicyView extends StatelessWidget {
  static const String routeName = 'privacy';

  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سياسة الخصوصية'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'سياسة الخصوصية',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'مرحباً بكم في سياسة الخصوصية الخاصة بمنصة السوق الأخضر (Green Souq). نحن نعتبر خصوصية زوارنا ومستخدمينا أمراً في غاية الأهمية ونلتزم بحمايتها بكل الطرق المتاحة.',
            style: TextStyle(fontSize: 16, height: 1.6),
          ),
          SizedBox(height: 20),
          Text(
            '1. جمع المعلومات واستخدامها',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'عند استخدامك لتطبيق السوق الأخضر، قد نقوم بجمع بعض المعلومات التقنية الأساسية مثل عنوان بروتوكول الإنترنت (IP)، نوع المتصفح، نظام التشغيل، ووقت الزيارة لتحسين تجربة المستخدم وتحليل أداء المنصة.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Text(
            '2. ملفات تعريف الارتباط وإعلانات Google',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'نحن نستعين بشركات إعلانات طرف ثالث (مثل Google) لعرض الإعلانات. قد تستخدم هذه الشركات معلومات حول زياراتك لتوفير إعلانات مخصصة حول السلع والخدمات التي تهمك عبر ملفات تعريف الارتباط (Cookies).',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Text(
            '3. حماية بيانات المستخدمين',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'نتخذ تدابير أمنية تقنية وتنظيمية مناسبة لحماية المعلومات ضد الوصول غير المصرح به أو التغيير أو الإفصاح.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Text(
            '4. التعديلات على سياسة الخصوصية',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'نحتفظ بالحق في تحديث أو تعديل سياسة الخصوصية في أي وقت، وسيتم نشر أي تعديلات على هذه الصفحة.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
