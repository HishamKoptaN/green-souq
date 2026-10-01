// تُستخدم CustomScrollView 
//عندما تحتاج لدمج أنماط وأشكال مختلفة من التمرير في شاشة واحدة بسلاسة وبأداء عالٍ. العناصر التي توضع داخل 
//CustomScrollView يُطلق عليها Slivers (وهي أجزاء قابلة للتمرير داخل الشاشة).

// إليك حصرٌ شامل لأهم وأبرز أنواع الواجهات والـ Slivers التي يمكنك استخدامها داخل CustomScrollView:

// 1. شريط العنوان التفاعلي (AppBars)
// SliverAppBar: شريط علوي اختياري أو ثابت، يتقلص أو يختفي عند التمرير لأعلى ويظهر عند التمرير لأسفل 
//(pinned, floating, snap).

// SliverAppBar.large / SliverAppBar.medium: لتطبيق نمط Material 3 القياسي بالعناوين الكبيرة التي تتقلص تدريجياً.

// 2. القوائم والشبكات (Lists & Grids)
// SliverList: لعرض قائمة رأسيّة متتالية من العناصر.

// SliverList.separated: 
//لعرض قائمة مع فاصل (Separator) بين العناصر (مثل ListView.separated).

// SliverGrid: لعرض شبكة من العناصر (مثل GridView). وتأتي مع خيارات تحديد الأعمدة مثل 
//SliverGridDelegateWithFixedCrossAxisCount أو SliverGridDelegateWithMaxCrossAxisExtent.

// 3. عناصر العرض والتحكم في الأبعاد (Layout & Containment)
// SliverToBoxAdapter: الـ Sliver الأكثر استخداماً؛ يتيح لك لف أي Widget عادية 
//(مثل Container, Card, Column, CarouselSlider) واستخدامها داخل CustomScrollView.

// SliverPadding: لإضافة مسافات حاشية (Padding) حول أي Sliver آخر دون كسر التمرير.

// SliverConstrainedBox: لتحديد حد أدنى أو أقصى لأبعاد Sliver معين داخل التمرير.

// 4. الهياكل التفاعلية والصفحات المتداخلة (Advanced & Interactive Layouts)
// SliverPersistentHeader: لإنشاء رؤوس أقسام تعليق أو تثبت في أعلى الشاشة أثناء التمرير 
//(Sticky Headers)؛ مثل عناوين التبويبات أو الفئات.

// SliverFillRemaining: لجعل ودجت معينة تأخذ كل المساحة المتبقية من الشاشة (مفيدة جداً للشاشات الفارغة 
//Empty States، حالات الخطأ، أو زر الإرسال السفلي).

// SliverFillViewport: لجعل كل عنصر في القائمة يأخذ ارتفاع الشاشة كاملاً (مثل تجربة مشاهدة الفيديو المترابطة أو
// القصص Story Views).

// 5. حركات وتأثيرات التمرير (Animations & Visual Effects)
// SliverAnimatedList / SliverAnimatedGrid: لإضافة عناصر جديدة أو حذف عناصر مع أنيميشن سلس عند التمرير.

// SliverOpacity: للتحكم في شفافية Sliver بأكمله بشكل محسّن للأداء.
