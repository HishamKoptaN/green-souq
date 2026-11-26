import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/core/widgets/forms/auth_text_form_field.dart';
import 'package:green/core/widgets/forms/custom_phone_form_field.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';
import 'package:green/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() {
    app.main();
  });

  testWidgets('shop merchant form enables submit after complete details', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const SignUpView(userType: UserType.agriculturalToolsMerchant),
    );
    await tester.pumpAndSettle();

    final fields = find.byType(CustomAuthTextFormField);
    expect(fields, findsNWidgets(6));

    await _enter(tester, fields.at(0), 'الواحة الخضراء');
    await _enter(tester, fields.at(1), '12345');
    await _enter(tester, fields.at(2), 'أدوات ومستلزمات زراعية');

    final phoneField = find.descendant(
      of: find.byType(CustomPhoneFormField),
      matching: find.byType(TextFormField),
    );
    await tester.enterText(phoneField, '501234567');
    await tester.pumpAndSettle();

    await _enter(tester, fields.at(3), 'merchant@example.com');
    await _enter(tester, fields.at(4), '123456');
    await _enter(tester, fields.at(5), '123456');

    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();

    final submit = find.byType(FilledButton);
    await tester.ensureVisible(submit);
    await tester.pumpAndSettle();

    final button = submit.evaluate().single.widget as FilledButton;
    expect(button.onPressed, isNotNull);
  });
}

Future<void> _enter(WidgetTester tester, Finder field, String text) async {
  await tester.ensureVisible(field);
  await tester.enterText(field, text);
  FocusManager.instance.primaryFocus?.unfocus();
  await tester.pumpAndSettle();
}
