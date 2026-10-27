import 'package:flutter/material.dart';

class TermsAndConditionsView extends StatelessWidget {
  static const String routeName = 'terms';

  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الأحكام والشروط'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'شروط الاستخدام',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'مرحباً بكم في منصة "السوق الأخضر" (Green Souq). باستخدامك لهذا الموقع أو التطبيق، فإنك توافق التزاماً تاماً بالالتزام بالشروط والأحكام التالية. يرجى قراءة هذه الشروط بعناية قبل استخدام خدماتنا.',
            style: TextStyle(fontSize: 16, height: 1.6),
          ),
          SizedBox(height: 20),
          Text(
            '1. قبول الشروط والأحكام',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'من خلال الوصول إلى منصة السوق الأخضر أو تصفحها أو استخدامها بأي شكل من الأشكال، فإنك تقر بأنك قرأت وفهمت وتوافق على الالتزام بهذه الشروط والأحكام وسياسة الخصوصية الخاصة بنا. إذا كنت لا توافق على أي جزء من هذه الشروط، فيرجى التوقف عن استخدام المنصة فوراً.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Text(
            '2. طبيعة الخدمات',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'السوق الأخضر هي منصة رقمية تهدف إلى ربط المستهلكين بالمتاجر الصديقة للبيئة والمنتجات المستدامة والعضوية. نحن نعمل كوسيط عرض ومعلومات، ونسعى لتقديم محتوى دقيق ومفيد حول المنتجات الخضراء.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Text(
            '3. حساب المستخدم',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'يجب أن تكون الحسابات المسجلة دقيقة ومحدثة، وتحمل المسؤولية الكاملة عن أي نشاط يتم عبر حسابك. يوافق المستخدم على عدم استخدام المنصة لأي غرض غير قانوني أو محظور.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Text(
            '4. الإعلانات والمحتوى التسويقي',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'قد تتضمن المنصة إعلانات عبر شبكات طرف ثالث (مثل Google AdSense). نحن غير مسؤولين عن محتوى الإعلانات الخارجية أو ممارسات المواقع المعلنة.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Text(
            '5. إخلاء المسؤولية وحقوق الملكية',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'جميع محتويات منصة السوق الأخضر من نصوص وعلامات تجارية وتصميمات هي ملك للمنصة ومحمية بموجب حقوق الملكية الفكرية. تُقدم الخدمات على أساس "كما هي" دون أي ضمانات صريحة أو ضمنية.',
            style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
