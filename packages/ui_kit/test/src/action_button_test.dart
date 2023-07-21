import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  testWidgets('ActionButton displays correct title', (WidgetTester tester) async {
    const title = 'Test Button';
    await tester.pumpWidget(
      MaterialApp(
        home: ActionButton(title: title, onTap: () {}),
      ),
    );

    final buttonFinder = find.byType(ElevatedButton);
    expect(buttonFinder, findsOneWidget);

    final buttonTextFinder = find.text(title);
    expect(buttonTextFinder, findsOneWidget);
  });

  testWidgets('ActionButton calls onTap when tapped', (WidgetTester tester) async {
    var onTapCalled = false;
    void handleTap() {
      onTapCalled = true;
    }

    const title = 'Test Button';
    await tester.pumpWidget(
      MaterialApp(
        home: ActionButton(title: title, onTap: handleTap),
      ),
    );

    final buttonFinder = find.byType(ElevatedButton);
    expect(buttonFinder, findsOneWidget);

    expect(onTapCalled, isFalse);
    await tester.tap(buttonFinder);
    expect(onTapCalled, isTrue);
  });
}
