import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';

import '../entities/role_intro_benefit.dart';
import '../entities/role_intro_slide.dart';

/// محتوى الشاشات التعريفية مأخوذ من تصاميم Stitch المعتمدة.
abstract interface class GetRoleIntroUseCaseContract {
  RoleIntroSlide call(UserType type);
}

class GetRoleIntroUseCase implements GetRoleIntroUseCaseContract {
  const GetRoleIntroUseCase();

  static const Map<UserType, RoleIntroSlide> catalog = {
    UserType.shop: RoleIntroSlide(
      badge: 'السوق الأخضر • محل أدوية زراعية',
      title: 'وسّع مبيعات محلك الزراعي',
      description: 'منصتك المتكاملة لربط محلك بالمزارعين والموردين، وإدارة مبيعات الأدوية والأسمدة الزراعية بكل سهولة.',
      benefits: [
        RoleIntroBenefit(icon: .store, title: 'بيع المنتجات للمزارعين', body: 'اعرض الأدوية الزراعية والمبيدات والأسمدة مباشرة للمزارعين في منطقتك.'),
        RoleIntroBenefit(icon: .inventory, title: 'استقبال طلبات الجملة', body: 'استلم طلبات الشراء الكبيرة من المزارع والمشاريع الزراعية وأدرها بمرونة.'),
        RoleIntroBenefit(icon: .radar, title: 'رادار الموردين القريبين', body: 'اكتشف أقرب الموردين والمستودعات المعتمدة لتأمين مخزونك بأفضل الأسعار.'),
      ],
    ),
    UserType.agriculturalToolsMerchant: RoleIntroSlide(
      badge: 'السوق الأخضر • أدوات زراعية',
      title: 'وسّع مبيعات أدواتك الزراعية',
      description: 'منصتك المتكاملة لربط متجرك بالمزارعين والمشاريع الزراعية، وتسهيل بيع المعدات والمستلزمات بكل احترافية.',
      benefits: [
        RoleIntroBenefit(icon: .inventory, title: 'عرض الأدوات والمستلزمات', body: 'اعرض كتالوج المعدات، أنظمة الري، والأدوات الزراعية بتفاصيلها وأسعارها.'),
        RoleIntroBenefit(icon: .receipt, title: 'استقبال طلبات عروض الأسعار', body: 'تلقَّ طلبات التسعير الفورية من المزارع والمشاريع الكبرى وقدّم عروضك بمرونة.'),
        RoleIntroBenefit(icon: .delivery, title: 'إدارة التوصيل', body: 'تابع شحناتك وجدول عمليات التوصيل للمزارع حتى باب المزرعة بكل سهولة.'),
      ],
    ),
    UserType.salesEngineer: RoleIntroSlide(
      badge: 'السوق الأخضر • مهندس مبيعات',
      title: 'بوابة الكوادر المتخصصة والميدانية',
      description: 'منصتك الميدانية الذكية لربط المحلات الزراعية بالمزارع الكبرى، وإدارة التوريد المباشر ومتابعة العمليات بدقة احترافية.',
      benefits: [
        RoleIntroBenefit(icon: .briefcase, title: 'إدارة المحلات والمزارع', body: 'اربط شبكة الموردين ومحلات المستلزمات بالمشاريع الزراعية، وجدول التوريد.'),
        RoleIntroBenefit(icon: .map, title: 'الزيارات الميدانية الذكية', body: 'خطط مسارات الجولات، وسجّل تقارير المعاينة الفنية واحتياجات المزارعين.'),
        RoleIntroBenefit(icon: .chart, title: 'متابعة الطلبات والتقارير', body: 'لوحة تحكم حية لعروض الأسعار وعقود التوريد ومؤشرات الأداء البيعي.'),
      ],
      loginHint: 'لديك حساب بالفعل؟ تسجيل الدخول',
    ),
    UserType.farmer: RoleIntroSlide(
      badge: 'السوق الأخضر • بوابة المزارعين',
      title: 'مرحباً بك في السوق الأخضر',
      description: 'منصتك الرقمية المباشرة لإدارة مبيعات محاصيلك، المشاركة بالمزادات الحية، وتأمين مستلزمات مزرعتك بأفضل عائد.',
      benefits: [
        RoleIntroBenefit(icon: .cart, title: 'عرض المحاصيل للبيع المباشر', body: 'سوّق إنتاج حقلك لتجار الجملة والمستهلكين مباشرة دون وسطاء.'),
        RoleIntroBenefit(icon: .auction, title: 'مزادات المحاصيل التنافسية', body: 'افتح مزاداً فورياً لمحصولك وتنافس للحصول على أعلى سعر توريد.'),
        RoleIntroBenefit(icon: .nature, title: 'طلب المستلزمات بأفضل الأسعار', body: 'قارن أسعار البذور والأسمدة والمعدات واشترِ من مورّدين معتمدين.'),
      ],
      loginHint: 'لديك حساب مزارع بالفعل؟ تسجيل الدخول',
    ),
    UserType.jobSeeker: RoleIntroSlide(
      badge: 'السوق الأخضر • وظائف زراعية',
      title: 'ابدأ مسارك المهني الزراعي',
      description: 'منصتك الرقمية المباشرة للربط بين الكفاءات الزراعية والفنيين والعمال، وبين كبرى المزارع والمشاريع المعتمدة بعقود موثوقة.',
      benefits: [
        RoleIntroBenefit(icon: .search, title: 'استكشاف الوظائف المتخصصة', body: 'تصفّح الشواغر الموثقة لمشرفي الحصاد ومهندسي الوقاية وفنيي الري.'),
        RoleIntroBenefit(icon: .send, title: 'تقديم فوري دون وسطاء', body: 'تواصل بنقرة واحدة مع مديري المشاريع والمزارع وتابع حالة طلبك.'),
        RoleIntroBenefit(icon: .profile, title: 'ملف مهني وتنبيهات منطقتك', body: 'أنشئ سيرتك الزراعية وتلقَّ إشعارات فور طرح شواغر قريبة منك.'),
      ],
      footerNote: 'عقود موثقة نظامياً • استجابة سريعة للطلبات',
      loginHint: 'لديك حساب بالفعل؟ تسجيل الدخول',
    ),
  };

  @override
  RoleIntroSlide call(UserType type) {
    return catalog[type] ?? catalog[UserType.farmer]!;
  }
}
