import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green/features/posts/posts/present/view/widgets/post/expandable_text.dart';

void main() {
  testWidgets('renders short text without truncation', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Center(
          child: SizedBox(
            width: 300,
            child: ExpandableText(text: 'نص قصير للعرض'),
          ),
        ),
      ),
    );
    await tester.pump();

    expect(find.text('نص قصير للعرض'), findsOneWidget);
  });
}
