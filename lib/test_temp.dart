import 'package:flutter/material.dart';

// --- Design System Tokens ---
class AppColors {
  static const Color primary = Color(0xFF006838);
  static const Color primaryContainer = Color(0xFF16834B);
  static const Color surface = Color(0xFFF0FDF2);
  static const Color surfaceContainer = Color(0xFFE4F1E7);
  static const Color surfaceContainerLow = Color(0xFFEAF7ED);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFF131E18);
  static const Color onSurfaceVariant = Color(0xFF3F4940);
  static const Color outline = Color(0xFF6E7A6F);
  static const Color outlineVariant = Color(0xFFBECABD);
  static const Color tertiary = Color(0xFF735500);
  static const Color secondary = Color(0xFF006D3C);
}

class AppTypography {
  static const TextStyle headlineLg = TextStyle(
    fontFamily: 'IBM Plex Sans',
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle headlineMd = TextStyle(
    fontFamily: 'IBM Plex Sans',
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle bodySm = TextStyle(
    fontFamily: 'IBM Plex Sans',
    fontSize: 12,
    color: AppColors.onSurfaceVariant,
  );
  static const TextStyle labelMd = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}

// --- Screen Widget ---
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isPhoneMethod = true;
  bool isPasswordVisible = false;
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.surface,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 24),
                _buildWelcomeCard(),
                const SizedBox(height: 24),
                _buildTrustRow(),
                const SizedBox(height: 24),
                _buildSignUpFooter(),
                const SizedBox(height: 24),
                _buildSlogan(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.primaryContainer.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.eco, size: 40, color: AppColors.primary),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GreenSouq", style: AppTypography.headlineLg.copyWith(color: AppColors.primary)),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: Text("|", style: TextStyle(color: AppColors.outlineVariant))),
            Text("السوق الاخضر", style: AppTypography.headlineLg.copyWith(color: AppColors.onSurface)),
          ],
        ),
        const SizedBox(height: 4),
        Text("الشبكة الزراعية المتكاملة للتجارة والأعمال", style: AppTypography.bodySm.copyWith(color: AppColors.onSurfaceVariant)),
      ],
    );
  }

  Widget _buildWelcomeCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(width: 6, height: 20, color: AppColors.primaryContainer),
              const SizedBox(width: 8),
              Text("تسجيل الدخول", style: AppTypography.headlineMd),
            ],
          ),
          const SizedBox(height: 8),
          Text("أهلاً بك مجدداً! سجّل دخولك للوصول إلى صفقاتك ومحاصيلك", style: AppTypography.bodySm),
          const SizedBox(height: 16),
          _buildMethodSwitcher(),
          const SizedBox(height: 16),
          _buildForm(),
        ],
      ),
    );
  }

  Widget _buildMethodSwitcher() {
    return Container(
      decoration: BoxDecoration(color: AppColors.surfaceContainerLow, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Expanded(child: _buildTab("رقم الجوال", isPhoneMethod, () => setState(() => isPhoneMethod = true))),
          Expanded(child: _buildTab("البريد الإلكتروني", !isPhoneMethod, () => setState(() => isPhoneMethod = false))),
        ],
      ),
    );
  }

  Widget _buildTab(String text, bool selected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selected ? AppColors.surfaceContainerLowest : null,
          borderRadius: BorderRadius.circular(6),
        ),
        alignment: Alignment.center,
        child: Text(text, style: AppTypography.labelMd.copyWith(color: selected ? AppColors.primary : AppColors.onSurfaceVariant)),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        if (isPhoneMethod) _buildPhoneInput() else _buildEmailInput(),
        const SizedBox(height: 16),
        _buildPasswordInput(),
        const SizedBox(height: 16),
        _buildRememberAndEncryption(),
        const SizedBox(height: 16),
        ElevatedButton(
          key: const Key('login_button'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 48),
            backgroundColor: AppColors.primaryContainer,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Text("تسجيل الدخول"),
        ),
        const SizedBox(height: 16),
        _buildSeparator(),
        const SizedBox(height: 16),
        _buildSecondaryButton(Icons.pin, "الدخول السريع عبر رمز التحقق (OTP)", AppColors.surfaceContainerLow),
        const SizedBox(height: 16),
        _buildSecondaryButton(Icons.g_mobiledata, "تسجيل الدخول بواسطة Google", AppColors.surfaceContainerLowest, borderColor: AppColors.outlineVariant),
      ],
    );
  }

  Widget _buildPhoneInput() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(color: AppColors.surfaceContainerLow, borderRadius: BorderRadius.circular(8)),
          child: const Row(children: [Text("🇸🇦"), SizedBox(width: 4), Text("+966")]),
        ),
        const SizedBox(width: 8),
        Expanded(child: TextField(decoration: InputDecoration(hintText: "5X XXX XXXX", border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))))),
      ],
    );
  }

  Widget _buildEmailInput() {
    return TextField(decoration: InputDecoration(hintText: "farmer@example.com", border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))));
  }

  Widget _buildPasswordInput() {
    return TextField(
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        hintText: "••••••••",
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(isPasswordVisible ? Icons.visibility_off : Icons.visibility),
          onPressed: () => setState(() => isPasswordVisible = !isPasswordVisible),
        ),
      ),
    );
  }

  Widget _buildRememberAndEncryption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: rememberMe, onChanged: (val) => setState(() => rememberMe = val!)),
            const Text("تذكرني على هذا الجهاز", style: AppTypography.bodySm),
          ],
        ),
        const Row(children: [Icon(Icons.verified_user, size: 14, color: AppColors.secondary), SizedBox(width: 4), Text("اتصال مشفر", style: AppTypography.bodySm)]),
      ],
    );
  }

  Widget _buildSeparator() {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: Text("أو", style: AppTypography.bodySm.copyWith(color: AppColors.outline))),
        const Expanded(child: Divider()),
      ],
    );
  }

  Widget _buildSecondaryButton(IconData icon, String text, Color color, {Color? borderColor}) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 48),
        backgroundColor: color,
        side: borderColor != null ? BorderSide(color: borderColor) : BorderSide.none,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, color: AppColors.primary), const SizedBox(width: 8), Text(text, style: AppTypography.labelMd.copyWith(color: AppColors.onSurface))],
      ),
    );
  }

  Widget _buildTrustRow() {
    return Row(
      children: [
        _buildTrustItem(Icons.agriculture, "سوق محاصيل فوري"),
        _buildTrustItem(Icons.shield, "ضمان الدفع"),
        _buildTrustItem(Icons.local_shipping, "ربط لوجستي"),
      ],
    );
  }

  Widget _buildTrustItem(IconData icon, String text) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(color: AppColors.surfaceContainerLow.withOpacity(0.7), borderRadius: BorderRadius.circular(8)),
        child: Row(children: [Icon(icon, size: 16, color: AppColors.primary), const SizedBox(width: 4), Expanded(child: Text(text, style: AppTypography.bodySm, overflow: TextOverflow.ellipsis))]),
      ),
    );
  }

  Widget _buildSignUpFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColors.surfaceContainerLow, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: Text("جديد في شبكة GreenLink؟", style: AppTypography.headlineMd)),
          TextButton(onPressed: () {}, child: const Text("إنشاء حساب")),
        ],
      ),
    );
  }

  Widget _buildSlogan() {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.eco, size: 16, color: AppColors.primary), SizedBox(width: 4), Text("نُمكّن سلاسل الإمداد الزراعية في المملكة والعالم العربي", style: AppTypography.bodySm)]);
  }
}
