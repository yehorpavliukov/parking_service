import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  testWidgets('Floor displays correct information', (WidgetTester tester) async {
    const name = 'Floor 1';
    const totalSlots = 20;
    const totalFreeSlots = 10;
    const smallSlotsNumber = 5;
    const freeSmallSlotsNumber = 2;
    const mediumSlotsNumber = 7;
    const freeMediumSlotsNumber = 3;
    const largeSlotsNumber = 8;
    const freeLargeSlotsNumber = 1;
    const xLargeSlotsNumber = 6;
    const freeXLargeSlotsNumber = 4;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Floor(
            name: name,
            totalSlots: totalSlots,
            totalFreeSlots: totalFreeSlots,
            smallSlotsNumber: smallSlotsNumber,
            freeSmallSlotsNumber: freeSmallSlotsNumber,
            mediumSlotsNumber: mediumSlotsNumber,
            freeMediumSlotsNumber: freeMediumSlotsNumber,
            largeSlotsNumber: largeSlotsNumber,
            freeLargeSlotsNumber: freeLargeSlotsNumber,
            xLargeSlotsNumber: xLargeSlotsNumber,
            freeXLargeSlotsNumber: freeXLargeSlotsNumber,
          ),
        ),
      ),
    );

    expect(find.text(name), findsOneWidget);
    expect(find.text('Total: $totalSlots'), findsOneWidget);
    expect(find.text('Free: $totalFreeSlots'), findsOneWidget);
    expect(find.text('Total: $smallSlotsNumber'), findsOneWidget);
    expect(find.text('Free: $freeSmallSlotsNumber'), findsOneWidget);
    expect(find.text('Total: $mediumSlotsNumber'), findsOneWidget);
    expect(find.text('Free: $freeMediumSlotsNumber'), findsOneWidget);
    expect(find.text('Total: $largeSlotsNumber'), findsOneWidget);
    expect(find.text('Free: $freeLargeSlotsNumber'), findsOneWidget);
    expect(find.text('Total: $xLargeSlotsNumber'), findsOneWidget);
    expect(find.text('Free: $freeXLargeSlotsNumber'), findsOneWidget);

    expect(find.byType(SlotTypeContainer), findsNWidgets(4));
  });
}
