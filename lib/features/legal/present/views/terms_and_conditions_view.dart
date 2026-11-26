import 'package:flutter/material.dart';

import 'widgets/legal_text.dart';

class TermsAndConditionsView extends StatelessWidget {
  static const String routeName = 'terms';

  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الأحكام والشروط'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          LegalHeader('شروط الاستخدام'),
          SizedBox(height: 12),
          LegalLead(
            'مرحباً بكم في منصة "السوق الأخضر" (Green Souq). باستخدامك لهذا الموقع أو التطبيق، فإنك توافق التزاماً تاماً بالالتزام بالشروط والأحكام التالية. يرجى قراءة هذه الشروط بعناية قبل استخدام خدماتنا.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('1. قبول الشروط والأحكام'),
          SizedBox(height: 8),
          LegalParagraph(
            'من خلال الوصول إلى منصة السوق الأخضر أو تصفحها أو استخدامها بأي شكل من الأشكال، فإنك تقر بأنك قرأت وفهمت وتوافق على الالتزام بهذه الشروط والأحكام وسياسة الخصوصية الخاصة بنا. إذا كنت لا توافق على أي جزء من هذه الشروط، فيرجى التوقف عن استخدام المنصة فوراً.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('2. طبيعة الخدمات'),
          SizedBox(height: 8),
          LegalParagraph(
            'السوق الأخضر هي منصة رقمية تهدف إلى ربط المستهلكين بالمتاجر الصديقة للبيئة والمنتجات المستدامة والعضوية. نحن نعمل كوسيط عرض ومعلومات، ونسعى لتقديم محتوى دقيق ومفيد حول المنتجات الخضراء.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('3. حساب المستخدم'),
          SizedBox(height: 8),
          LegalParagraph(
            'يجب أن تكون الحسابات المسجلة دقيقة ومحدثة، وتحمل المسؤولية الكاملة عن أي نشاط يتم عبر حسابك. يوافق المستخدم على عدم استخدام المنصة لأي غرض غير قانوني أو محظور.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('4. الإعلانات والمحتوى التسويقي'),
          SizedBox(height: 8),
          LegalParagraph(
            'قد تتضمن المنصة إعلانات عبر شبكات طرف ثالث (مثل Google AdSense). نحن غير مسؤولين عن محتوى الإعلانات الخارجية أو ممارسات المواقع المعلنة.',
          ),
          SizedBox(height: 20),
          LegalSectionTitle('5. إخلاء المسؤولية وحقوق الملكية'),
          SizedBox(height: 8),
          LegalParagraph(
            'جميع محتويات منصة السوق الأخضر من نصوص وعلامات تجارية وتصميمات هي ملك للمنصة ومحمية بموجب حقوق الملكية الفكرية. تُقدم الخدمات على أساس "كما هي" دون أي ضمانات صريحة أو ضمنية.',
          ),
        ],
      ),
    );
  }
}
