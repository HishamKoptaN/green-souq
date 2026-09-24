import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/auth/sign_up/domain/entities/sign_up_req_entity.dart';
import 'package:green/features/auth/sign_up/present/views/sign_up_view.dart';
import 'package:green/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    app.main();
  });
  testRep();
}

void testRep() {
  testWidgets('Representative sign-up flow automation', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(SignUpView(userType: UserType.company));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextFormField).at(0), 'company');
    await unFocusAndWait(tester);

    await tester.enterText(find.byType(TextFormField).at(1), '1120332361');
    await unFocusAndWait(tester);

    await tester.enterText(find.byType(TextFormField).at(2), 'test@gmail.com');
    await unFocusAndWait(tester);

    await tester.enterText(find.byType(TextFormField).at(3), 'password');
    await unFocusAndWait(tester);

    await tester.enterText(find.byType(TextFormField).at(4), 'password');
    await unFocusAndWait(tester);

    final submitButton = find.byType(FilledButton);
    await tester.ensureVisible(submitButton);
    await tester.tap(submitButton);

    await tester.pumpAndSettle();

    await tester.pump(Duration(minutes: 10));
  });
}

Future<void> unFocusAndWait(WidgetTester tester) async {
  FocusManager.instance.primaryFocus?.unfocus();
  await tester.pumpAndSettle();
  await tester.pump(const Duration(seconds: 1));
}
