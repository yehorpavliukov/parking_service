import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_kit/ui_kit.dart'; 

void main() {
  testWidgets('SlotTypeContainer displays correct information', (WidgetTester tester) async {
    const slotType = 'small';
    const freeSlotsCount = 2;
    const totalSlotCount = 5;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SlotTypeContainer(
            slotType: slotType,
            freeSlotsCount: freeSlotsCount,
            totalSlotCount: totalSlotCount,
          ),
        ),
      ),
    );

    expect(find.text(slotType), findsOneWidget);
    expect(find.text('Total: $totalSlotCount'), findsOneWidget);
    expect(find.text('Free: $freeSlotsCount'), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
  });

  testWidgets('SlotTypeContainer handles negative counts correctly', (WidgetTester tester) async {
    const slotType = 'medium';
    const freeSlotsCount = -1;
    const totalSlotCount = -3;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SlotTypeContainer(
            slotType: slotType,
            freeSlotsCount: freeSlotsCount,
            totalSlotCount: totalSlotCount,
          ),
        ),
      ),
    );

    expect(find.text(slotType), findsOneWidget);
    expect(find.text('Total: $totalSlotCount'), findsOneWidget);
    expect(find.text('Free: $freeSlotsCount'), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
  });
}
